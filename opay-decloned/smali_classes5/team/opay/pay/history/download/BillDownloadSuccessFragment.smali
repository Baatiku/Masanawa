.class public final Lteam/opay/pay/history/download/BillDownloadSuccessFragment;
.super Lteam/opay/core/base/BaseFragmentV2;
.source "BillDownloadSuccessFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/history/download/BillDownloadSuccessFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/base/BaseFragmentV2<",
        "Ly41;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u0000 \u000c2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\rB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000e"
    }
    d2 = {
        "Lteam/opay/pay/history/download/BillDownloadSuccessFragment;",
        "Lteam/opay/core/base/BaseFragmentV2;",
        "Ly41;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "j",
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
.field public static final j:Lteam/opay/pay/history/download/BillDownloadSuccessFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/history/download/BillDownloadSuccessFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/history/download/BillDownloadSuccessFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/history/download/BillDownloadSuccessFragment;->j:Lteam/opay/pay/history/download/BillDownloadSuccessFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/history/download/BillDownloadSuccessFragment$1;->INSTANCE:Lteam/opay/pay/history/download/BillDownloadSuccessFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/core/base/BaseFragmentV2;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic O(Lteam/opay/pay/history/download/BillDownloadSuccessFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/history/download/BillDownloadSuccessFragment;->Q(Lteam/opay/pay/history/download/BillDownloadSuccessFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic P(Lteam/opay/pay/history/download/BillDownloadSuccessFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/history/download/BillDownloadSuccessFragment;->R(Lteam/opay/pay/history/download/BillDownloadSuccessFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final Q(Lteam/opay/pay/history/download/BillDownloadSuccessFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method

.method public static final R(Lteam/opay/pay/history/download/BillDownloadSuccessFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method


# virtual methods
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
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
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Ly41;

    .line 16
    .line 17
    iget-object p1, p1, Ly41;->b:Lteam/opay/core/android/views/OpayActionBar;

    .line 18
    .line 19
    new-instance p2, Lw41;

    .line 20
    .line 21
    invoke-direct {p2, p0}, Lw41;-><init>(Lteam/opay/pay/history/download/BillDownloadSuccessFragment;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Lteam/opay/core/android/views/OpayActionBar;->setBackNavigationListener(Lkotlin/jvm/functions/Function0;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Ly41;

    .line 32
    .line 33
    iget-object p1, p1, Ly41;->c:Lcom/google/android/material/button/MaterialButton;

    .line 34
    .line 35
    const-string p2, "actionOk"

    .line 36
    .line 37
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    new-instance p2, Lx41;

    .line 41
    .line 42
    invoke-direct {p2, p0}, Lx41;-><init>(Lteam/opay/pay/history/download/BillDownloadSuccessFragment;)V

    .line 43
    .line 44
    .line 45
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Ly41;

    .line 53
    .line 54
    iget-object p1, p1, Ly41;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 55
    .line 56
    sget-object p2, Lteam/opay/pay/history/download/IndexDownloadTimeConfig;->Companion:Lteam/opay/pay/history/download/IndexDownloadTimeConfig$Companion;

    .line 57
    .line 58
    invoke-virtual {p2}, Lteam/opay/pay/history/download/IndexDownloadTimeConfig$Companion;->b()Lteam/opay/pay/history/download/IndexDownloadTimeConfig;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    if-eqz p2, :cond_0

    .line 63
    .line 64
    invoke-virtual {p2}, Lteam/opay/pay/history/download/IndexDownloadTimeConfig;->getSuccessText()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    const/4 p2, 0x0

    .line 70
    :goto_0
    if-nez p2, :cond_1

    .line 71
    .line 72
    const-string p2, ""

    .line 73
    .line 74
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    .line 76
    .line 77
    sget-object p1, Lx0f;->a:Lx0f;

    .line 78
    .line 79
    const/4 p2, 0x0

    .line 80
    new-array p2, p2, [Lkotlin/Pair;

    .line 81
    .line 82
    const-string v0, "transaction_details_download_succ_show"

    .line 83
    .line 84
    invoke-virtual {p1, v0, p2}, Lx0f;->c(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method
