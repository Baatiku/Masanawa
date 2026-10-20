.class public final Lteam/opay/pay/kyc/upgrade2/task/Kyc2FaceFailedFragment;
.super Lteam/opay/core/base/BaseFragmentV2;
.source "Kyc2FaceFailedFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/kyc/upgrade2/task/Kyc2FaceFailedFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/base/BaseFragmentV2<",
        "Laza;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\r\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 \u001a2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001bB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ!\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u001d\u0010\u0019\u001a\u0004\u0018\u00010\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001c"
    }
    d2 = {
        "Lteam/opay/pay/kyc/upgrade2/task/Kyc2FaceFailedFragment;",
        "Lteam/opay/core/base/BaseFragmentV2;",
        "Laza;",
        "<init>",
        "()V",
        "",
        "actionName",
        "",
        "S",
        "(Ljava/lang/String;)V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "content",
        "",
        "T",
        "(Ljava/lang/String;)Ljava/lang/CharSequence;",
        "Lteam/opay/pay/kyc/customer/UpgradeQueryRsp;",
        "j",
        "Lid8;",
        "U",
        "()Lteam/opay/pay/kyc/customer/UpgradeQueryRsp;",
        "rsp",
        "k",
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
.field public static final k:Lteam/opay/pay/kyc/upgrade2/task/Kyc2FaceFailedFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final j:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2FaceFailedFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2FaceFailedFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2FaceFailedFragment;->k:Lteam/opay/pay/kyc/upgrade2/task/Kyc2FaceFailedFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2FaceFailedFragment$1;->INSTANCE:Lteam/opay/pay/kyc/upgrade2/task/Kyc2FaceFailedFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/core/base/BaseFragmentV2;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lnq7;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lnq7;-><init>(Lteam/opay/pay/kyc/upgrade2/task/Kyc2FaceFailedFragment;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2FaceFailedFragment;->j:Lid8;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic O(Lteam/opay/pay/kyc/upgrade2/task/Kyc2FaceFailedFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2FaceFailedFragment;->X(Lteam/opay/pay/kyc/upgrade2/task/Kyc2FaceFailedFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic P(Lteam/opay/pay/kyc/upgrade2/task/Kyc2FaceFailedFragment;)Lteam/opay/pay/kyc/customer/UpgradeQueryRsp;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2FaceFailedFragment;->Y(Lteam/opay/pay/kyc/upgrade2/task/Kyc2FaceFailedFragment;)Lteam/opay/pay/kyc/customer/UpgradeQueryRsp;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Q(Lteam/opay/pay/kyc/upgrade2/task/Kyc2FaceFailedFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2FaceFailedFragment;->W(Lteam/opay/pay/kyc/upgrade2/task/Kyc2FaceFailedFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic R(Lteam/opay/pay/kyc/upgrade2/task/Kyc2FaceFailedFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2FaceFailedFragment;->V(Lteam/opay/pay/kyc/upgrade2/task/Kyc2FaceFailedFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final S(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    const-string v1, "call_code"

    .line 4
    .line 5
    const-string v2, "KYC2"

    .line 6
    .line 7
    invoke-static {v1, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x1

    .line 12
    new-array v2, v2, [Lkotlin/Pair;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    aput-object v1, v2, v3

    .line 16
    .line 17
    invoke-virtual {v0, p1, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static final V(Lteam/opay/pay/kyc/upgrade2/task/Kyc2FaceFailedFragment;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    new-array v0, v0, [Lkotlin/Pair;

    .line 7
    .line 8
    const-string v1, "kyc_upto2_getbackfail"

    .line 9
    .line 10
    invoke-static {p0, v1, v0}, Lkmf;->y(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method

.method public static final W(Lteam/opay/pay/kyc/upgrade2/task/Kyc2FaceFailedFragment;)Lkotlin/Unit;
    .locals 3

    .line 1
    sget-object v0, Lteam/opay/pay/customerservice/OCustomerServiceHomeActivity;->n:Lteam/opay/pay/customerservice/OCustomerServiceHomeActivity$Companion;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "requireContext(...)"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v2, "kyc_face_failed"

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lteam/opay/pay/customerservice/OCustomerServiceHomeActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v0, "KYC_upgradefailed_customerservice_click"

    .line 18
    .line 19
    invoke-direct {p0, v0}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2FaceFailedFragment;->S(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p0
.end method

.method public static final X(Lteam/opay/pay/kyc/upgrade2/task/Kyc2FaceFailedFragment;)Lkotlin/Unit;
    .locals 3

    .line 1
    sget-object v0, Lteam/opay/pay/kyc/upgrade2/KycUpgrade2Activity;->h:Lteam/opay/pay/kyc/upgrade2/KycUpgrade2Activity$Companion;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "upgradeFailed"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lteam/opay/pay/kyc/upgrade2/KycUpgrade2Activity$Companion;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 17
    .line 18
    .line 19
    const-string v0, "KYC_upgradefailed_tryagain_click"

    .line 20
    .line 21
    invoke-direct {p0, v0}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2FaceFailedFragment;->S(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    return-object p0
.end method

.method public static final Y(Lteam/opay/pay/kyc/upgrade2/task/Kyc2FaceFailedFragment;)Lteam/opay/pay/kyc/customer/UpgradeQueryRsp;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-string v0, "key_upgrade_query"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lteam/opay/pay/kyc/customer/UpgradeQueryRsp;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final T(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Laza;

    .line 6
    .line 7
    iget-object v0, v0, Laza;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "1. "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    new-instance v1, Landroid/text/SpannableString;

    .line 20
    .line 21
    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    new-instance p1, Landroid/text/style/LeadingMarginSpan$Standard;

    .line 25
    .line 26
    float-to-int v0, v0

    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-direct {p1, v2, v0}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(II)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/16 v3, 0x12

    .line 36
    .line 37
    invoke-virtual {v1, p1, v2, v0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 38
    .line 39
    .line 40
    return-object v1
.end method

.method public final U()Lteam/opay/pay/kyc/customer/UpgradeQueryRsp;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2FaceFailedFragment;->j:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/kyc/customer/UpgradeQueryRsp;

    .line 8
    .line 9
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10
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
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Laza;

    .line 16
    .line 17
    iget-object p1, p1, Laza;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 18
    .line 19
    invoke-virtual {p0}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2FaceFailedFragment;->U()Lteam/opay/pay/kyc/customer/UpgradeQueryRsp;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    const/4 v2, 0x0

    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    invoke-virtual {p2}, Lteam/opay/pay/kyc/customer/UpgradeQueryRsp;->getFailReason()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object p2, v2

    .line 32
    :goto_0
    const-string v3, ""

    .line 33
    .line 34
    if-nez p2, :cond_1

    .line 35
    .line 36
    move-object p2, v3

    .line 37
    :cond_1
    invoke-virtual {p0, p2}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2FaceFailedFragment;->T(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    sget-object p1, Lteam/opay/pay/cashier/newpayment/FeedbackEntranceConfig;->Companion:Lteam/opay/pay/cashier/newpayment/FeedbackEntranceConfig$Companion;

    .line 45
    .line 46
    const-string p2, "kyc_upto2_getbackfail"

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Lteam/opay/pay/cashier/newpayment/FeedbackEntranceConfig$Companion;->a(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Laza;

    .line 59
    .line 60
    iget-object v4, p1, Laza;->b:Lteam/opay/core/android/views/OpayActionBar;

    .line 61
    .line 62
    sget p1, Lteam/opay/pay/R$string;->osdk_help:I

    .line 63
    .line 64
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    const-string p1, "getString(...)"

    .line 69
    .line 70
    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    new-instance v7, Loq7;

    .line 74
    .line 75
    invoke-direct {v7, p0}, Loq7;-><init>(Lteam/opay/pay/kyc/upgrade2/task/Kyc2FaceFailedFragment;)V

    .line 76
    .line 77
    .line 78
    const/4 v8, 0x1

    .line 79
    const/4 v9, 0x0

    .line 80
    const/4 v5, 0x0

    .line 81
    invoke-static/range {v4 .. v9}, Lteam/opay/core/android/views/OpayActionBar;->k(Lteam/opay/core/android/views/OpayActionBar;Ljava/lang/Boolean;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Laza;

    .line 89
    .line 90
    iget-object p1, p1, Laza;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 91
    .line 92
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2FaceFailedFragment;->U()Lteam/opay/pay/kyc/customer/UpgradeQueryRsp;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    if-eqz p2, :cond_3

    .line 100
    .line 101
    invoke-virtual {p2}, Lteam/opay/pay/kyc/customer/UpgradeQueryRsp;->getRemark()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    goto :goto_1

    .line 106
    :cond_3
    move-object p2, v2

    .line 107
    :goto_1
    if-eqz p2, :cond_5

    .line 108
    .line 109
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    if-nez p2, :cond_4

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_4
    const/4 p2, 0x0

    .line 117
    goto :goto_3

    .line 118
    :cond_5
    :goto_2
    const/4 p2, 0x1

    .line 119
    :goto_3
    xor-int/2addr p2, v1

    .line 120
    invoke-static {p1, p2}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 121
    .line 122
    .line 123
    sget p2, Lteam/opay/pay/R$string;->osdk_note_info:I

    .line 124
    .line 125
    invoke-virtual {p0}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2FaceFailedFragment;->U()Lteam/opay/pay/kyc/customer/UpgradeQueryRsp;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    if-eqz v4, :cond_6

    .line 130
    .line 131
    invoke-virtual {v4}, Lteam/opay/pay/kyc/customer/UpgradeQueryRsp;->getRemark()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    :cond_6
    if-nez v2, :cond_7

    .line 136
    .line 137
    goto :goto_4

    .line 138
    :cond_7
    move-object v3, v2

    .line 139
    :goto_4
    new-array v1, v1, [Ljava/lang/Object;

    .line 140
    .line 141
    aput-object v3, v1, v0

    .line 142
    .line 143
    invoke-virtual {p0, p2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    check-cast p1, Laza;

    .line 155
    .line 156
    iget-object p1, p1, Laza;->c:Lcom/google/android/material/button/MaterialButton;

    .line 157
    .line 158
    const-string p2, "customService"

    .line 159
    .line 160
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    new-instance p2, Lpq7;

    .line 164
    .line 165
    invoke-direct {p2, p0}, Lpq7;-><init>(Lteam/opay/pay/kyc/upgrade2/task/Kyc2FaceFailedFragment;)V

    .line 166
    .line 167
    .line 168
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    check-cast p1, Laza;

    .line 176
    .line 177
    iget-object p1, p1, Laza;->g:Lcom/google/android/material/button/MaterialButton;

    .line 178
    .line 179
    const-string p2, "okButton"

    .line 180
    .line 181
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    new-instance p2, Lqq7;

    .line 185
    .line 186
    invoke-direct {p2, p0}, Lqq7;-><init>(Lteam/opay/pay/kyc/upgrade2/task/Kyc2FaceFailedFragment;)V

    .line 187
    .line 188
    .line 189
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 190
    .line 191
    .line 192
    const-string p1, "KYC_upgradefailed_show"

    .line 193
    .line 194
    invoke-direct {p0, p1}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2FaceFailedFragment;->S(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    return-void
.end method
