.class public final Lteam/opay/pay/transfer/RecentBeneficiaryBottomFragment;
.super Lteam/opay/pay/transfer/Hilt_RecentBeneficiaryBottomFragment;
.source "RecentBeneficiaryBottomFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/transfer/RecentBeneficiaryBottomFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/pay/transfer/Hilt_RecentBeneficiaryBottomFragment<",
        "Lye1;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0008\u0007\u0018\u0000 \u00172\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0018B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0019\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ!\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rR(\u0010\u0016\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0004\u0008\u000f\u0010\u0010\u0012\u0004\u0008\u0015\u0010\u0004\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0019"
    }
    d2 = {
        "Lteam/opay/pay/transfer/RecentBeneficiaryBottomFragment;",
        "Lteam/opay/core/base/BaseSheetFragmentV2;",
        "Lye1;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "",
        "p",
        "Ljava/lang/String;",
        "getTransferFrom",
        "()Ljava/lang/String;",
        "setTransferFrom",
        "(Ljava/lang/String;)V",
        "getTransferFrom$annotations",
        "transferFrom",
        "q",
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
.field public static final q:Lteam/opay/pay/transfer/RecentBeneficiaryBottomFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public p:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/transfer/RecentBeneficiaryBottomFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/transfer/RecentBeneficiaryBottomFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/transfer/RecentBeneficiaryBottomFragment;->q:Lteam/opay/pay/transfer/RecentBeneficiaryBottomFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/transfer/RecentBeneficiaryBottomFragment$1;->INSTANCE:Lteam/opay/pay/transfer/RecentBeneficiaryBottomFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/transfer/Hilt_RecentBeneficiaryBottomFragment;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "1"

    .line 7
    .line 8
    iput-object v0, p0, Lteam/opay/pay/transfer/RecentBeneficiaryBottomFragment;->p:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic P(Lteam/opay/pay/transfer/RecentBeneficiaryBottomFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/transfer/RecentBeneficiaryBottomFragment;->Q(Lteam/opay/pay/transfer/RecentBeneficiaryBottomFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final Q(Lteam/opay/pay/transfer/RecentBeneficiaryBottomFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragment;->dismiss()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lteam/opay/core/base/BaseSheetFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const-string v0, "transfer_from"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    :cond_0
    const-string p1, "1"

    .line 21
    .line 22
    :cond_1
    iput-object p1, p0, Lteam/opay/pay/transfer/RecentBeneficiaryBottomFragment;->p:Ljava/lang/String;

    .line 23
    .line 24
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
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lye1;

    .line 14
    .line 15
    iget-object p1, p1, Lye1;->b:Landroid/widget/ImageView;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    new-instance p2, Lsec;

    .line 20
    .line 21
    invoke-direct {p2, p0}, Lsec;-><init>(Lteam/opay/pay/transfer/RecentBeneficiaryBottomFragment;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    sget-object p1, Lteam/opay/pay/home/tabs/RecentBeneficiaryFragment;->w:Lteam/opay/pay/home/tabs/RecentBeneficiaryFragment$Companion;

    .line 28
    .line 29
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/RecentBeneficiaryFragment$Companion;->a()Lteam/opay/pay/home/tabs/RecentBeneficiaryFragment;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    new-instance p2, Landroid/os/Bundle;

    .line 34
    .line 35
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v0, "key_show_transfer"

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 42
    .line 43
    .line 44
    const-string v0, "key_item_count"

    .line 45
    .line 46
    const/4 v1, -0x1

    .line 47
    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    const-string v0, "transfer_from"

    .line 51
    .line 52
    iget-object v1, p0, Lteam/opay/pay/transfer/RecentBeneficiaryBottomFragment;->p:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 58
    .line 59
    .line 60
    sget p2, Lteam/opay/pay/R$id;->fragment_content:I

    .line 61
    .line 62
    invoke-static {p0, p2, p1}, Lteam/opay/pay/base/FragmentKt;->t(Landroidx/fragment/app/Fragment;ILandroidx/fragment/app/Fragment;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method
