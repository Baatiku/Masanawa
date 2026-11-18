.class public final Lteam/opay/pay/settings/profile/ProfileHomeActivity;
.super Lteam/opay/pay/settings/profile/Hilt_ProfileHomeActivity;
.source "ProfileHomeActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/settings/profile/ProfileHomeActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001eB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0003R\u001b\u0010\u000f\u001a\u00020\n8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000eR\u001b\u0010\u0014\u001a\u00020\u00108BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u000c\u001a\u0004\u0008\u0012\u0010\u0013R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001f"
    }
    d2 = {
        "Lteam/opay/pay/settings/profile/ProfileHomeActivity;",
        "Lteam/opay/pay/android/BaseActivity;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "F",
        "Lvf;",
        "e",
        "Lid8;",
        "H",
        "()Lvf;",
        "viewBinding",
        "Lteam/opay/pay/settings/profile/ProfileViewModel;",
        "f",
        "G",
        "()Lteam/opay/pay/settings/profile/ProfileViewModel;",
        "profileViewModel",
        "Lteam/opay/pay/settings/profile/ProfilePhotoFragment;",
        "g",
        "Lteam/opay/pay/settings/profile/ProfilePhotoFragment;",
        "photoFragment",
        "Lteam/opay/pay/settings/profile/ProfileHomeFragment;",
        "h",
        "Lteam/opay/pay/settings/profile/ProfileHomeFragment;",
        "homeFragment",
        "i",
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
.field public static final i:Lteam/opay/pay/settings/profile/ProfileHomeActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final e:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Lteam/opay/pay/settings/profile/ProfilePhotoFragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h:Lteam/opay/pay/settings/profile/ProfileHomeFragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/settings/profile/ProfileHomeActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/settings/profile/ProfileHomeActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/settings/profile/ProfileHomeActivity;->i:Lteam/opay/pay/settings/profile/ProfileHomeActivity$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->activity_profle_home:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/settings/profile/Hilt_ProfileHomeActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lr0c;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lr0c;-><init>(Lteam/opay/pay/settings/profile/ProfileHomeActivity;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lteam/opay/pay/settings/profile/ProfileHomeActivity;->e:Lid8;

    .line 16
    .line 17
    new-instance v0, Lteam/opay/pay/settings/profile/ProfileHomeActivity$special$$inlined$viewModels$default$1;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lteam/opay/pay/settings/profile/ProfileHomeActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 23
    .line 24
    const-class v2, Lteam/opay/pay/settings/profile/ProfileViewModel;

    .line 25
    .line 26
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    new-instance v3, Lteam/opay/pay/settings/profile/ProfileHomeActivity$special$$inlined$viewModels$default$2;

    .line 31
    .line 32
    invoke-direct {v3, p0}, Lteam/opay/pay/settings/profile/ProfileHomeActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 33
    .line 34
    .line 35
    new-instance v4, Lteam/opay/pay/settings/profile/ProfileHomeActivity$special$$inlined$viewModels$default$3;

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    invoke-direct {v4, v5, p0}, Lteam/opay/pay/settings/profile/ProfileHomeActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lteam/opay/pay/settings/profile/ProfileHomeActivity;->f:Lid8;

    .line 45
    .line 46
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/settings/profile/ProfileHomeActivity;Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/settings/profile/ProfileHomeActivity;->K(Lteam/opay/pay/settings/profile/ProfileHomeActivity;Landroid/net/Uri;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic B(Lteam/opay/pay/settings/profile/ProfileHomeActivity;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/settings/profile/ProfileHomeActivity;->J(Lteam/opay/pay/settings/profile/ProfileHomeActivity;Ljava/lang/Boolean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic C(Lteam/opay/pay/settings/profile/ProfileHomeActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/settings/profile/ProfileHomeActivity;->L(Lteam/opay/pay/settings/profile/ProfileHomeActivity;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic D(Lteam/opay/pay/settings/profile/ProfileHomeActivity;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/settings/profile/ProfileHomeActivity;->I(Lteam/opay/pay/settings/profile/ProfileHomeActivity;Ljava/lang/Integer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic E(Lteam/opay/pay/settings/profile/ProfileHomeActivity;)Lvf;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/settings/profile/ProfileHomeActivity;->M(Lteam/opay/pay/settings/profile/ProfileHomeActivity;)Lvf;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final I(Lteam/opay/pay/settings/profile/ProfileHomeActivity;Ljava/lang/Integer;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_8

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_4

    .line 14
    .line 15
    :cond_0
    const-string v0, ""

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_3

    .line 25
    .line 26
    sget-object p1, Lteam/opay/pay/settings/profile/ProfilePhotoFragment;->v:Lteam/opay/pay/settings/profile/ProfilePhotoFragment$Companion;

    .line 27
    .line 28
    invoke-virtual {p0}, Lteam/opay/pay/settings/profile/ProfileHomeActivity;->G()Lteam/opay/pay/settings/profile/ProfileViewModel;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lteam/opay/pay/settings/profile/ProfileViewModel;->x()Landroidx/lifecycle/LiveData;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Ljava/lang/String;

    .line 41
    .line 42
    if-nez v1, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    move-object v0, v1

    .line 46
    :goto_0
    invoke-virtual {p1, v0}, Lteam/opay/pay/settings/profile/ProfilePhotoFragment$Companion;->a(Ljava/lang/String;)Lteam/opay/pay/settings/profile/ProfilePhotoFragment;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, Lteam/opay/pay/settings/profile/ProfileHomeActivity;->g:Lteam/opay/pay/settings/profile/ProfilePhotoFragment;

    .line 51
    .line 52
    sget v0, Lteam/opay/pay/R$id;->container:I

    .line 53
    .line 54
    invoke-static {p0, v0, p1}, Lteam/opay/pay/base/FragmentKt;->v(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 55
    .line 56
    .line 57
    goto :goto_4

    .line 58
    :cond_3
    :goto_1
    if-nez p1, :cond_4

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    const/4 v2, 0x1

    .line 66
    if-ne v1, v2, :cond_6

    .line 67
    .line 68
    sget p1, Lteam/opay/pay/R$id;->container:I

    .line 69
    .line 70
    sget-object v1, Lteam/opay/pay/settings/profile/ProfileNicknameFragment;->r:Lteam/opay/pay/settings/profile/ProfileNicknameFragment$Companion;

    .line 71
    .line 72
    invoke-virtual {p0}, Lteam/opay/pay/settings/profile/ProfileHomeActivity;->G()Lteam/opay/pay/settings/profile/ProfileViewModel;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v2}, Lteam/opay/pay/settings/profile/ProfileViewModel;->B()Landroidx/lifecycle/LiveData;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Ljava/lang/String;

    .line 85
    .line 86
    if-nez v2, :cond_5

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_5
    move-object v0, v2

    .line 90
    :goto_2
    invoke-virtual {v1, v0}, Lteam/opay/pay/settings/profile/ProfileNicknameFragment$Companion;->a(Ljava/lang/String;)Lteam/opay/pay/settings/profile/ProfileNicknameFragment;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-static {p0, p1, v0}, Lteam/opay/pay/base/FragmentKt;->v(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 95
    .line 96
    .line 97
    goto :goto_4

    .line 98
    :cond_6
    :goto_3
    if-nez p1, :cond_7

    .line 99
    .line 100
    goto :goto_4

    .line 101
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    const/4 v0, 0x2

    .line 106
    if-ne p1, v0, :cond_8

    .line 107
    .line 108
    sget p1, Lteam/opay/pay/R$id;->container:I

    .line 109
    .line 110
    sget-object v0, Lteam/opay/pay/settings/profile/ProfileCropFragment;->s:Lteam/opay/pay/settings/profile/ProfileCropFragment$Companion;

    .line 111
    .line 112
    invoke-virtual {v0}, Lteam/opay/pay/settings/profile/ProfileCropFragment$Companion;->a()Lteam/opay/pay/settings/profile/ProfileCropFragment;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-static {p0, p1, v0}, Lteam/opay/pay/base/FragmentKt;->v(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 117
    .line 118
    .line 119
    :cond_8
    :goto_4
    return-void
.end method

.method public static final J(Lteam/opay/pay/settings/profile/ProfileHomeActivity;Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/settings/profile/ProfileHomeActivity;->H()Lvf;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lvf;->c:Lteam/opay/core/android/views/PulseLoaderView;

    .line 6
    .line 7
    const-string v0, "loading"

    .line 8
    .line 9
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-static {p0, p1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static final K(Lteam/opay/pay/settings/profile/ProfileHomeActivity;Landroid/net/Uri;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/profile/ProfileHomeActivity;->g:Lteam/opay/pay/settings/profile/ProfilePhotoFragment;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lteam/opay/pay/settings/profile/ProfilePhotoFragment;->e0(Landroid/net/Uri;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object p0, p0, Lteam/opay/pay/settings/profile/ProfileHomeActivity;->h:Lteam/opay/pay/settings/profile/ProfileHomeFragment;

    .line 12
    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lteam/opay/pay/settings/profile/ProfileHomeFragment;->R(Landroid/net/Uri;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public static final L(Lteam/opay/pay/settings/profile/ProfileHomeActivity;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "avatar_key"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    const/4 p1, -0x1

    .line 14
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static final M(Lteam/opay/pay/settings/profile/ProfileHomeActivity;)Lvf;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lvf;->inflate(Landroid/view/LayoutInflater;)Lvf;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public final F()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    invoke-virtual {p0}, Lteam/opay/pay/settings/profile/ProfileHomeActivity;->G()Lteam/opay/pay/settings/profile/ProfileViewModel;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "nickname"

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-string v3, ""

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    move-object v2, v3

    .line 22
    :cond_0
    invoke-virtual {v1, v2}, Lteam/opay/pay/settings/profile/ProfileViewModel;->N(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lteam/opay/pay/settings/profile/ProfileHomeActivity;->G()Lteam/opay/pay/settings/profile/ProfileViewModel;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "avatarUrl"

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-nez v2, :cond_1

    .line 36
    .line 37
    move-object v2, v3

    .line 38
    :cond_1
    const-string v4, "avatarThumbnailUrl"

    .line 39
    .line 40
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    if-nez v4, :cond_2

    .line 45
    .line 46
    move-object v4, v3

    .line 47
    :cond_2
    invoke-virtual {v1, v2, v4}, Lteam/opay/pay/settings/profile/ProfileViewModel;->M(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lteam/opay/pay/settings/profile/ProfileHomeActivity;->G()Lteam/opay/pay/settings/profile/ProfileViewModel;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const-string v2, "gender"

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-nez v0, :cond_3

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    move-object v3, v0

    .line 64
    :goto_0
    invoke-virtual {v1, v3}, Lteam/opay/pay/settings/profile/ProfileViewModel;->I(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_4
    return-void
.end method

.method public final G()Lteam/opay/pay/settings/profile/ProfileViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/profile/ProfileHomeActivity;->f:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/settings/profile/ProfileViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public H()Lvf;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/profile/ProfileHomeActivity;->e:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lvf;

    .line 8
    .line 9
    return-object v0
.end method

.method public bridge synthetic getViewBinding()Lxyf;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/settings/profile/ProfileHomeActivity;->H()Lvf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lteam/opay/pay/settings/profile/Hilt_ProfileHomeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/pay/settings/profile/ProfileHomeActivity;->F()V

    .line 5
    .line 6
    .line 7
    sget-object p1, Lteam/opay/pay/settings/profile/ProfilePhotoFragment;->v:Lteam/opay/pay/settings/profile/ProfilePhotoFragment$Companion;

    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/pay/settings/profile/ProfileHomeActivity;->G()Lteam/opay/pay/settings/profile/ProfileViewModel;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lteam/opay/pay/settings/profile/ProfileViewModel;->x()Landroidx/lifecycle/LiveData;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/lang/String;

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    const-string v0, ""

    .line 26
    .line 27
    :cond_0
    invoke-virtual {p1, v0}, Lteam/opay/pay/settings/profile/ProfilePhotoFragment$Companion;->a(Ljava/lang/String;)Lteam/opay/pay/settings/profile/ProfilePhotoFragment;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lteam/opay/pay/settings/profile/ProfileHomeActivity;->g:Lteam/opay/pay/settings/profile/ProfilePhotoFragment;

    .line 32
    .line 33
    sget v0, Lteam/opay/pay/R$id;->container:I

    .line 34
    .line 35
    invoke-static {p0, v0, p1}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lteam/opay/pay/settings/profile/ProfileHomeActivity;->G()Lteam/opay/pay/settings/profile/ProfileViewModel;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Lteam/opay/pay/settings/profile/ProfileViewModel;->E()Landroidx/lifecycle/LiveData;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    new-instance v0, Ln0c;

    .line 47
    .line 48
    invoke-direct {v0, p0}, Ln0c;-><init>(Lteam/opay/pay/settings/profile/ProfileHomeActivity;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lteam/opay/pay/settings/profile/ProfileHomeActivity;->G()Lteam/opay/pay/settings/profile/ProfileViewModel;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Lteam/opay/pay/settings/profile/ProfileViewModel;->D()Landroidx/lifecycle/LiveData;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    new-instance v0, Lo0c;

    .line 63
    .line 64
    invoke-direct {v0, p0}, Lo0c;-><init>(Lteam/opay/pay/settings/profile/ProfileHomeActivity;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lteam/opay/pay/settings/profile/ProfileHomeActivity;->G()Lteam/opay/pay/settings/profile/ProfileViewModel;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1}, Lteam/opay/pay/settings/profile/ProfileViewModel;->C()Landroidx/lifecycle/LiveData;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    new-instance v0, Lp0c;

    .line 79
    .line 80
    invoke-direct {v0, p0}, Lp0c;-><init>(Lteam/opay/pay/settings/profile/ProfileHomeActivity;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lteam/opay/pay/settings/profile/ProfileHomeActivity;->G()Lteam/opay/pay/settings/profile/ProfileViewModel;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p1}, Lteam/opay/pay/settings/profile/ProfileViewModel;->w()Landroidx/lifecycle/LiveData;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    new-instance v0, Lq0c;

    .line 95
    .line 96
    invoke-direct {v0, p0}, Lq0c;-><init>(Lteam/opay/pay/settings/profile/ProfileHomeActivity;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 100
    .line 101
    .line 102
    sget-object p1, Lx7b;->a:Lx7b;

    .line 103
    .line 104
    sget-object v0, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 105
    .line 106
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager;->k()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    const-string v1, "kyc"

    .line 115
    .line 116
    invoke-static {v1, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    const/4 v1, 0x1

    .line 121
    new-array v1, v1, [Lkotlin/Pair;

    .line 122
    .line 123
    const/4 v2, 0x0

    .line 124
    aput-object v0, v1, v2

    .line 125
    .line 126
    const-string v0, "account_photo_page_show"

    .line 127
    .line 128
    invoke-virtual {p1, v0, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 129
    .line 130
    .line 131
    return-void
.end method
