.class public abstract Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment;
.super Lteam/opay/core/common/base/BaseLazyFragment;
.source "BaseUserVAFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\r\u0008 \u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0011\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\u0003J\u001b\u0010\u000f\u001a\u00020\u00062\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0003J\u000f\u0010\u0016\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0003R\u001b\u0010\u001c\u001a\u00020\u00178DX\u0084\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001bR$\u0010$\u001a\u0004\u0018\u00010\u001d8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R$\u0010,\u001a\u0004\u0018\u00010%8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R\u0018\u0010/\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008-\u0010.R\u0018\u00101\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00080\u0010.\u00a8\u00062"
    }
    d2 = {
        "Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment;",
        "Lteam/opay/core/common/base/BaseLazyFragment;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onActivityCreated",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/View;",
        "M",
        "()Landroid/view/View;",
        "P",
        "Lteam/opay/sme/va/receive/VaWindowConfigBean;",
        "info",
        "V",
        "(Lteam/opay/sme/va/receive/VaWindowConfigBean;)V",
        "Lteam/opay/core/common/base/BaseDialogFragment;",
        "dialogFragment",
        "S",
        "(Lteam/opay/core/common/base/BaseDialogFragment;)V",
        "Y",
        "L",
        "Lteam/opay/sme/va/receive/ReceiveViewModel;",
        "a",
        "Lid8;",
        "R",
        "()Lteam/opay/sme/va/receive/ReceiveViewModel;",
        "viewModel",
        "Lteam/opay/sme/va/receive/StaticCodeInfoResp;",
        "b",
        "Lteam/opay/sme/va/receive/StaticCodeInfoResp;",
        "N",
        "()Lteam/opay/sme/va/receive/StaticCodeInfoResp;",
        "T",
        "(Lteam/opay/sme/va/receive/StaticCodeInfoResp;)V",
        "mStaticCodeInfo",
        "",
        "c",
        "Ljava/lang/String;",
        "O",
        "()Ljava/lang/String;",
        "U",
        "(Ljava/lang/String;)V",
        "newOrOldUser",
        "d",
        "Landroid/view/View;",
        "mDestinationView",
        "e",
        "mAnimateView",
        "sme-va_release"
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
.field public final a:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lteam/opay/sme/va/receive/StaticCodeInfoResp;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public e:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lteam/opay/core/common/base/BaseLazyFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lteam/opay/sme/va/receive/ReceiveViewModel;

    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment$special$$inlined$activityViewModels$default$1;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment$special$$inlined$activityViewModels$default$2;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-direct {v2, v3, p0}, Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 19
    .line 20
    .line 21
    new-instance v3, Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment$special$$inlined$activityViewModels$default$3;

    .line 22
    .line 23
    invoke-direct {v3, p0}, Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment;->a:Lid8;

    .line 31
    .line 32
    const-string v0, "new"

    .line 33
    .line 34
    iput-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment;->c:Ljava/lang/String;

    .line 35
    .line 36
    return-void
.end method

.method public static synthetic H(Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment;Lteam/opay/sme/va/receive/staticAccount/phoneAccount/GuideOpenWalletDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment;->X(Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment;Lteam/opay/sme/va/receive/staticAccount/phoneAccount/GuideOpenWalletDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic I(Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment;Lteam/opay/core/http/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment;->Q(Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment;Lteam/opay/core/http/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic J(Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment;Lteam/opay/sme/va/receive/staticAccount/phoneAccount/GuideOpenWalletDialog;Lteam/opay/sme/va/receive/VaWindowConfigBean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment;->W(Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment;Lteam/opay/sme/va/receive/staticAccount/phoneAccount/GuideOpenWalletDialog;Lteam/opay/sme/va/receive/VaWindowConfigBean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic K(Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment;->Y()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final Q(Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment;Lteam/opay/core/http/arch/Resource;)Lkotlin/Unit;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/core/http/arch/Resource;->c()Lteam/opay/core/http/arch/Status;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    if-nez v0, :cond_1

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    goto :goto_1

    .line 13
    :cond_1
    sget-object v1, Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment$a;->a:[I

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    aget v0, v1, v0

    .line 20
    .line 21
    :goto_1
    const/4 v1, 0x1

    .line 22
    if-ne v0, v1, :cond_2

    .line 23
    .line 24
    invoke-virtual {p1}, Lteam/opay/core/http/arch/Resource;->a()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lteam/opay/sme/va/receive/VaWindowConfigListResp;

    .line 29
    .line 30
    if-eqz p1, :cond_3

    .line 31
    .line 32
    invoke-virtual {p1}, Lteam/opay/sme/va/receive/VaWindowConfigListResp;->a()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_3

    .line 37
    .line 38
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Lteam/opay/sme/va/receive/VaWindowConfigBean;

    .line 43
    .line 44
    if-eqz p1, :cond_3

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment;->V(Lteam/opay/sme/va/receive/VaWindowConfigBean;)V

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    invoke-static {}, Let;->l()Lkotlin/jvm/functions/Function0;

    .line 51
    .line 52
    .line 53
    :cond_3
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 54
    .line 55
    return-object p0
.end method

.method public static final W(Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment;Lteam/opay/sme/va/receive/staticAccount/phoneAccount/GuideOpenWalletDialog;Lteam/opay/sme/va/receive/VaWindowConfigBean;)Lkotlin/Unit;
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Landroid/view/ViewGroup;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment;->e:Landroid/view/View;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    if-eqz p2, :cond_2

    .line 21
    .line 22
    invoke-virtual {p2}, Lteam/opay/sme/va/receive/VaWindowConfigBean;->getJumpUrl()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    if-eqz v4, :cond_2

    .line 27
    .line 28
    sget-object v2, Lud;->a:Lud;

    .line 29
    .line 30
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    const/4 v6, 0x4

    .line 35
    const/4 v7, 0x0

    .line 36
    const/4 v5, 0x0

    .line 37
    invoke-static/range {v2 .. v7}, Lud;->i(Lud;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    invoke-virtual {p1}, Lteam/opay/core/common/base/BaseDialogFragment;->dismiss()V

    .line 41
    .line 42
    .line 43
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 44
    .line 45
    return-object p0
.end method

.method public static final X(Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment;Lteam/opay/sme/va/receive/staticAccount/phoneAccount/GuideOpenWalletDialog;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment;->M()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment;->d:Landroid/view/View;

    .line 6
    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    check-cast v0, Landroid/view/ViewGroup;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object p0, p0, Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment;->e:Landroid/view/View;

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {p1}, Lteam/opay/core/common/base/BaseDialogFragment;->dismiss()V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    invoke-virtual {p0, p1}, Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment;->S(Lteam/opay/core/common/base/BaseDialogFragment;)V

    .line 33
    .line 34
    .line 35
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 36
    .line 37
    return-object p0
.end method


# virtual methods
.method public final L()V
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/sme/va/receive/staticAccount/home/AnimateHelper;->a:Lteam/opay/sme/va/receive/staticAccount/home/AnimateHelper;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lteam/opay/sme/va/receive/staticAccount/home/AnimateHelper;->a(Landroid/content/Context;)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment;->e:Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    check-cast v0, Landroid/view/ViewGroup;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v1, p0, Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment;->e:Landroid/view/View;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public M()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final N()Lteam/opay/sme/va/receive/StaticCodeInfoResp;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment;->b:Lteam/opay/sme/va/receive/StaticCodeInfoResp;

    .line 2
    .line 3
    return-object v0
.end method

.method public final O()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final P()V
    .locals 2

    .line 1
    sget-object v0, Loaf;->a:Loaf;

    .line 2
    .line 3
    invoke-virtual {v0}, Loaf;->x()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment;->R()Lteam/opay/sme/va/receive/ReceiveViewModel;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lteam/opay/sme/va/receive/ReceiveViewModel;->E()Landroidx/lifecycle/LiveData;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Liy0;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Liy0;-><init>(Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0, p0, v1}, Lpna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final R()Lteam/opay/sme/va/receive/ReceiveViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment;->a:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/sme/va/receive/ReceiveViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public final S(Lteam/opay/core/common/base/BaseDialogFragment;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    sget v2, Lteam/opay/sme/va/R$color;->mint:I

    .line 13
    .line 14
    invoke-static {v1, v2}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 19
    .line 20
    .line 21
    sget-object v1, Lteam/opay/sme/va/receive/staticAccount/home/AnimateHelper;->a:Lteam/opay/sme/va/receive/staticAccount/home/AnimateHelper;

    .line 22
    .line 23
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Lteam/opay/sme/va/receive/staticAccount/home/AnimateHelper;->b(Landroid/content/Context;)Landroid/view/animation/AnimationSet;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    new-instance v2, Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment$b;

    .line 32
    .line 33
    invoke-direct {v2, p0, p1}, Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment$b;-><init>(Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment;Lteam/opay/core/common/base/BaseDialogFragment;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final T(Lteam/opay/sme/va/receive/StaticCodeInfoResp;)V
    .locals 0
    .param p1    # Lteam/opay/sme/va/receive/StaticCodeInfoResp;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment;->b:Lteam/opay/sme/va/receive/StaticCodeInfoResp;

    .line 2
    .line 3
    return-void
.end method

.method public final U(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final V(Lteam/opay/sme/va/receive/VaWindowConfigBean;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    sget-object v0, Lteam/opay/sme/va/receive/staticAccount/home/DialogShowHelper;->a:Lteam/opay/sme/va/receive/staticAccount/home/DialogShowHelper;

    .line 4
    .line 5
    const-string v1, "GuideOpenWallet"

    .line 6
    .line 7
    invoke-virtual {p1}, Lteam/opay/sme/va/receive/VaWindowConfigBean;->getCount()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-virtual {v0, v1, v2}, Lteam/opay/sme/va/receive/staticAccount/home/DialogShowHelper;->b(Ljava/lang/String;I)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment;->L()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment;->e:Landroid/view/View;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-static {v0, v1}, Lg0g;->f(Landroid/view/View;Z)V

    .line 27
    .line 28
    .line 29
    :cond_1
    sget-object v0, Lteam/opay/sme/va/receive/staticAccount/phoneAccount/GuideOpenWalletDialog;->r:Lteam/opay/sme/va/receive/staticAccount/phoneAccount/GuideOpenWalletDialog$Companion;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lteam/opay/sme/va/receive/staticAccount/phoneAccount/GuideOpenWalletDialog$Companion;->a(Lteam/opay/sme/va/receive/VaWindowConfigBean;)Lteam/opay/sme/va/receive/staticAccount/phoneAccount/GuideOpenWalletDialog;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    new-instance v0, Ljy0;

    .line 36
    .line 37
    invoke-direct {v0, p0, p1}, Ljy0;-><init>(Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment;Lteam/opay/sme/va/receive/staticAccount/phoneAccount/GuideOpenWalletDialog;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lteam/opay/sme/va/receive/staticAccount/phoneAccount/GuideOpenWalletDialog;->c0(Lkotlin/jvm/functions/Function1;)V

    .line 41
    .line 42
    .line 43
    new-instance v0, Lky0;

    .line 44
    .line 45
    invoke-direct {v0, p0, p1}, Lky0;-><init>(Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment;Lteam/opay/sme/va/receive/staticAccount/phoneAccount/GuideOpenWalletDialog;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lteam/opay/sme/va/receive/staticAccount/phoneAccount/GuideOpenWalletDialog;->b0(Lkotlin/jvm/functions/Function0;)V

    .line 49
    .line 50
    .line 51
    invoke-static {p0, p1}, Lre6;->l(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/DialogFragment;)V

    .line 52
    .line 53
    .line 54
    :cond_2
    :goto_0
    return-void
.end method

.method public final Y()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment;->d:Landroid/view/View;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    iget-object v1, p0, Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment;->e:Landroid/view/View;

    .line 14
    .line 15
    if-nez v1, :cond_2

    .line 16
    .line 17
    return-void

    .line 18
    :cond_2
    invoke-static {v1}, Lg0g;->h(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    sget-object v2, Lteam/opay/sme/va/receive/staticAccount/home/AnimateHelper;->a:Lteam/opay/sme/va/receive/staticAccount/home/AnimateHelper;

    .line 22
    .line 23
    invoke-virtual {v2, v1, v0}, Lteam/opay/sme/va/receive/staticAccount/home/AnimateHelper;->c(Landroid/view/View;Landroid/view/View;)Landroid/view/animation/AnimationSet;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v2, Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment$c;

    .line 28
    .line 29
    invoke-direct {v2, p0, v1}, Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment$c;-><init>(Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment;Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lteam/opay/core/common/base/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment;->P()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
