.class public final Lteam/opay/pay/email/EmailModifyActivity;
.super Lteam/opay/pay/email/Hilt_EmailModifyActivity;
.source "EmailModifyActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/email/EmailModifyActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 \u00102\u00020\u0001:\u0001\u0011B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u0019\u0010\u0008\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0014\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u001b\u0010\u000f\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0012"
    }
    d2 = {
        "Lteam/opay/pay/email/EmailModifyActivity;",
        "Lteam/opay/pay/android/NoBindingActivity;",
        "<init>",
        "()V",
        "",
        "onBackPressed",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Lteam/opay/pay/email/VerifyEmailViewModel;",
        "g",
        "Lid8;",
        "B",
        "()Lteam/opay/pay/email/VerifyEmailViewModel;",
        "viewModel",
        "h",
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
.field public static final h:Lteam/opay/pay/email/EmailModifyActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final i:I


# instance fields
.field public final g:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/email/EmailModifyActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/email/EmailModifyActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/email/EmailModifyActivity;->h:Lteam/opay/pay/email/EmailModifyActivity$Companion;

    .line 8
    .line 9
    const/16 v0, 0x464

    .line 10
    .line 11
    sput v0, Lteam/opay/pay/email/EmailModifyActivity;->i:I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->omain_email_modify_activity:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/email/Hilt_EmailModifyActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/pay/email/EmailModifyActivity$special$$inlined$viewModels$default$1;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lteam/opay/pay/email/EmailModifyActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 12
    .line 13
    const-class v2, Lteam/opay/pay/email/VerifyEmailViewModel;

    .line 14
    .line 15
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v3, Lteam/opay/pay/email/EmailModifyActivity$special$$inlined$viewModels$default$2;

    .line 20
    .line 21
    invoke-direct {v3, p0}, Lteam/opay/pay/email/EmailModifyActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 22
    .line 23
    .line 24
    new-instance v4, Lteam/opay/pay/email/EmailModifyActivity$special$$inlined$viewModels$default$3;

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    invoke-direct {v4, v5, p0}, Lteam/opay/pay/email/EmailModifyActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lteam/opay/pay/email/EmailModifyActivity;->g:Lid8;

    .line 34
    .line 35
    return-void
.end method

.method public static final synthetic A()I
    .locals 1

    .line 1
    sget v0, Lteam/opay/pay/email/EmailModifyActivity;->i:I

    .line 2
    .line 3
    return v0
.end method


# virtual methods
.method public final B()Lteam/opay/pay/email/VerifyEmailViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/email/EmailModifyActivity;->g:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/email/VerifyEmailViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public onBackPressed()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "data"

    .line 7
    .line 8
    const-string v2, "cancel"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    const/4 v1, -0x1

    .line 16
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 17
    .line 18
    .line 19
    invoke-super {p0}, Lteam/opay/core/android/InjectableActivity;->onBackPressed()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lteam/opay/pay/email/Hilt_EmailModifyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-static {v0, v1}, Lm8g;->b(Landroid/view/Window;Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "from"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    const-string v0, ""

    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/email/EmailModifyActivity;->B()Lteam/opay/pay/email/VerifyEmailViewModel;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const-string v3, "event"

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lteam/opay/pay/account/verify/VerifyEvent;

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Lteam/opay/pay/email/VerifyEmailViewModel;->t(Lteam/opay/pay/account/verify/VerifyEvent;)V

    .line 43
    .line 44
    .line 45
    if-nez p1, :cond_1

    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/FragmentTransaction;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    sget v1, Lteam/opay/pay/R$id;->container:I

    .line 56
    .line 57
    sget-object v2, Lteam/opay/pay/email/EmailModifyFragment;->t:Lteam/opay/pay/email/EmailModifyFragment$Companion;

    .line 58
    .line 59
    const/4 v3, 0x2

    .line 60
    const/4 v4, 0x0

    .line 61
    invoke-static {v2, v0, v4, v3, v4}, Lteam/opay/pay/email/EmailModifyFragment$Companion;->b(Lteam/opay/pay/email/EmailModifyFragment$Companion;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lteam/opay/pay/email/EmailModifyFragment;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->s(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 70
    .line 71
    .line 72
    :cond_1
    return-void
.end method
