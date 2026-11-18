.class public final Lteam/opay/pay/onboarding/secondary/SecondaryBoardingActivity;
.super Lteam/opay/pay/onboarding/secondary/Hilt_SecondaryBoardingActivity;
.source "SecondaryBoardingActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/onboarding/secondary/SecondaryBoardingActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001dB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\"\u0010\u0010\u001a\u00020\t8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001b\u0010\u0016\u001a\u00020\u00118BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\u001b\u0010\u001b\u001a\u00020\u00178BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0013\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001e"
    }
    d2 = {
        "Lteam/opay/pay/onboarding/secondary/SecondaryBoardingActivity;",
        "Lteam/opay/pay/android/NoBindingActivity;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "",
        "g",
        "Z",
        "getNeedPaddingTop",
        "()Z",
        "setNeedPaddingTop",
        "(Z)V",
        "needPaddingTop",
        "Lteam/opay/core/api/graphql/ReleaseCheckReq;",
        "h",
        "Lid8;",
        "B",
        "()Lteam/opay/core/api/graphql/ReleaseCheckReq;",
        "releaseCheckReq",
        "Lteam/opay/pay/onboarding/secondary/SecondaryBoardingViewModel;",
        "i",
        "C",
        "()Lteam/opay/pay/onboarding/secondary/SecondaryBoardingViewModel;",
        "secondaryViewModel",
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
.field public static final j:Lteam/opay/pay/onboarding/secondary/SecondaryBoardingActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public g:Z

.field public final h:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/onboarding/secondary/SecondaryBoardingActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/onboarding/secondary/SecondaryBoardingActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/onboarding/secondary/SecondaryBoardingActivity;->j:Lteam/opay/pay/onboarding/secondary/SecondaryBoardingActivity$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->activity_fragment_container:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/onboarding/secondary/Hilt_SecondaryBoardingActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Li6d;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Li6d;-><init>(Lteam/opay/pay/onboarding/secondary/SecondaryBoardingActivity;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lteam/opay/pay/onboarding/secondary/SecondaryBoardingActivity;->h:Lid8;

    .line 16
    .line 17
    new-instance v0, Lteam/opay/pay/onboarding/secondary/SecondaryBoardingActivity$special$$inlined$viewModels$default$1;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lteam/opay/pay/onboarding/secondary/SecondaryBoardingActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 23
    .line 24
    const-class v2, Lteam/opay/pay/onboarding/secondary/SecondaryBoardingViewModel;

    .line 25
    .line 26
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    new-instance v3, Lteam/opay/pay/onboarding/secondary/SecondaryBoardingActivity$special$$inlined$viewModels$default$2;

    .line 31
    .line 32
    invoke-direct {v3, p0}, Lteam/opay/pay/onboarding/secondary/SecondaryBoardingActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 33
    .line 34
    .line 35
    new-instance v4, Lteam/opay/pay/onboarding/secondary/SecondaryBoardingActivity$special$$inlined$viewModels$default$3;

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    invoke-direct {v4, v5, p0}, Lteam/opay/pay/onboarding/secondary/SecondaryBoardingActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lteam/opay/pay/onboarding/secondary/SecondaryBoardingActivity;->i:Lid8;

    .line 45
    .line 46
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/onboarding/secondary/SecondaryBoardingActivity;)Lteam/opay/core/api/graphql/ReleaseCheckReq;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/onboarding/secondary/SecondaryBoardingActivity;->D(Lteam/opay/pay/onboarding/secondary/SecondaryBoardingActivity;)Lteam/opay/core/api/graphql/ReleaseCheckReq;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final D(Lteam/opay/pay/onboarding/secondary/SecondaryBoardingActivity;)Lteam/opay/core/api/graphql/ReleaseCheckReq;
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-string v0, "key_release_check_req"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lteam/opay/core/api/graphql/ReleaseCheckReq;

    .line 14
    .line 15
    if-nez p0, :cond_1

    .line 16
    .line 17
    :cond_0
    new-instance p0, Lteam/opay/core/api/graphql/ReleaseCheckReq;

    .line 18
    .line 19
    const/16 v6, 0x1f

    .line 20
    .line 21
    const/4 v7, 0x0

    .line 22
    const/4 v1, 0x0

    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x0

    .line 25
    const/4 v4, 0x0

    .line 26
    const/4 v5, 0x0

    .line 27
    move-object v0, p0

    .line 28
    invoke-direct/range {v0 .. v7}, Lteam/opay/core/api/graphql/ReleaseCheckReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-object p0
.end method


# virtual methods
.method public final B()Lteam/opay/core/api/graphql/ReleaseCheckReq;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/onboarding/secondary/SecondaryBoardingActivity;->h:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/core/api/graphql/ReleaseCheckReq;

    .line 8
    .line 9
    return-object v0
.end method

.method public final C()Lteam/opay/pay/onboarding/secondary/SecondaryBoardingViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/onboarding/secondary/SecondaryBoardingActivity;->i:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/onboarding/secondary/SecondaryBoardingViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public getNeedPaddingTop()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/onboarding/secondary/SecondaryBoardingActivity;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lteam/opay/pay/onboarding/secondary/Hilt_SecondaryBoardingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/secondary/SecondaryBoardingActivity;->C()Lteam/opay/pay/onboarding/secondary/SecondaryBoardingViewModel;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/secondary/SecondaryBoardingActivity;->B()Lteam/opay/core/api/graphql/ReleaseCheckReq;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Lteam/opay/pay/onboarding/secondary/SecondaryBoardingViewModel;->z(Lteam/opay/core/api/graphql/ReleaseCheckReq;)V

    .line 13
    .line 14
    .line 15
    sget p1, Lteam/opay/pay/R$id;->fragment_container:I

    .line 16
    .line 17
    sget-object v0, Lteam/opay/pay/onboarding/secondary/SecondaryContainerFragment;->p:Lteam/opay/pay/onboarding/secondary/SecondaryContainerFragment$Companion;

    .line 18
    .line 19
    invoke-virtual {v0}, Lteam/opay/pay/onboarding/secondary/SecondaryContainerFragment$Companion;->a()Lteam/opay/pay/onboarding/secondary/SecondaryContainerFragment;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {p0, p1, v0}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public setNeedPaddingTop(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/onboarding/secondary/SecondaryBoardingActivity;->g:Z

    .line 2
    .line 3
    return-void
.end method
