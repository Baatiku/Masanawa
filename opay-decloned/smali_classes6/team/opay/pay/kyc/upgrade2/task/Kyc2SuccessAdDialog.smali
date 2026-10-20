.class public final Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessAdDialog;
.super Lteam/opay/pay/kyc/upgrade2/task/Hilt_Kyc2SuccessAdDialog;
.source "Kyc2SuccessAdDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessAdDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/pay/kyc/upgrade2/task/Hilt_Kyc2SuccessAdDialog<",
        "Lsc3;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 \u001a2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001bB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bR\"\u0010\u0013\u001a\u00020\u000c8\u0014@\u0014X\u0094\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001d\u0010\u0019\u001a\u0004\u0018\u00010\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001c"
    }
    d2 = {
        "Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessAdDialog;",
        "Lteam/opay/core/base/BaseSheetInjectFragmentV2;",
        "Lsc3;",
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
        "q",
        "Z",
        "I",
        "()Z",
        "setSupportBgTransparent",
        "(Z)V",
        "supportBgTransparent",
        "Lteam/opay/odialog/net/AdDataItem;",
        "r",
        "Lid8;",
        "U",
        "()Lteam/opay/odialog/net/AdDataItem;",
        "data",
        "s",
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
.field public static final s:Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessAdDialog$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public q:Z

.field public final r:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessAdDialog$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessAdDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessAdDialog;->s:Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessAdDialog$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessAdDialog$1;->INSTANCE:Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessAdDialog$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/kyc/upgrade2/task/Hilt_Kyc2SuccessAdDialog;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessAdDialog;->q:Z

    .line 8
    .line 9
    new-instance v0, Leu7;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Leu7;-><init>(Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessAdDialog;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessAdDialog;->r:Lid8;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic P(Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessAdDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessAdDialog;->X(Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessAdDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Q(Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessAdDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessAdDialog;->V(Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessAdDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic R(Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessAdDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessAdDialog;->W(Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessAdDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic S(Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessAdDialog;)Lteam/opay/odialog/net/AdDataItem;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessAdDialog;->T(Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessAdDialog;)Lteam/opay/odialog/net/AdDataItem;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final T(Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessAdDialog;)Lteam/opay/odialog/net/AdDataItem;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const-string v1, "key_data"

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lteam/opay/odialog/net/AdDataItem;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object p0, v0

    .line 18
    :goto_0
    instance-of v1, p0, Lteam/opay/odialog/net/AdDataItem;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    move-object v0, p0

    .line 23
    :cond_1
    return-object v0
.end method

.method public static final V(Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessAdDialog;)Lkotlin/Unit;
    .locals 17

    .line 1
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessAdDialog;->U()Lteam/opay/odialog/net/AdDataItem;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lteam/opay/odialog/net/AdDataItem;->getButtonCancelLink()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v1

    .line 14
    :goto_0
    if-eqz v0, :cond_3

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    sget-object v2, Lcom/opay/team/home/a;->a:Lcom/opay/team/home/a;

    .line 24
    .line 25
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const-string v0, "requireActivity(...)"

    .line 30
    .line 31
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessAdDialog;->U()Lteam/opay/odialog/net/AdDataItem;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    invoke-virtual {v0}, Lteam/opay/odialog/net/AdDataItem;->getButtonCancelLink()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    :cond_2
    move-object v4, v1

    .line 45
    const/4 v0, 0x0

    .line 46
    new-array v8, v0, [Lkotlin/Pair;

    .line 47
    .line 48
    const/16 v9, 0x1c

    .line 49
    .line 50
    const/4 v10, 0x0

    .line 51
    const/4 v5, 0x0

    .line 52
    const/4 v6, 0x0

    .line 53
    const/4 v7, 0x0

    .line 54
    invoke-static/range {v2 .. v10}, Lcom/opay/team/home/a;->z(Lcom/opay/team/home/a;Landroid/content/Context;Ljava/lang/String;Lteam/opay/core/api/Country;Lcom/opay/team/home/analytics/PageTarget;Lcom/opay/team/home/analytics/PageSubModule;[Lkotlin/Pair;ILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAllowingStateLoss()V

    .line 58
    .line 59
    .line 60
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessAdDialog;->U()Lteam/opay/odialog/net/AdDataItem;

    .line 61
    .line 62
    .line 63
    move-result-object v12

    .line 64
    if-eqz v12, :cond_4

    .line 65
    .line 66
    sget-object v11, Lx7b;->a:Lx7b;

    .line 67
    .line 68
    const/4 v15, 0x4

    .line 69
    const/16 v16, 0x0

    .line 70
    .line 71
    const-string v13, "POP_ads"

    .line 72
    .line 73
    const/4 v14, 0x0

    .line 74
    invoke-static/range {v11 .. v16}, Lx7b;->y(Lx7b;Lteam/opay/odialog/net/AdDataItem;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :cond_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 78
    .line 79
    return-object v0
.end method

.method public static final W(Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessAdDialog;)Lkotlin/Unit;
    .locals 15

    .line 1
    sget-object v0, Lcom/opay/team/home/a;->a:Lcom/opay/team/home/a;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lsc3;

    .line 8
    .line 9
    iget-object v1, v1, Lsc3;->d:Landroidx/appcompat/widget/AppCompatImageView;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "getContext(...)"

    .line 16
    .line 17
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessAdDialog;->U()Lteam/opay/odialog/net/AdDataItem;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-virtual {v2}, Lteam/opay/odialog/net/AdDataItem;->getAction()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v2, 0x0

    .line 32
    :goto_0
    const/4 v3, 0x0

    .line 33
    new-array v6, v3, [Lkotlin/Pair;

    .line 34
    .line 35
    const/16 v7, 0x1c

    .line 36
    .line 37
    const/4 v8, 0x0

    .line 38
    const/4 v3, 0x0

    .line 39
    const/4 v4, 0x0

    .line 40
    const/4 v5, 0x0

    .line 41
    invoke-static/range {v0 .. v8}, Lcom/opay/team/home/a;->z(Lcom/opay/team/home/a;Landroid/content/Context;Ljava/lang/String;Lteam/opay/core/api/Country;Lcom/opay/team/home/analytics/PageTarget;Lcom/opay/team/home/analytics/PageSubModule;[Lkotlin/Pair;ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAllowingStateLoss()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessAdDialog;->U()Lteam/opay/odialog/net/AdDataItem;

    .line 48
    .line 49
    .line 50
    move-result-object v10

    .line 51
    if-eqz v10, :cond_1

    .line 52
    .line 53
    sget-object v9, Lx7b;->a:Lx7b;

    .line 54
    .line 55
    const/4 v13, 0x4

    .line 56
    const/4 v14, 0x0

    .line 57
    const-string v11, "POP_ads"

    .line 58
    .line 59
    const/4 v12, 0x0

    .line 60
    invoke-static/range {v9 .. v14}, Lx7b;->y(Lx7b;Lteam/opay/odialog/net/AdDataItem;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 64
    .line 65
    return-object p0
.end method

.method public static final X(Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessAdDialog;)Lkotlin/Unit;
    .locals 17

    .line 1
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessAdDialog;->U()Lteam/opay/odialog/net/AdDataItem;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lteam/opay/odialog/net/AdDataItem;->getButtonConfirmLink()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v1

    .line 14
    :goto_0
    if-eqz v0, :cond_3

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    sget-object v2, Lcom/opay/team/home/a;->a:Lcom/opay/team/home/a;

    .line 24
    .line 25
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const-string v0, "requireActivity(...)"

    .line 30
    .line 31
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessAdDialog;->U()Lteam/opay/odialog/net/AdDataItem;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    invoke-virtual {v0}, Lteam/opay/odialog/net/AdDataItem;->getButtonConfirmLink()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    :cond_2
    move-object v4, v1

    .line 45
    const/4 v0, 0x0

    .line 46
    new-array v8, v0, [Lkotlin/Pair;

    .line 47
    .line 48
    const/16 v9, 0x1c

    .line 49
    .line 50
    const/4 v10, 0x0

    .line 51
    const/4 v5, 0x0

    .line 52
    const/4 v6, 0x0

    .line 53
    const/4 v7, 0x0

    .line 54
    invoke-static/range {v2 .. v10}, Lcom/opay/team/home/a;->z(Lcom/opay/team/home/a;Landroid/content/Context;Ljava/lang/String;Lteam/opay/core/api/Country;Lcom/opay/team/home/analytics/PageTarget;Lcom/opay/team/home/analytics/PageSubModule;[Lkotlin/Pair;ILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAllowingStateLoss()V

    .line 58
    .line 59
    .line 60
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessAdDialog;->U()Lteam/opay/odialog/net/AdDataItem;

    .line 61
    .line 62
    .line 63
    move-result-object v12

    .line 64
    if-eqz v12, :cond_4

    .line 65
    .line 66
    sget-object v11, Lx7b;->a:Lx7b;

    .line 67
    .line 68
    const/4 v15, 0x4

    .line 69
    const/16 v16, 0x0

    .line 70
    .line 71
    const-string v13, "POP_ads"

    .line 72
    .line 73
    const/4 v14, 0x0

    .line 74
    invoke-static/range {v11 .. v16}, Lx7b;->y(Lx7b;Lteam/opay/odialog/net/AdDataItem;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :cond_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 78
    .line 79
    return-object v0
.end method


# virtual methods
.method public I()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessAdDialog;->q:Z

    .line 2
    .line 3
    return v0
.end method

.method public final U()Lteam/opay/odialog/net/AdDataItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessAdDialog;->r:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/odialog/net/AdDataItem;

    .line 8
    .line 9
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

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
    invoke-static {p0}, Lcom/bumptech/glide/a;->w(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessAdDialog;->U()Lteam/opay/odialog/net/AdDataItem;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    invoke-virtual {p2}, Lteam/opay/odialog/net/AdDataItem;->getImg_url()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object p2, v2

    .line 28
    :goto_0
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestManager;->u(Ljava/lang/String;)Ljpc;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    sget p2, Lteam/opay/pay/R$mipmap;->bg_banner_default:I

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->Z(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Ljpc;

    .line 39
    .line 40
    new-instance p2, Lcom/bumptech/glide/load/MultiTransformation;

    .line 41
    .line 42
    new-instance v3, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    .line 43
    .line 44
    invoke-direct {v3}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>()V

    .line 45
    .line 46
    .line 47
    new-instance v4, Lteam/opay/pay/message/utils/GlideRoundedCornersTransformation;

    .line 48
    .line 49
    const/high16 v5, 0x41400000    # 12.0f

    .line 50
    .line 51
    invoke-static {v5}, Llmf;->c(F)F

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    float-to-int v5, v5

    .line 56
    sget-object v6, Lteam/opay/pay/message/utils/GlideRoundedCornersTransformation$CornerType;->TOP:Lteam/opay/pay/message/utils/GlideRoundedCornersTransformation$CornerType;

    .line 57
    .line 58
    invoke-direct {v4, v5, v1, v6}, Lteam/opay/pay/message/utils/GlideRoundedCornersTransformation;-><init>(IILteam/opay/pay/message/utils/GlideRoundedCornersTransformation$CornerType;)V

    .line 59
    .line 60
    .line 61
    const/4 v5, 0x2

    .line 62
    new-array v5, v5, [Locf;

    .line 63
    .line 64
    aput-object v3, v5, v1

    .line 65
    .line 66
    aput-object v4, v5, v0

    .line 67
    .line 68
    invoke-direct {p2, v5}, Lcom/bumptech/glide/load/MultiTransformation;-><init>([Locf;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->l0(Locf;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Ljpc;

    .line 76
    .line 77
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    check-cast p2, Lsc3;

    .line 82
    .line 83
    iget-object p2, p2, Lsc3;->d:Landroidx/appcompat/widget/AppCompatImageView;

    .line 84
    .line 85
    invoke-virtual {p1, p2}, Ljpc;->F0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Lsc3;

    .line 93
    .line 94
    iget-object p1, p1, Lsc3;->d:Landroidx/appcompat/widget/AppCompatImageView;

    .line 95
    .line 96
    const-string p2, "ivPic"

    .line 97
    .line 98
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    new-instance p2, Lbu7;

    .line 102
    .line 103
    invoke-direct {p2, p0}, Lbu7;-><init>(Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessAdDialog;)V

    .line 104
    .line 105
    .line 106
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessAdDialog;->U()Lteam/opay/odialog/net/AdDataItem;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    if-eqz p1, :cond_1

    .line 114
    .line 115
    invoke-virtual {p1}, Lteam/opay/odialog/net/AdDataItem;->getButtonConfirmTitle()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    goto :goto_1

    .line 120
    :cond_1
    move-object p1, v2

    .line 121
    :goto_1
    if-eqz p1, :cond_3

    .line 122
    .line 123
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    if-nez p2, :cond_2

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_2
    const/4 p2, 0x0

    .line 131
    goto :goto_3

    .line 132
    :cond_3
    :goto_2
    const/4 p2, 0x1

    .line 133
    :goto_3
    if-nez p2, :cond_4

    .line 134
    .line 135
    goto :goto_4

    .line 136
    :cond_4
    move-object p1, v2

    .line 137
    :goto_4
    if-eqz p1, :cond_7

    .line 138
    .line 139
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    check-cast p2, Lsc3;

    .line 144
    .line 145
    iget-object p2, p2, Lsc3;->c:Lcom/google/android/material/button/MaterialButton;

    .line 146
    .line 147
    if-eqz p2, :cond_5

    .line 148
    .line 149
    invoke-static {p2}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 150
    .line 151
    .line 152
    :cond_5
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    check-cast p2, Lsc3;

    .line 157
    .line 158
    iget-object p2, p2, Lsc3;->c:Lcom/google/android/material/button/MaterialButton;

    .line 159
    .line 160
    if-eqz p2, :cond_6

    .line 161
    .line 162
    invoke-static {p1}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    .line 168
    .line 169
    :cond_6
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    check-cast p1, Lsc3;

    .line 174
    .line 175
    iget-object p1, p1, Lsc3;->c:Lcom/google/android/material/button/MaterialButton;

    .line 176
    .line 177
    if-eqz p1, :cond_7

    .line 178
    .line 179
    new-instance p2, Lcu7;

    .line 180
    .line 181
    invoke-direct {p2, p0}, Lcu7;-><init>(Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessAdDialog;)V

    .line 182
    .line 183
    .line 184
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 185
    .line 186
    .line 187
    :cond_7
    invoke-virtual {p0}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessAdDialog;->U()Lteam/opay/odialog/net/AdDataItem;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    if-eqz p1, :cond_8

    .line 192
    .line 193
    invoke-virtual {p1}, Lteam/opay/odialog/net/AdDataItem;->getButtonCancelTitle()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    goto :goto_5

    .line 198
    :cond_8
    move-object p1, v2

    .line 199
    :goto_5
    if-eqz p1, :cond_a

    .line 200
    .line 201
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 202
    .line 203
    .line 204
    move-result p2

    .line 205
    if-nez p2, :cond_9

    .line 206
    .line 207
    goto :goto_6

    .line 208
    :cond_9
    const/4 v0, 0x0

    .line 209
    :cond_a
    :goto_6
    if-nez v0, :cond_b

    .line 210
    .line 211
    move-object v2, p1

    .line 212
    :cond_b
    if-eqz v2, :cond_e

    .line 213
    .line 214
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    check-cast p1, Lsc3;

    .line 219
    .line 220
    iget-object p1, p1, Lsc3;->b:Lcom/google/android/material/button/MaterialButton;

    .line 221
    .line 222
    if-eqz p1, :cond_c

    .line 223
    .line 224
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 225
    .line 226
    .line 227
    :cond_c
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    check-cast p1, Lsc3;

    .line 232
    .line 233
    iget-object p1, p1, Lsc3;->b:Lcom/google/android/material/button/MaterialButton;

    .line 234
    .line 235
    if-eqz p1, :cond_d

    .line 236
    .line 237
    invoke-static {v2}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 238
    .line 239
    .line 240
    move-result-object p2

    .line 241
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    .line 243
    .line 244
    :cond_d
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    check-cast p1, Lsc3;

    .line 249
    .line 250
    iget-object p1, p1, Lsc3;->b:Lcom/google/android/material/button/MaterialButton;

    .line 251
    .line 252
    if-eqz p1, :cond_e

    .line 253
    .line 254
    new-instance p2, Ldu7;

    .line 255
    .line 256
    invoke-direct {p2, p0}, Ldu7;-><init>(Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessAdDialog;)V

    .line 257
    .line 258
    .line 259
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 260
    .line 261
    .line 262
    :cond_e
    invoke-virtual {p0}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessAdDialog;->U()Lteam/opay/odialog/net/AdDataItem;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    if-eqz v1, :cond_f

    .line 267
    .line 268
    sget-object v0, Lx7b;->a:Lx7b;

    .line 269
    .line 270
    const/4 v4, 0x4

    .line 271
    const/4 v5, 0x0

    .line 272
    const-string v2, "POP_ads"

    .line 273
    .line 274
    const/4 v3, 0x0

    .line 275
    invoke-static/range {v0 .. v5}, Lx7b;->G(Lx7b;Lteam/opay/odialog/net/AdDataItem;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    :cond_f
    return-void
.end method
