.class public final Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment;
.super Lteam/opay/pay/onboarding/secondary/Hilt_SecondaryOtpFragment;
.source "SecondaryOtpFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 &2\u00020\u0001:\u0001\'B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J!\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u0003J\u000f\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ1\u0010\u0015\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u000f2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u001b\u0010\u001c\u001a\u00020\u00178FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001bR\u0014\u0010 \u001a\u00020\u001d8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u001c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\"0!8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008#\u0010$\u00a8\u0006("
    }
    d2 = {
        "Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment;",
        "Lteam/opay/pay/onboarding/tabs/SignUpOtpFragment;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "addObserver",
        "",
        "w1",
        "()Ljava/lang/Boolean;",
        "",
        "otp",
        "mobile",
        "inviteCode",
        "Lteam/opay/pay/account/otp/OtpChannel;",
        "channel",
        "B1",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/account/otp/OtpChannel;)V",
        "Lteam/opay/pay/onboarding/secondary/SecondaryOtpViewModel;",
        "P",
        "Lid8;",
        "O1",
        "()Lteam/opay/pay/onboarding/secondary/SecondaryOtpViewModel;",
        "secondaryViewModel",
        "Lteam/opay/core/api/graphql/ReleaseCheckReq;",
        "Q",
        "Lteam/opay/core/api/graphql/ReleaseCheckReq;",
        "req",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "Landroid/content/Intent;",
        "R",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "activityResultLauncher",
        "S",
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
.field public static final S:Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final P:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Q:Lteam/opay/core/api/graphql/ReleaseCheckReq;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public R:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment;->S:Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/onboarding/secondary/Hilt_SecondaryOtpFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment$special$$inlined$viewModels$default$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 7
    .line 8
    .line 9
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 10
    .line 11
    new-instance v2, Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment$special$$inlined$viewModels$default$2;

    .line 12
    .line 13
    invoke-direct {v2, v0}, Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v2}, Lkotlin/c;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-class v1, Lteam/opay/pay/onboarding/secondary/SecondaryOtpViewModel;

    .line 21
    .line 22
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    new-instance v2, Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment$special$$inlined$viewModels$default$3;

    .line 27
    .line 28
    invoke-direct {v2, v0}, Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment$special$$inlined$viewModels$default$3;-><init>(Lid8;)V

    .line 29
    .line 30
    .line 31
    new-instance v3, Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment$special$$inlined$viewModels$default$4;

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-direct {v3, v4, v0}, Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lid8;)V

    .line 35
    .line 36
    .line 37
    new-instance v4, Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment$special$$inlined$viewModels$default$5;

    .line 38
    .line 39
    invoke-direct {v4, p0, v0}, Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lid8;)V

    .line 40
    .line 41
    .line 42
    invoke-static {p0, v1, v2, v3, v4}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment;->P:Lid8;

    .line 47
    .line 48
    new-instance v0, Lteam/opay/core/api/graphql/ReleaseCheckReq;

    .line 49
    .line 50
    const/16 v7, 0x1f

    .line 51
    .line 52
    const/4 v8, 0x0

    .line 53
    const/4 v2, 0x0

    .line 54
    const/4 v3, 0x0

    .line 55
    const/4 v4, 0x0

    .line 56
    const/4 v5, 0x0

    .line 57
    const/4 v6, 0x0

    .line 58
    move-object v1, v0

    .line 59
    invoke-direct/range {v1 .. v8}, Lteam/opay/core/api/graphql/ReleaseCheckReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment;->Q:Lteam/opay/core/api/graphql/ReleaseCheckReq;

    .line 63
    .line 64
    return-void
.end method

