.class public abstract Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;
.super Lteam/opay/core/base/BaseFragmentV2;
.source "BaseTopUpPaymentFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment$Companion;,
        Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VB::",
        "Lxyf;",
        ">",
        "Lteam/opay/core/base/BaseFragmentV2<",
        "TVB;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008&\u0018\u0000 g*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0003:\u0001hB)\u0012 \u0010\u0008\u001a\u001c\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00028\u00000\u0004\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\rJ\u000f\u0010\u0010\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\rJ\u000f\u0010\u0011\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\rJ\u000f\u0010\u0012\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\rJ\u000f\u0010\u0013\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\rJ\u0019\u0010\u0015\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u001f\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ!\u0010#\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u001f2\u0008\u0010\"\u001a\u0004\u0018\u00010!H\u0016\u00a2\u0006\u0004\u0008#\u0010$J)\u0010*\u001a\u00020\u000b2\u0006\u0010&\u001a\u00020%2\u0006\u0010\'\u001a\u00020%2\u0008\u0010)\u001a\u0004\u0018\u00010(H\u0016\u00a2\u0006\u0004\u0008*\u0010+J\u000f\u0010,\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008,\u0010\rJ\u000f\u0010-\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008-\u0010\rJ-\u00101\u001a\u00020\u000b2\u0008\u0008\u0002\u0010.\u001a\u00020\u00172\u0008\u0008\u0002\u0010/\u001a\u00020\u00072\u0008\u0008\u0002\u00100\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u00081\u00102J\u000f\u00103\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u00083\u0010\rJ\u0017\u00105\u001a\u00020\u000b2\u0006\u00104\u001a\u00020\u0007H&\u00a2\u0006\u0004\u00085\u0010\u0016J\u0019\u00107\u001a\u00020\u000b2\u0008\u0008\u0002\u00106\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u00087\u0010\u0016R.\u0010\u0008\u001a\u001c\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00028\u00000\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u00108R\u001b\u0010>\u001a\u0002098FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008:\u0010;\u001a\u0004\u0008<\u0010=R\u001b\u0010C\u001a\u00020?8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008@\u0010;\u001a\u0004\u0008A\u0010BR\u001b\u0010G\u001a\u00020D8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010;\u001a\u0004\u0008E\u0010FR\"\u0010M\u001a\u00020\u00178\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008H\u0010I\u001a\u0004\u0008J\u0010K\"\u0004\u0008L\u0010\u001aR\"\u0010Q\u001a\u00020\u00178\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008N\u0010I\u001a\u0004\u0008O\u0010K\"\u0004\u0008P\u0010\u001aR\"\u0010U\u001a\u00020\u00178\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008R\u0010I\u001a\u0004\u0008S\u0010K\"\u0004\u0008T\u0010\u001aR\u001b\u0010Z\u001a\u00020V8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008W\u0010;\u001a\u0004\u0008X\u0010YR\"\u0010^\u001a\u00020\u00178\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008[\u0010I\u001a\u0004\u0008\\\u0010K\"\u0004\u0008]\u0010\u001aR\"\u0010a\u001a\u00020\u00178\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010I\u001a\u0004\u0008_\u0010K\"\u0004\u0008`\u0010\u001aR\u001a\u0010f\u001a\u0008\u0012\u0004\u0012\u00020c0b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008d\u0010e\u00a8\u0006i"
    }
    d2 = {
        "Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;",
        "Lxyf;",
        "VB",
        "Lteam/opay/core/base/BaseFragmentV2;",
        "Lkotlin/Function3;",
        "Landroid/view/LayoutInflater;",
        "Landroid/view/ViewGroup;",
        "",
        "inflate",
        "<init>",
        "(Lhm6;)V",
        "",
        "y0",
        "()V",
        "m",
        "y",
        "s",
        "j",
        "w0",
        "l0",
        "showPositive",
        "D0",
        "(Z)V",
        "",
        "status",
        "r0",
        "(Ljava/lang/String;)V",
        "cardId",
        "message",
        "p0",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "data",
        "onActivityResult",
        "(IILandroid/content/Intent;)V",
        "H0",
        "G0",
        "failureReason",
        "showDeleteCardView",
        "showDeleteAccountView",
        "B0",
        "(Ljava/lang/String;ZZ)V",
        "onDestroyView",
        "show",
        "showProgress",
        "withhold",
        "K0",
        "Lhm6;",
        "Lteam/opay/pay/wallet/AddMoneyViewModel;",
        "k",
        "Lid8;",
        "i0",
        "()Lteam/opay/pay/wallet/AddMoneyViewModel;",
        "viewModel",
        "Lteam/opay/pay/settings/NewCardViewModel;",
        "l",
        "c0",
        "()Lteam/opay/pay/settings/NewCardViewModel;",
        "newCardViewModel",
        "Lteam/opay/pay/cashier/PaySheetViewModel;",
        "g0",
        "()Lteam/opay/pay/cashier/PaySheetViewModel;",
        "paySheetViewModel",
        "n",
        "Ljava/lang/String;",
        "d0",
        "()Ljava/lang/String;",
        "u0",
        "orderNo",
        "o",
        "h0",
        "setTopUpFrom",
        "topUpFrom",
        "p",
        "e0",
        "v0",
        "pageFrom",
        "Lteam/opay/pay/cashier/tobepaid/PaidStorage;",
        "q",
        "f0",
        "()Lteam/opay/pay/cashier/tobepaid/PaidStorage;",
        "paidStorage",
        "r",
        "b0",
        "t0",
        "mType",
        "a0",
        "s0",
        "amount",
        "Lvfa;",
        "Lteam/opay/pay/cashier/OrderResult;",
        "t",
        "Lvfa;",
        "paymentOrderObserver",
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
.field public static final u:Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final j:Lhm6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhm6<",
            "Landroid/view/LayoutInflater;",
            "Landroid/view/ViewGroup;",
            "Ljava/lang/Boolean;",
            "TVB;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final m:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public n:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public o:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public p:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final q:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public r:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public s:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final t:Lvfa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvfa<",
            "Lteam/opay/pay/cashier/OrderResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->u:Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lhm6;)V
    .locals 4
    .param p1    # Lhm6;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhm6<",
            "-",
            "Landroid/view/LayoutInflater;",
            "-",
            "Landroid/view/ViewGroup;",
            "-",
            "Ljava/lang/Boolean;",
            "+TVB;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "inflate"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lteam/opay/core/base/BaseFragmentV2;-><init>(Lhm6;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->j:Lhm6;

    .line 10
    .line 11
    const-class p1, Lteam/opay/pay/wallet/AddMoneyViewModel;

    .line 12
    .line 13
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance v0, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment$special$$inlined$activityViewModels$default$1;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment$special$$inlined$activityViewModels$default$2;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-direct {v1, v2, p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 26
    .line 27
    .line 28
    new-instance v3, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment$special$$inlined$activityViewModels$default$3;

    .line 29
    .line 30
    invoke-direct {v3, p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p0, p1, v0, v1, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->k:Lid8;

    .line 38
    .line 39
    const-class p1, Lteam/opay/pay/settings/NewCardViewModel;

    .line 40
    .line 41
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    new-instance v0, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment$special$$inlined$activityViewModels$default$4;

    .line 46
    .line 47
    invoke-direct {v0, p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment$special$$inlined$activityViewModels$default$4;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 48
    .line 49
    .line 50
    new-instance v1, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment$special$$inlined$activityViewModels$default$5;

    .line 51
    .line 52
    invoke-direct {v1, v2, p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment$special$$inlined$activityViewModels$default$5;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 53
    .line 54
    .line 55
    new-instance v3, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment$special$$inlined$activityViewModels$default$6;

    .line 56
    .line 57
    invoke-direct {v3, p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment$special$$inlined$activityViewModels$default$6;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 58
    .line 59
    .line 60
    invoke-static {p0, p1, v0, v1, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iput-object p1, p0, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->l:Lid8;

    .line 65
    .line 66
    const-class p1, Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 67
    .line 68
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    new-instance v0, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment$special$$inlined$activityViewModels$default$7;

    .line 73
    .line 74
    invoke-direct {v0, p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment$special$$inlined$activityViewModels$default$7;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 75
    .line 76
    .line 77
    new-instance v1, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment$special$$inlined$activityViewModels$default$8;

    .line 78
    .line 79
    invoke-direct {v1, v2, p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment$special$$inlined$activityViewModels$default$8;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 80
    .line 81
    .line 82
    new-instance v2, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment$special$$inlined$activityViewModels$default$9;

    .line 83
    .line 84
    invoke-direct {v2, p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment$special$$inlined$activityViewModels$default$9;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 85
    .line 86
    .line 87
    invoke-static {p0, p1, v0, v1, v2}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    iput-object p1, p0, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->m:Lid8;

    .line 92
    .line 93
    const-string p1, ""

    .line 94
    .line 95
    iput-object p1, p0, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->n:Ljava/lang/String;

    .line 96
    .line 97
    iput-object p1, p0, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->o:Ljava/lang/String;

    .line 98
    .line 99
    iput-object p1, p0, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->p:Ljava/lang/String;

    .line 100
    .line 101
    new-instance v0, Lix0;

    .line 102
    .line 103
    invoke-direct {v0, p0}, Lix0;-><init>(Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;)V

    .line 104
    .line 105
    .line 106
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    iput-object v0, p0, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->q:Lid8;

    .line 111
    .line 112
    const-string v0, "CARD"

    .line 113
    .line 114
    iput-object v0, p0, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->r:Ljava/lang/String;

    .line 115
    .line 116
    iput-object p1, p0, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->s:Ljava/lang/String;

    .line 117
    .line 118
    new-instance p1, Ljx0;

    .line 119
    .line 120
    invoke-direct {p1, p0}, Ljx0;-><init>(Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;)V

    .line 121
    .line 122
    .line 123
    iput-object p1, p0, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->t:Lvfa;

    .line 124
    .line 125
    return-void
.end method

.method public static final A0(Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->showProgress(Z)V

    .line 3
    .line 4
    .line 5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    return-object p0
.end method

.method public static synthetic C0(Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;Ljava/lang/String;ZZILjava/lang/Object;)V
    .locals 1

    .line 1
    if-nez p5, :cond_3

    .line 2
    .line 3
    and-int/lit8 p5, p4, 0x1

    .line 4
    .line 5
    if-eqz p5, :cond_0

    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz p5, :cond_1

    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 16
    .line 17
    if-eqz p4, :cond_2

    .line 18
    .line 19
    const/4 p3, 0x0

    .line 20
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->B0(Ljava/lang/String;ZZ)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 25
    .line 26
    const-string p1, "Super calls with default arguments not supported in this target, function: showFailure"

    .line 27
    .line 28
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p0
.end method

.method public static synthetic E0(Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p3, :cond_1

    .line 2
    .line 3
    const/4 p3, 0x1

    .line 4
    and-int/2addr p2, p3

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->D0(Z)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string p1, "Super calls with default arguments not supported in this target, function: showKycAlertDialog"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public static final F0(Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;Z)Lkotlin/Unit;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Landroid/content/Intent;

    .line 4
    .line 5
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-class v1, Lteam/opay/pay/kyc/AccountDetailsActivity;

    .line 10
    .line 11
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 22
    .line 23
    .line 24
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    return-object p0
.end method

.method public static final I0(Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;)Lkotlin/Unit;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->g0()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/cashier/PaySheetViewModel;->v0()Lteam/opay/pay/cashier/OrderStatusPolling;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->g0()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lteam/opay/pay/cashier/PaySheetViewModel;->l0()Lteam/opay/pay/cashier/OrderInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1}, Lteam/opay/pay/cashier/OrderInfo;->getOrderNo()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v1, 0x0

    .line 25
    :goto_0
    if-nez v1, :cond_1

    .line 26
    .line 27
    const-string v1, ""

    .line 28
    .line 29
    :cond_1
    const/4 v2, 0x1

    .line 30
    invoke-virtual {v0, v1, v2}, Lteam/opay/pay/cashier/OrderStatusPolling;->b(Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->f0()Lteam/opay/pay/cashier/tobepaid/PaidStorage;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Lteam/opay/pay/cashier/tobepaid/PaidStorage;->a()V

    .line 38
    .line 39
    .line 40
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 41
    .line 42
    return-object p0
.end method

.method public static final J0(Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->i0()Lteam/opay/pay/wallet/AddMoneyViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/wallet/AddMoneyViewModel;->w()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->i0()Lteam/opay/pay/wallet/AddMoneyViewModel;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Lteam/opay/pay/wallet/AddMoneyViewModel;->B(Z)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->y0()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->i0()Lteam/opay/pay/wallet/AddMoneyViewModel;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-virtual {v0, v1}, Lteam/opay/pay/wallet/AddMoneyViewModel;->B(Z)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->j()V

    .line 32
    .line 33
    .line 34
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 35
    .line 36
    return-object p0
.end method

.method public static synthetic L0(Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p3, :cond_1

    .line 2
    .line 3
    and-int/lit8 p2, p2, 0x1

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->K0(Z)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string p1, "Super calls with default arguments not supported in this target, function: submitOrder"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public static synthetic O(Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->k0(Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;Ljava/lang/Boolean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic P(Ljava/lang/String;Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->q0(Ljava/lang/String;Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Q(Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->z0(Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic R(Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->j0(Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;Ljava/lang/Boolean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic S(Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->I0(Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic T(Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->x0(Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic U(Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->A0(Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic V(Lteam/opay/pay/cashier/OrderResult;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->o0(Lteam/opay/pay/cashier/OrderResult;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic W(Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;Lteam/opay/pay/cashier/OrderResult;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->n0(Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;Lteam/opay/pay/cashier/OrderResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic X(Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->J0(Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Y(Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->F0(Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Z(Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;)Lteam/opay/pay/cashier/tobepaid/PaidStorage;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->m0(Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;)Lteam/opay/pay/cashier/tobepaid/PaidStorage;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final f0()Lteam/opay/pay/cashier/tobepaid/PaidStorage;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->q:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/cashier/tobepaid/PaidStorage;

    .line 8
    .line 9
    return-object v0
.end method

.method private final j()V
    .locals 3

    .line 1
    sget-object v0, Lteam/opay/pay/cashier/PaymentWebAuthFragment;->D:Lteam/opay/pay/cashier/PaymentWebAuthFragment$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/cashier/PaymentWebAuthFragment$Companion;->a()Lteam/opay/pay/cashier/PaymentWebAuthFragment;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lmx0;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lmx0;-><init>(Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lteam/opay/pay/cashier/PaymentWebAuthFragment;->r0(Lkotlin/jvm/functions/Function0;)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Lnx0;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lnx0;-><init>(Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lteam/opay/pay/cashier/PaymentWebAuthFragment;->t0(Lkotlin/jvm/functions/Function0;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "getSupportFragmentManager(...)"

    .line 32
    .line 33
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string/jumbo v2, "webAuth"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Lteam/opay/core/base/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public static final j0(Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-virtual {p0, p1}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->showProgress(Z)V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method

.method public static final k0(Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->showProgress(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private final m()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lloa;->b(Landroid/app/Activity;)Lteam/opay/pay/android/OpayApplication;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lteam/opay/pay/android/OpayApplication;->getAnalytics()Lteam/opay/pay/analytics/AnalyticsBackend;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Lteam/opay/pay/analytics/AnalyticsBackend;->h()V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lteam/opay/pay/cashier/PaySheetViewModel;->H:Lteam/opay/pay/cashier/PaySheetViewModel$Companion;

    .line 17
    .line 18
    invoke-virtual {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->g0()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lteam/opay/pay/cashier/PaySheetViewModel;->m0()Lteam/opay/pay/cashier/OrderInput;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "entrance_id"

    .line 27
    .line 28
    const-string v3, "1"

    .line 29
    .line 30
    invoke-static {v2, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const-string v4, "type"

    .line 35
    .line 36
    invoke-static {v4, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const/4 v4, 0x2

    .line 41
    new-array v4, v4, [Lkotlin/Pair;

    .line 42
    .line 43
    const/4 v5, 0x0

    .line 44
    aput-object v2, v4, v5

    .line 45
    .line 46
    const/4 v2, 0x1

    .line 47
    aput-object v3, v4, v2

    .line 48
    .line 49
    const-string v2, "otp_verification_show"

    .line 50
    .line 51
    invoke-virtual {v0, v2, v1, v4}, Lteam/opay/pay/cashier/PaySheetViewModel$Companion;->a(Ljava/lang/String;Lteam/opay/pay/cashier/OrderInput;[Lkotlin/Pair;)V

    .line 52
    .line 53
    .line 54
    new-instance v0, Landroid/content/Intent;

    .line 55
    .line 56
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const-class v2, Lteam/opay/pay/payment/verification/OtpVerificationActivity;

    .line 61
    .line 62
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->g0()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1}, Lteam/opay/pay/cashier/PaySheetViewModel;->l0()Lteam/opay/pay/cashier/OrderInfo;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    const-string v2, ""

    .line 74
    .line 75
    if-eqz v1, :cond_0

    .line 76
    .line 77
    invoke-virtual {v1}, Lteam/opay/pay/cashier/OrderInfo;->getOrderNo()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    if-nez v1, :cond_1

    .line 82
    .line 83
    :cond_0
    move-object v1, v2

    .line 84
    :cond_1
    const-string v3, "team.opay.pay.EXTRA_ORDER_ID"

    .line 85
    .line 86
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->g0()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v1}, Lteam/opay/pay/cashier/PaySheetViewModel;->o0()Lteam/opay/pay/cashier/OrderResponse;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    if-eqz v1, :cond_2

    .line 98
    .line 99
    invoke-virtual {v1}, Lteam/opay/pay/cashier/OrderResponse;->f()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    if-nez v1, :cond_3

    .line 104
    .line 105
    :cond_2
    move-object v1, v2

    .line 106
    :cond_3
    const-string v3, "team.opay.pay.EXTRA_INSTRUCTIONS"

    .line 107
    .line 108
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    .line 110
    .line 111
    sget-object v1, Lteam/opay/core/android/money/MoneyAmount;->Companion:Lteam/opay/core/android/money/MoneyAmount$Companion;

    .line 112
    .line 113
    iget-object v3, p0, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->s:Ljava/lang/String;

    .line 114
    .line 115
    sget-object v4, Lteam/opay/core/api/Country;->NIGERIA:Lteam/opay/core/api/Country;

    .line 116
    .line 117
    invoke-virtual {v4}, Lteam/opay/core/api/Country;->getCode()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-virtual {v1, v3, v4}, Lteam/opay/core/android/money/MoneyAmount$Companion;->a(Ljava/lang/String;Ljava/lang/String;)Lteam/opay/core/android/money/MoneyAmount;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    const-string v3, "team.opay.pay.EXTRA_ORDER_AMOUNT"

    .line 126
    .line 127
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->g0()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v1}, Lteam/opay/pay/cashier/PaySheetViewModel;->w0()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    if-nez v1, :cond_4

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_4
    move-object v2, v1

    .line 142
    :goto_0
    const-string v1, "team.opay.pay.EXTRA_OTPRESEND_INTERVAL"

    .line 143
    .line 144
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    .line 146
    .line 147
    const/16 v1, 0x12e

    .line 148
    .line 149
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 150
    .line 151
    .line 152
    return-void
.end method

.method public static final m0(Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;)Lteam/opay/pay/cashier/tobepaid/PaidStorage;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/pay/cashier/tobepaid/PaidStorage;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Lteam/opay/pay/cashier/tobepaid/PaidStorage;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static final n0(Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;Lteam/opay/pay/cashier/OrderResult;)V
    .locals 8

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lxk8;->a:Lxk8;

    .line 7
    .line 8
    new-instance v1, Lkx0;

    .line 9
    .line 10
    invoke-direct {v1, p1}, Lkx0;-><init>(Lteam/opay/pay/cashier/OrderResult;)V

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x1

    .line 15
    invoke-static {v0, v2, v1, v3, v2}, Lxk8;->f(Lxk8;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lteam/opay/pay/cashier/OrderResult;->a()Lteam/opay/pay/cashier/OrderStatus;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    const/4 p1, -0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    sget-object v0, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment$a;->a:[I

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    aget p1, v0, p1

    .line 33
    .line 34
    :goto_0
    const-string v0, ""

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    packed-switch p1, :pswitch_data_0

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v3}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->showProgress(Z)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->g0()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lteam/opay/pay/cashier/PaySheetViewModel;->v0()Lteam/opay/pay/cashier/OrderStatusPolling;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->g0()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0}, Lteam/opay/pay/cashier/PaySheetViewModel;->l0()Lteam/opay/pay/cashier/OrderInfo;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    if-eqz p0, :cond_1

    .line 60
    .line 61
    invoke-virtual {p0}, Lteam/opay/pay/cashier/OrderInfo;->getOrderNo()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    move-object p0, v2

    .line 67
    :goto_1
    if-nez p0, :cond_2

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_2
    move-object v0, p0

    .line 71
    :goto_2
    const/4 p0, 0x2

    .line 72
    invoke-static {p1, v0, v1, p0, v2}, Lteam/opay/pay/cashier/IOrderStatusPolling;->c(Lteam/opay/pay/cashier/IOrderStatusPolling;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    goto/16 :goto_6

    .line 76
    .line 77
    :pswitch_0
    invoke-direct {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->j()V

    .line 78
    .line 79
    .line 80
    goto/16 :goto_6

    .line 81
    .line 82
    :pswitch_1
    invoke-direct {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->s()V

    .line 83
    .line 84
    .line 85
    goto/16 :goto_6

    .line 86
    .line 87
    :pswitch_2
    invoke-direct {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->y()V

    .line 88
    .line 89
    .line 90
    goto/16 :goto_6

    .line 91
    .line 92
    :pswitch_3
    invoke-direct {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->m()V

    .line 93
    .line 94
    .line 95
    goto/16 :goto_6

    .line 96
    .line 97
    :pswitch_4
    invoke-virtual {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->G0()V

    .line 98
    .line 99
    .line 100
    invoke-direct {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->f0()Lteam/opay/pay/cashier/tobepaid/PaidStorage;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p1}, Lteam/opay/pay/cashier/tobepaid/PaidStorage;->a()V

    .line 105
    .line 106
    .line 107
    const-string p1, "2"

    .line 108
    .line 109
    invoke-virtual {p0, p1}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->r0(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    goto/16 :goto_6

    .line 113
    .line 114
    :pswitch_5
    invoke-virtual {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->H0()V

    .line 115
    .line 116
    .line 117
    invoke-direct {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->f0()Lteam/opay/pay/cashier/tobepaid/PaidStorage;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {p1}, Lteam/opay/pay/cashier/tobepaid/PaidStorage;->a()V

    .line 122
    .line 123
    .line 124
    const-string p1, "0"

    .line 125
    .line 126
    invoke-virtual {p0, p1}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->r0(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    goto/16 :goto_6

    .line 130
    .line 131
    :pswitch_6
    invoke-virtual {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->g0()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {p1}, Lteam/opay/pay/cashier/PaySheetViewModel;->I0()Lteam/opay/pay/cashier/SOURCE;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    sget-object v3, Lteam/opay/pay/cashier/SOURCE;->ADD_MONEY:Lteam/opay/pay/cashier/SOURCE;

    .line 140
    .line 141
    if-ne p1, v3, :cond_5

    .line 142
    .line 143
    invoke-virtual {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->g0()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {p1}, Lteam/opay/pay/cashier/PaySheetViewModel;->m0()Lteam/opay/pay/cashier/OrderInput;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {p1}, Lteam/opay/pay/cashier/OrderInput;->getPayChannel()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    sget-object v3, Lteam/opay/pay/cashier/PayChannel;->BANK_CARD:Lteam/opay/pay/cashier/PayChannel;

    .line 156
    .line 157
    invoke-virtual {v3}, Lteam/opay/pay/cashier/PayChannel;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    if-eqz p1, :cond_5

    .line 166
    .line 167
    invoke-virtual {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->g0()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-virtual {p1}, Lteam/opay/pay/cashier/PaySheetViewModel;->m0()Lteam/opay/pay/cashier/OrderInput;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-virtual {p1}, Lteam/opay/pay/cashier/OrderInput;->getInstruments()Ljava/util/List;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    if-eqz p1, :cond_3

    .line 180
    .line 181
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    check-cast p1, Lteam/opay/pay/cashier/InstrumentInput;

    .line 186
    .line 187
    if-eqz p1, :cond_3

    .line 188
    .line 189
    invoke-virtual {p1}, Lteam/opay/pay/cashier/InstrumentInput;->getId()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    :cond_3
    if-nez v2, :cond_4

    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_4
    move-object v0, v2

    .line 197
    :goto_3
    invoke-virtual {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->g0()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    invoke-virtual {p1}, Lteam/opay/pay/cashier/PaySheetViewModel;->i0()Lteam/opay/pay/cashier/FailedInfo;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-virtual {p1}, Lteam/opay/pay/cashier/FailedInfo;->c()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-virtual {p0, v0, p1}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->p0(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    goto :goto_5

    .line 213
    :cond_5
    invoke-virtual {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->g0()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    invoke-virtual {p1}, Lteam/opay/pay/cashier/PaySheetViewModel;->o0()Lteam/opay/pay/cashier/OrderResponse;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    if-eqz p1, :cond_6

    .line 222
    .line 223
    invoke-virtual {p1}, Lteam/opay/pay/cashier/OrderResponse;->k()Z

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    move v5, v1

    .line 228
    goto :goto_4

    .line 229
    :cond_6
    const/4 v5, 0x0

    .line 230
    :goto_4
    invoke-virtual {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->g0()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    invoke-virtual {p1}, Lteam/opay/pay/cashier/PaySheetViewModel;->i0()Lteam/opay/pay/cashier/FailedInfo;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    invoke-virtual {p1}, Lteam/opay/pay/cashier/FailedInfo;->c()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    const/4 v6, 0x2

    .line 243
    const/4 v7, 0x0

    .line 244
    const/4 v4, 0x0

    .line 245
    move-object v2, p0

    .line 246
    invoke-static/range {v2 .. v7}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->C0(Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;Ljava/lang/String;ZZILjava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    :goto_5
    invoke-direct {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->f0()Lteam/opay/pay/cashier/tobepaid/PaidStorage;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    invoke-virtual {p1}, Lteam/opay/pay/cashier/tobepaid/PaidStorage;->a()V

    .line 254
    .line 255
    .line 256
    const-string p1, "1"

    .line 257
    .line 258
    invoke-virtual {p0, p1}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->r0(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    goto :goto_6

    .line 262
    :pswitch_7
    invoke-virtual {p0, v1}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->D0(Z)V

    .line 263
    .line 264
    .line 265
    goto :goto_6

    .line 266
    :pswitch_8
    invoke-virtual {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->w0()V

    .line 267
    .line 268
    .line 269
    goto :goto_6

    .line 270
    :pswitch_9
    invoke-static {p0, v1, v3, v2}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->E0(Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;ZILjava/lang/Object;)V

    .line 271
    .line 272
    .line 273
    goto :goto_6

    .line 274
    :pswitch_a
    invoke-virtual {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->l0()V

    .line 275
    .line 276
    .line 277
    :goto_6
    return-void

    .line 278
    nop

    .line 279
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final o0(Lteam/opay/pay/cashier/OrderResult;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "orderStatus observe, it = "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static final q0(Ljava/lang/String;Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v1, v0

    .line 10
    :goto_0
    sget-object v2, Lteam/opay/core/android/arch/Status;->LOADING:Lteam/opay/core/android/arch/Status;

    .line 11
    .line 12
    if-ne v1, v2, :cond_1

    .line 13
    .line 14
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_1
    if-eqz p2, :cond_2

    .line 18
    .line 19
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    goto :goto_1

    .line 24
    :cond_2
    move-object v1, v0

    .line 25
    :goto_1
    sget-object v2, Lteam/opay/core/android/arch/Status;->SUCCESS:Lteam/opay/core/android/arch/Status;

    .line 26
    .line 27
    if-ne v1, v2, :cond_4

    .line 28
    .line 29
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lteam/opay/pay/api/CardStateResponse;

    .line 34
    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    invoke-virtual {v1}, Lteam/opay/pay/api/CardStateResponse;->a()Ljava/lang/Boolean;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :cond_3
    if-eqz v0, :cond_4

    .line 42
    .line 43
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    check-cast p2, Lteam/opay/pay/api/CardStateResponse;

    .line 48
    .line 49
    invoke-virtual {p2}, Lteam/opay/pay/api/CardStateResponse;->a()Ljava/lang/Boolean;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 54
    .line 55
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    if-eqz p2, :cond_4

    .line 60
    .line 61
    sget-object p2, Lteam/opay/pay/cashier/PaySheetViewModel;->H:Lteam/opay/pay/cashier/PaySheetViewModel$Companion;

    .line 62
    .line 63
    invoke-virtual {p1}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->g0()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lteam/opay/pay/cashier/PaySheetViewModel;->m0()Lteam/opay/pay/cashier/OrderInput;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const/4 v1, 0x0

    .line 72
    new-array v1, v1, [Lkotlin/Pair;

    .line 73
    .line 74
    const-string v2, "COMMON_pay_fail_show"

    .line 75
    .line 76
    invoke-virtual {p2, v2, v0, v1}, Lteam/opay/pay/cashier/PaySheetViewModel$Companion;->a(Ljava/lang/String;Lteam/opay/pay/cashier/OrderInput;[Lkotlin/Pair;)V

    .line 77
    .line 78
    .line 79
    :cond_4
    const/4 v7, 0x6

    .line 80
    const/4 v8, 0x0

    .line 81
    const/4 v5, 0x0

    .line 82
    const/4 v6, 0x0

    .line 83
    move-object v3, p1

    .line 84
    move-object v4, p0

    .line 85
    invoke-static/range {v3 .. v8}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->C0(Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;Ljava/lang/String;ZZILjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 89
    .line 90
    return-object p0
.end method

.method private final s()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lloa;->b(Landroid/app/Activity;)Lteam/opay/pay/android/OpayApplication;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lteam/opay/pay/android/OpayApplication;->getAnalytics()Lteam/opay/pay/analytics/AnalyticsBackend;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Lteam/opay/pay/analytics/AnalyticsBackend;->n()V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lteam/opay/pay/cashier/PaySheetViewModel;->H:Lteam/opay/pay/cashier/PaySheetViewModel$Companion;

    .line 17
    .line 18
    invoke-virtual {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->g0()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lteam/opay/pay/cashier/PaySheetViewModel;->m0()Lteam/opay/pay/cashier/OrderInput;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "entrance_id"

    .line 27
    .line 28
    const-string v3, "1"

    .line 29
    .line 30
    invoke-static {v2, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const-string v4, "type"

    .line 35
    .line 36
    invoke-static {v4, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const/4 v4, 0x2

    .line 41
    new-array v4, v4, [Lkotlin/Pair;

    .line 42
    .line 43
    const/4 v5, 0x0

    .line 44
    aput-object v2, v4, v5

    .line 45
    .line 46
    const/4 v2, 0x1

    .line 47
    aput-object v3, v4, v2

    .line 48
    .line 49
    const-string v2, "pin_verification_show"

    .line 50
    .line 51
    invoke-virtual {v0, v2, v1, v4}, Lteam/opay/pay/cashier/PaySheetViewModel$Companion;->a(Ljava/lang/String;Lteam/opay/pay/cashier/OrderInput;[Lkotlin/Pair;)V

    .line 52
    .line 53
    .line 54
    new-instance v0, Landroid/content/Intent;

    .line 55
    .line 56
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const-class v2, Lteam/opay/pay/payment/verification/PinVerificationActivity;

    .line 61
    .line 62
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->g0()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1}, Lteam/opay/pay/cashier/PaySheetViewModel;->l0()Lteam/opay/pay/cashier/OrderInfo;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    const-string v2, ""

    .line 74
    .line 75
    if-eqz v1, :cond_0

    .line 76
    .line 77
    invoke-virtual {v1}, Lteam/opay/pay/cashier/OrderInfo;->getOrderNo()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    if-nez v1, :cond_1

    .line 82
    .line 83
    :cond_0
    move-object v1, v2

    .line 84
    :cond_1
    const-string v3, "team.opay.pay.EXTRA_ORDER_ID"

    .line 85
    .line 86
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->g0()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v1}, Lteam/opay/pay/cashier/PaySheetViewModel;->o0()Lteam/opay/pay/cashier/OrderResponse;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    if-eqz v1, :cond_3

    .line 98
    .line 99
    invoke-virtual {v1}, Lteam/opay/pay/cashier/OrderResponse;->f()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    if-nez v1, :cond_2

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_2
    move-object v2, v1

    .line 107
    :cond_3
    :goto_0
    const-string v1, "team.opay.pay.EXTRA_INSTRUCTIONS"

    .line 108
    .line 109
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    .line 111
    .line 112
    sget-object v1, Lteam/opay/core/android/money/MoneyAmount;->Companion:Lteam/opay/core/android/money/MoneyAmount$Companion;

    .line 113
    .line 114
    iget-object v2, p0, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->s:Ljava/lang/String;

    .line 115
    .line 116
    sget-object v3, Lteam/opay/core/api/Country;->NIGERIA:Lteam/opay/core/api/Country;

    .line 117
    .line 118
    invoke-virtual {v3}, Lteam/opay/core/api/Country;->getCode()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-virtual {v1, v2, v3}, Lteam/opay/core/android/money/MoneyAmount$Companion;->a(Ljava/lang/String;Ljava/lang/String;)Lteam/opay/core/android/money/MoneyAmount;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    const-string v2, "team.opay.pay.EXTRA_ORDER_AMOUNT"

    .line 127
    .line 128
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 129
    .line 130
    .line 131
    const/16 v1, 0x12f

    .line 132
    .line 133
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 134
    .line 135
    .line 136
    return-void
.end method

.method public static final x0(Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;)Lkotlin/Unit;
    .locals 10

    .line 1
    sget-object v0, Lteam/opay/pay/kyc/edit/KycFormActivity;->g:Lteam/opay/pay/kyc/edit/KycFormActivity$Companion;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/16 v8, 0x7c

    .line 8
    .line 9
    const/4 v9, 0x0

    .line 10
    const-string v2, "edit"

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v6, 0x0

    .line 16
    const/4 v7, 0x0

    .line 17
    invoke-static/range {v0 .. v9}, Lteam/opay/pay/kyc/edit/KycFormActivity$Companion;->b(Lteam/opay/pay/kyc/edit/KycFormActivity$Companion;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 25
    .line 26
    .line 27
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 28
    .line 29
    return-object p0
.end method

.method private final y()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lloa;->b(Landroid/app/Activity;)Lteam/opay/pay/android/OpayApplication;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lteam/opay/pay/android/OpayApplication;->getAnalytics()Lteam/opay/pay/analytics/AnalyticsBackend;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Lteam/opay/pay/analytics/AnalyticsBackend;->i()V

    .line 14
    .line 15
    .line 16
    new-instance v0, Landroid/content/Intent;

    .line 17
    .line 18
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-class v2, Lteam/opay/pay/payment/verification/PhoneVerificationActivity;

    .line 23
    .line 24
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->g0()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Lteam/opay/pay/cashier/PaySheetViewModel;->l0()Lteam/opay/pay/cashier/OrderInfo;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v2, ""

    .line 36
    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    invoke-virtual {v1}, Lteam/opay/pay/cashier/OrderInfo;->getOrderNo()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    :cond_0
    move-object v1, v2

    .line 46
    :cond_1
    const-string v3, "team.opay.pay.EXTRA_ORDER_ID"

    .line 47
    .line 48
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->g0()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Lteam/opay/pay/cashier/PaySheetViewModel;->o0()Lteam/opay/pay/cashier/OrderResponse;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    if-eqz v1, :cond_3

    .line 60
    .line 61
    invoke-virtual {v1}, Lteam/opay/pay/cashier/OrderResponse;->f()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    if-nez v1, :cond_2

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    move-object v2, v1

    .line 69
    :cond_3
    :goto_0
    const-string v1, "team.opay.pay.EXTRA_INSTRUCTIONS"

    .line 70
    .line 71
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    .line 73
    .line 74
    sget-object v1, Lteam/opay/core/android/money/MoneyAmount;->Companion:Lteam/opay/core/android/money/MoneyAmount$Companion;

    .line 75
    .line 76
    iget-object v2, p0, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->s:Ljava/lang/String;

    .line 77
    .line 78
    sget-object v3, Lteam/opay/core/api/Country;->NIGERIA:Lteam/opay/core/api/Country;

    .line 79
    .line 80
    invoke-virtual {v3}, Lteam/opay/core/api/Country;->getCode()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v1, v2, v3}, Lteam/opay/core/android/money/MoneyAmount$Companion;->a(Ljava/lang/String;Ljava/lang/String;)Lteam/opay/core/android/money/MoneyAmount;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    const-string v2, "team.opay.pay.EXTRA_ORDER_AMOUNT"

    .line 89
    .line 90
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 91
    .line 92
    .line 93
    const/16 v1, 0x130

    .line 94
    .line 95
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method private final y0()V
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    sget v1, Lteam/opay/pay/R$string;->addmoney_dialog_retry:I

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "extra_desc"

    .line 13
    .line 14
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v1, "extra_type"

    .line 18
    .line 19
    const-string v2, "extra_type_load3ds"

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v1, "extra_show_receivemoney"

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 28
    .line 29
    .line 30
    sget-object v1, Lteam/opay/pay/cashier/RetryDialogFragment;->l:Lteam/opay/pay/cashier/RetryDialogFragment$Companion;

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-static {v1, v3, v2, v3}, Lteam/opay/pay/cashier/RetryDialogFragment$Companion;->b(Lteam/opay/pay/cashier/RetryDialogFragment$Companion;Landroid/os/Bundle;ILjava/lang/Object;)Lteam/opay/pay/cashier/RetryDialogFragment;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 38
    .line 39
    .line 40
    new-instance v0, Lfx0;

    .line 41
    .line 42
    invoke-direct {v0, p0}, Lfx0;-><init>(Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v0}, Lteam/opay/pay/cashier/RetryDialogFragment;->V(Lkotlin/jvm/functions/Function0;)V

    .line 46
    .line 47
    .line 48
    new-instance v0, Lgx0;

    .line 49
    .line 50
    invoke-direct {v0, p0}, Lgx0;-><init>(Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v0}, Lteam/opay/pay/cashier/RetryDialogFragment;->U(Lkotlin/jvm/functions/Function0;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const-string v2, "getSupportFragmentManager(...)"

    .line 65
    .line 66
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string v2, "retryFragment"

    .line 70
    .line 71
    invoke-virtual {v1, v0, v2}, Lteam/opay/core/base/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public static final z0(Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->j()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method


# virtual methods
.method public B0(Ljava/lang/String;ZZ)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p2, "failureReason"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->showProgress(Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->i0()Lteam/opay/pay/wallet/AddMoneyViewModel;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p2, p1}, Lteam/opay/pay/wallet/AddMoneyViewModel;->C(Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final D0(Z)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v15, Lteam/opay/pay/base/DialogInfo;

    .line 4
    .line 5
    const-string v1, ""

    .line 6
    .line 7
    if-eqz p1, :cond_2

    .line 8
    .line 9
    sget v2, Lteam/opay/pay/R$string;->daily_limit_title:I

    .line 10
    .line 11
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->i0()Lteam/opay/pay/wallet/AddMoneyViewModel;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v3}, Lteam/opay/pay/wallet/AddMoneyViewModel;->m()Lteam/opay/core/api/GraphQL$User;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    invoke-virtual {v3}, Lteam/opay/core/api/GraphQL$User;->f()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    if-nez v3, :cond_1

    .line 26
    .line 27
    :cond_0
    move-object v3, v1

    .line 28
    :cond_1
    const/4 v4, 0x1

    .line 29
    new-array v4, v4, [Ljava/lang/Object;

    .line 30
    .line 31
    const/4 v5, 0x0

    .line 32
    aput-object v3, v4, v5

    .line 33
    .line 34
    invoke-virtual {v0, v2, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    move-object v2, v1

    .line 40
    :goto_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->g0()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v3}, Lteam/opay/pay/cashier/PaySheetViewModel;->i0()Lteam/opay/pay/cashier/FailedInfo;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v3}, Lteam/opay/pay/cashier/FailedInfo;->c()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    if-eqz p1, :cond_3

    .line 56
    .line 57
    sget v1, Lteam/opay/pay/R$string;->daily_limit_upgrade:I

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    :cond_3
    move-object v4, v1

    .line 64
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    sget v1, Lteam/opay/pay/R$string;->daily_limit_new_amount:I

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    const-string v1, "getString(...)"

    .line 74
    .line 75
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const/16 v16, 0x1ff0

    .line 79
    .line 80
    const/16 v17, 0x0

    .line 81
    .line 82
    const/4 v6, 0x0

    .line 83
    const/4 v7, 0x0

    .line 84
    const/4 v8, 0x0

    .line 85
    const/4 v9, 0x0

    .line 86
    const/4 v10, 0x0

    .line 87
    const/4 v11, 0x0

    .line 88
    const/4 v12, 0x0

    .line 89
    const/4 v13, 0x0

    .line 90
    const/4 v14, 0x0

    .line 91
    move-object v1, v15

    .line 92
    move-object/from16 v18, v15

    .line 93
    .line 94
    move/from16 v15, v16

    .line 95
    .line 96
    move-object/from16 v16, v17

    .line 97
    .line 98
    invoke-direct/range {v1 .. v16}, Lteam/opay/pay/base/DialogInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;IIIILandroid/text/SpannableStringBuilder;ZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 99
    .line 100
    .line 101
    sget-object v1, Lteam/opay/pay/base/VerticalTwoButtonDialogFragment;->l:Lteam/opay/pay/base/VerticalTwoButtonDialogFragment$Companion;

    .line 102
    .line 103
    move-object/from16 v2, v18

    .line 104
    .line 105
    invoke-virtual {v1, v2}, Lteam/opay/pay/base/VerticalTwoButtonDialogFragment$Companion;->a(Lteam/opay/pay/base/DialogInfo;)Lteam/opay/pay/base/VerticalTwoButtonDialogFragment;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    new-instance v2, Lox0;

    .line 110
    .line 111
    invoke-direct {v2, v0}, Lox0;-><init>(Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v2}, Lteam/opay/pay/base/VerticalTwoButtonDialogFragment;->S(Lkotlin/jvm/functions/Function1;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    const-string v3, "getSupportFragmentManager(...)"

    .line 126
    .line 127
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    const-string v3, "kyc-alert"

    .line 131
    .line 132
    invoke-virtual {v1, v2, v3}, Lteam/opay/core/base/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    return-void
.end method

.method public G0()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->showProgress(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->i0()Lteam/opay/pay/wallet/AddMoneyViewModel;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1, v0}, Lteam/opay/pay/wallet/AddMoneyViewModel;->C(Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public H0()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->showProgress(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->i0()Lteam/opay/pay/wallet/AddMoneyViewModel;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1, v0}, Lteam/opay/pay/wallet/AddMoneyViewModel;->C(Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public K0(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final a0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->s:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->r:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c0()Lteam/opay/pay/settings/NewCardViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->l:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/settings/NewCardViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public d0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public e0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->p:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g0()Lteam/opay/pay/cashier/PaySheetViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->m:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public h0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->o:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i0()Lteam/opay/pay/wallet/AddMoneyViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->k:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/wallet/AddMoneyViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public final l0()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->showProgress(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->i0()Lteam/opay/pay/wallet/AddMoneyViewModel;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1, v0}, Lteam/opay/pay/wallet/AddMoneyViewModel;->C(Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->g0()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lteam/opay/pay/cashier/PaySheetViewModel;->v0()Lteam/opay/pay/cashier/OrderStatusPolling;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->g0()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Lteam/opay/pay/cashier/PaySheetViewModel;->l0()Lteam/opay/pay/cashier/OrderInfo;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-virtual {v2}, Lteam/opay/pay/cashier/OrderInfo;->getOrderNo()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v2, 0x0

    .line 36
    :goto_0
    if-nez v2, :cond_1

    .line 37
    .line 38
    const-string v2, ""

    .line 39
    .line 40
    :cond_1
    invoke-virtual {v1, v2, v0}, Lteam/opay/pay/cashier/OrderStatusPolling;->b(Ljava/lang/String;Z)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    const/4 v0, -0x1

    .line 7
    if-eq p2, v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    goto :goto_1

    .line 14
    :pswitch_0
    if-nez p3, :cond_1

    .line 15
    .line 16
    const/4 v5, 0x7

    .line 17
    const/4 v6, 0x0

    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v4, 0x0

    .line 21
    move-object v1, p0

    .line 22
    invoke-static/range {v1 .. v6}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->C0(Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;Ljava/lang/String;ZZILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    const-string p1, "team.opay.pay.EXTRA_VERIFICATION_CANCELLED"

    .line 27
    .line 28
    const/4 p2, 0x0

    .line 29
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0, p2}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->showProgress(Z)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->i0()Lteam/opay/pay/wallet/AddMoneyViewModel;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1, p2}, Lteam/opay/pay/wallet/AddMoneyViewModel;->C(Z)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    invoke-virtual {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->g0()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Lteam/opay/pay/cashier/PaySheetViewModel;->v0()Lteam/opay/pay/cashier/OrderStatusPolling;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->g0()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p2}, Lteam/opay/pay/cashier/PaySheetViewModel;->l0()Lteam/opay/pay/cashier/OrderInfo;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    if-eqz p2, :cond_3

    .line 63
    .line 64
    invoke-virtual {p2}, Lteam/opay/pay/cashier/OrderInfo;->getOrderNo()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    goto :goto_0

    .line 69
    :cond_3
    const/4 p2, 0x0

    .line 70
    :goto_0
    if-nez p2, :cond_4

    .line 71
    .line 72
    const-string p2, ""

    .line 73
    .line 74
    :cond_4
    const/4 p3, 0x1

    .line 75
    invoke-virtual {p1, p2, p3}, Lteam/opay/pay/cashier/OrderStatusPolling;->b(Ljava/lang/String;Z)V

    .line 76
    .line 77
    .line 78
    :goto_1
    return-void

    .line 79
    :pswitch_data_0
    .packed-switch 0x12e
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    sget-object v0, Lwke;->a:Lwke;

    .line 2
    .line 3
    invoke-virtual {v0}, Lwke;->b()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lteam/opay/core/base/BaseFragmentV2;->onDestroyView()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const-string p2, "add_money_base_topup_extra_order_number"

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    if-nez p1, :cond_1

    .line 24
    .line 25
    const-string p1, ""

    .line 26
    .line 27
    :cond_1
    invoke-virtual {p0, p1}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->u0(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->c0()Lteam/opay/pay/settings/NewCardViewModel;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1, p0}, Lteam/opay/pay/settings/NewCardViewModel;->Y(Lag8;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->g0()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lteam/opay/pay/cashier/PaySheetViewModel;->F0()Landroidx/lifecycle/MutableLiveData;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    new-instance v0, Lex0;

    .line 50
    .line 51
    invoke-direct {v0, p0}, Lex0;-><init>(Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;)V

    .line 52
    .line 53
    .line 54
    new-instance v1, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment$b;

    .line 55
    .line 56
    invoke-direct {v1, v0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p2, v1}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->g0()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Lteam/opay/pay/cashier/PaySheetViewModel;->u0()Landroidx/lifecycle/MutableLiveData;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    iget-object v0, p0, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->t:Lvfa;

    .line 75
    .line 76
    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->g0()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1}, Lteam/opay/pay/cashier/PaySheetViewModel;->K0()Landroidx/lifecycle/MutableLiveData;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    new-instance v0, Lhx0;

    .line 92
    .line 93
    invoke-direct {v0, p0}, Lhx0;-><init>(Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public final p0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->g0()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lteam/opay/pay/cashier/PaySheetViewModel;->Q0(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance v0, Llx0;

    .line 10
    .line 11
    invoke-direct {v0, p2, p0}, Llx0;-><init>(Ljava/lang/String;Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1, p0, v0}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final r0(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "1"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->g0()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->g0()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lteam/opay/pay/cashier/PaySheetViewModel;->i0()Lteam/opay/pay/cashier/FailedInfo;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lteam/opay/pay/cashier/FailedInfo;->b()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->g0()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Lteam/opay/pay/cashier/PaySheetViewModel;->i0()Lteam/opay/pay/cashier/FailedInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Lteam/opay/pay/cashier/FailedInfo;->c()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v0, v1, v2}, Lteam/opay/pay/cashier/PaySheetViewModel;->U(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->g0()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v1, ""

    .line 47
    .line 48
    invoke-virtual {v0, v1, v1}, Lteam/opay/pay/cashier/PaySheetViewModel;->U(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    :goto_0
    const-string v1, "st"

    .line 53
    .line 54
    invoke-static {v1, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    sget-object p1, Lteam/opay/pay/cashier/PaySheetViewModel;->H:Lteam/opay/pay/cashier/PaySheetViewModel$Companion;

    .line 62
    .line 63
    invoke-virtual {p0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->g0()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v1}, Lteam/opay/pay/cashier/PaySheetViewModel;->m0()Lteam/opay/pay/cashier/OrderInput;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    const/4 v2, 0x0

    .line 72
    new-array v2, v2, [Lkotlin/Pair;

    .line 73
    .line 74
    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, [Lkotlin/Pair;

    .line 79
    .line 80
    array-length v2, v0

    .line 81
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, [Lkotlin/Pair;

    .line 86
    .line 87
    const-string v2, "COMMON_order_response"

    .line 88
    .line 89
    invoke-virtual {p1, v2, v1, v0}, Lteam/opay/pay/cashier/PaySheetViewModel$Companion;->a(Ljava/lang/String;Lteam/opay/pay/cashier/OrderInput;[Lkotlin/Pair;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public final s0(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->s:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public abstract showProgress(Z)V
.end method

.method public final t0(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->r:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public u0(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->n:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public v0(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->p:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final w0()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;->showProgress(Z)V

    .line 3
    .line 4
    .line 5
    new-instance v0, Lteam/opay/pay/settings/CompleteInfoDialog;

    .line 6
    .line 7
    invoke-direct {v0}, Lteam/opay/pay/settings/CompleteInfoDialog;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lpx0;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lpx0;-><init>(Lteam/opay/pay/wallet/addmoney/BaseTopUpPaymentFragment;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lteam/opay/pay/settings/CompleteInfoDialog;->Q(Lkotlin/jvm/functions/Function0;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "getSupportFragmentManager(...)"

    .line 27
    .line 28
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v2, "complete-info"

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Lteam/opay/core/base/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