.method public static synthetic F1(Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment;Ljava/lang/String;Lteam/opay/pay/module/dialog/OtpStateDialogFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment;->N1(Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment;Ljava/lang/String;Lteam/opay/pay/module/dialog/OtpStateDialogFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic G1(Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment;->L1(Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic H1(Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment;->M1(Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic I1(Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment;->P1(Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment;Landroidx/activity/result/ActivityResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic J1(Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment;->K1(Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment;Ljava/lang/Boolean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final K1(Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/tabs/SignUpOtpFragment;->C0()Lteam/opay/pay/onboarding/tabs/OtpViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Lteam/opay/pay/onboarding/tabs/OtpViewModel;->v(Z)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final L1(Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ldi6;

    .line 6
    .line 7
    iget-object v0, v0, Ldi6;->e:Landroid/widget/Button;

    .line 8
    .line 9
    const-string v1, "confirmButton"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/tabs/SignUpOtpFragment;->E0()Lteam/opay/pay/module/dialog/OtpStateDialogFragment;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    sget-object v0, Lteam/opay/core/android/arch/Status;->ERROR:Lteam/opay/core/android/arch/Status;

    .line 24
    .line 25
    invoke-virtual {p0, v0, p1}, Lteam/opay/pay/module/dialog/OtpStateDialogFragment;->T(Lteam/opay/core/android/arch/Status;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    .line 30
    return-object p0
.end method

.method public static final M1(Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/tabs/SignUpOtpFragment;->E0()Lteam/opay/pay/module/dialog/OtpStateDialogFragment;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v1, Lteam/opay/core/android/arch/Status;->SUCCESS:Lteam/opay/core/android/arch/Status;

    .line 8
    .line 9
    sget v2, Lteam/opay/pay/R$string;->osdk_otp_success_desc:I

    .line 10
    .line 11
    invoke-static {v2}, Ljmf;->k(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v0, v1, v2}, Lteam/opay/pay/module/dialog/OtpStateDialogFragment;->T(Lteam/opay/core/android/arch/Status;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Ly6d;

    .line 19
    .line 20
    invoke-direct {v1, p0, p1, v0}, Ly6d;-><init>(Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment;Ljava/lang/String;Lteam/opay/pay/module/dialog/OtpStateDialogFragment;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lteam/opay/pay/module/dialog/OtpStateDialogFragment;->S(Lkotlin/jvm/functions/Function0;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 27
    .line 28
    return-object p0
.end method

.method public static final N1(Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment;Ljava/lang/String;Lteam/opay/pay/module/dialog/OtpStateDialogFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment;->Q:Lteam/opay/core/api/graphql/ReleaseCheckReq;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/core/api/graphql/ReleaseCheckReq;->setRefreshToken(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lteam/opay/pay/onboarding/secondary/SecondaryBoardingActivity;->j:Lteam/opay/pay/onboarding/secondary/SecondaryBoardingActivity$Companion;

    .line 7
    .line 8
    invoke-virtual {p2}, Lteam/opay/core/base/BaseDialogFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    iget-object v0, p0, Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment;->R:Landroidx/activity/result/ActivityResultLauncher;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const-string v0, "activityResultLauncher"

    .line 17
    .line 18
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    :cond_0
    iget-object p0, p0, Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment;->Q:Lteam/opay/core/api/graphql/ReleaseCheckReq;

    .line 23
    .line 24
    invoke-virtual {p1, p2, v0, p0}, Lteam/opay/pay/onboarding/secondary/SecondaryBoardingActivity$Companion;->a(Landroid/app/Activity;Landroidx/activity/result/ActivityResultLauncher;Lteam/opay/core/api/graphql/ReleaseCheckReq;)V

    .line 25
    .line 26
    .line 27
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 28
    .line 29
    return-object p0
.end method

.method public static final P1(Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 5

    .line 1
    const-string v0, "result"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, -0x1

    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    sget-object p1, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 23
    .line 24
    invoke-virtual {p1}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1, v4, v2, v3}, Lteam/opay/core/account/AccountInfoManager;->e(Lteam/opay/core/account/AccountInfoManager;ZILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/tabs/SignUpOtpFragment;->d1()V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    const-string v0, "key_result_action"

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    move-object p1, v3

    .line 49
    :goto_0
    const-string v0, "result_action_login"

    .line 50
    .line 51
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_4

    .line 56
    .line 57
    sget-object p1, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 58
    .line 59
    invoke-virtual {p1}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {p1, v4, v2, v3}, Lteam/opay/core/account/AccountInfoManager;->e(Lteam/opay/core/account/AccountInfoManager;ZILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    new-instance p1, Lteam/opay/pay/pin/LoginInputPswFragment;

    .line 67
    .line 68
    invoke-direct {p1}, Lteam/opay/pay/pin/LoginInputPswFragment;-><init>()V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment;->Q:Lteam/opay/core/api/graphql/ReleaseCheckReq;

    .line 72
    .line 73
    invoke-virtual {v0}, Lteam/opay/core/api/graphql/ReleaseCheckReq;->getMobile()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    if-nez v0, :cond_3

    .line 78
    .line 79
    const-string v0, ""

    .line 80
    .line 81
    :cond_3
    invoke-static {v0}, Loj2;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {p1, v0}, Lteam/opay/pay/pin/LoginInputPswFragment;->T1(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v4}, Lteam/opay/pay/pin/LoginInputPswFragment;->Q1(Z)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    sget v0, Lteam/opay/pay/R$id;->onboarding_screen:I

    .line 96
    .line 97
    invoke-static {p0, v0, p1}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_4
    const-string v0, "result_action_login_input"

    .line 102
    .line 103
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-eqz p1, :cond_5

    .line 108
    .line 109
    sget-object p1, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 110
    .line 111
    invoke-virtual {p1}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-static {p1, v4, v2, v3}, Lteam/opay/core/account/AccountInfoManager;->e(Lteam/opay/core/account/AccountInfoManager;ZILjava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/tabs/SignUpOtpFragment;->x0()Lteam/opay/pay/onboarding/OnboardingViewModel;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    sget-object p1, Lteam/opay/pay/onboarding/OnboardingScreen;->LOGIN_WITH_PASSWORD:Lteam/opay/pay/onboarding/OnboardingScreen;

    .line 123
    .line 124
    invoke-virtual {p0, p1}, Lteam/opay/pay/onboarding/OnboardingViewModel;->d0(Lteam/opay/pay/onboarding/OnboardingScreen;)V

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_5
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 129
    .line 130
    .line 131
    :goto_1
    return-void
.end method


# virtual methods
.method public B1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/account/otp/OtpChannel;)V
    .locals 11
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lteam/opay/pay/account/otp/OtpChannel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "otp"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "mobile"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "inviteCode"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/tabs/SignUpOtpFragment;->C0()Lteam/opay/pay/onboarding/tabs/OtpViewModel;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lteam/opay/pay/onboarding/tabs/OtpViewModel;->u()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/tabs/SignUpOtpFragment;->p1()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment;->O1()Lteam/opay/pay/onboarding/secondary/SecondaryOtpViewModel;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const-string v0, "getViewLifecycleOwner(...)"

    .line 39
    .line 40
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    sget-object v0, Lteam/opay/core/api/Country;->NIGERIA:Lteam/opay/core/api/Country;

    .line 44
    .line 45
    invoke-static {v0, p2}, Lxob;->h(Lteam/opay/core/api/Country;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/tabs/SignUpOtpFragment;->B0()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    const/16 v9, 0x40

    .line 54
    .line 55
    const/4 v10, 0x0

    .line 56
    const/4 v8, 0x0

    .line 57
    move-object v4, p1

    .line 58
    move-object v5, p3

    .line 59
    move-object v7, p4

    .line 60
    invoke-static/range {v1 .. v10}, Lteam/opay/pay/onboarding/secondary/SecondaryOtpViewModel;->w(Lteam/opay/pay/onboarding/secondary/SecondaryOtpViewModel;Lag8;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/account/otp/OtpChannel;Ljava/lang/String;ILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment;->Q:Lteam/opay/core/api/graphql/ReleaseCheckReq;

    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    if-eqz p4, :cond_1

    .line 67
    .line 68
    invoke-virtual {p4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p4

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    move-object p4, v1

    .line 74
    :goto_0
    if-nez p4, :cond_2

    .line 75
    .line 76
    const-string p4, ""

    .line 77
    .line 78
    :cond_2
    invoke-virtual {p1, p4}, Lteam/opay/core/api/graphql/ReleaseCheckReq;->setChannel(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, p3}, Lteam/opay/core/api/graphql/ReleaseCheckReq;->setInviteCode(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const-string p3, "CREATE_ACCOUNT"

    .line 85
    .line 86
    invoke-virtual {p1, p3}, Lteam/opay/core/api/graphql/ReleaseCheckReq;->setScene(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-static {v0, p2}, Lxob;->h(Lteam/opay/core/api/Country;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-virtual {p1, p2}, Lteam/opay/core/api/graphql/ReleaseCheckReq;->setMobile(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v1}, Lteam/opay/pay/onboarding/tabs/SignUpOtpFragment;->o1(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public final O1()Lteam/opay/pay/onboarding/secondary/SecondaryOtpViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment;->P:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/onboarding/secondary/SecondaryOtpViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public addObserver()V
    .locals 5

    .line 1
    invoke-super {p0}, Lteam/opay/pay/onboarding/tabs/SignUpOtpFragment;->addObserver()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment;->O1()Lteam/opay/pay/onboarding/secondary/SecondaryOtpViewModel;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lteam/opay/pay/onboarding/secondary/SecondaryOtpViewModel;->t()Landroidx/lifecycle/MutableLiveData;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    new-instance v3, Lv6d;

    .line 17
    .line 18
    invoke-direct {v3, p0}, Lv6d;-><init>(Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment;)V

    .line 19
    .line 20
    .line 21
    new-instance v4, Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment$a;

    .line 22
    .line 23
    invoke-direct {v4, v3}, Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2, v4}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lteam/opay/pay/onboarding/secondary/SecondaryOtpViewModel;->s()Landroidx/lifecycle/MutableLiveData;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    new-instance v3, Lw6d;

    .line 38
    .line 39
    invoke-direct {v3, p0}, Lw6d;-><init>(Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment;)V

    .line 40
    .line 41
    .line 42
    new-instance v4, Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment$a;

    .line 43
    .line 44
    invoke-direct {v4, v3}, Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2, v4}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lteam/opay/pay/onboarding/secondary/SecondaryOtpViewModel;->u()Landroidx/lifecycle/MutableLiveData;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    new-instance v2, Lx6d;

    .line 59
    .line 60
    invoke-direct {v2, p0}, Lx6d;-><init>(Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment;)V

    .line 61
    .line 62
    .line 63
    new-instance v3, Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment$a;

    .line 64
    .line 65
    invoke-direct {v3, v2}, Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

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
    invoke-super {p0, p1, p2}, Lteam/opay/pay/onboarding/tabs/SignUpOtpFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 10
    .line 11
    invoke-direct {p1}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance p2, Lu6d;

    .line 15
    .line 16
    invoke-direct {p2, p0}, Lu6d;-><init>(Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Lag;)Landroidx/activity/result/ActivityResultLauncher;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lteam/opay/pay/onboarding/secondary/SecondaryOtpFragment;->R:Landroidx/activity/result/ActivityResultLauncher;

    .line 24
    .line 25
    return-void
.end method

.method public w1()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method
