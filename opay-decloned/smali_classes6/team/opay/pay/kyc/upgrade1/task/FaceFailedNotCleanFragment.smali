.class public final Lteam/opay/pay/kyc/upgrade1/task/FaceFailedNotCleanFragment;
.super Lteam/opay/core/base/BaseFragmentV2;
.source "FaceFailedNotCleanFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/kyc/upgrade1/task/FaceFailedNotCleanFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/base/BaseFragmentV2<",
        "Lqya;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \u001a2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001bB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u001d\u0010\u0011\u001a\u0004\u0018\u00010\u000c8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\u001d\u0010\u0014\u001a\u0004\u0018\u00010\u000c8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u000e\u001a\u0004\u0008\u0013\u0010\u0010R\u001b\u0010\u0019\u001a\u00020\u00158BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u000e\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001c"
    }
    d2 = {
        "Lteam/opay/pay/kyc/upgrade1/task/FaceFailedNotCleanFragment;",
        "Lteam/opay/core/base/BaseFragmentV2;",
        "Lqya;",
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
        "j",
        "Lid8;",
        "getType",
        "()Ljava/lang/String;",
        "type",
        "k",
        "R",
        "imageUrl",
        "Lteam/opay/core/settings/SettingsStorage;",
        "l",
        "getSettingsStorage",
        "()Lteam/opay/core/settings/SettingsStorage;",
        "settingsStorage",
        "m",
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
.field public static final m:Lteam/opay/pay/kyc/upgrade1/task/FaceFailedNotCleanFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final j:Lid8;
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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/kyc/upgrade1/task/FaceFailedNotCleanFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/kyc/upgrade1/task/FaceFailedNotCleanFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/kyc/upgrade1/task/FaceFailedNotCleanFragment;->m:Lteam/opay/pay/kyc/upgrade1/task/FaceFailedNotCleanFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/kyc/upgrade1/task/FaceFailedNotCleanFragment$1;->INSTANCE:Lteam/opay/pay/kyc/upgrade1/task/FaceFailedNotCleanFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/core/base/BaseFragmentV2;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lut5;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lut5;-><init>(Lteam/opay/pay/kyc/upgrade1/task/FaceFailedNotCleanFragment;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lteam/opay/pay/kyc/upgrade1/task/FaceFailedNotCleanFragment;->j:Lid8;

    .line 16
    .line 17
    new-instance v0, Lvt5;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lvt5;-><init>(Lteam/opay/pay/kyc/upgrade1/task/FaceFailedNotCleanFragment;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lteam/opay/pay/kyc/upgrade1/task/FaceFailedNotCleanFragment;->k:Lid8;

    .line 27
    .line 28
    new-instance v0, Lwt5;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lwt5;-><init>(Lteam/opay/pay/kyc/upgrade1/task/FaceFailedNotCleanFragment;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lteam/opay/pay/kyc/upgrade1/task/FaceFailedNotCleanFragment;->l:Lid8;

    .line 38
    .line 39
    return-void
.end method

.method public static synthetic O(Lteam/opay/pay/kyc/upgrade1/task/FaceFailedNotCleanFragment;)Lteam/opay/core/settings/SettingsStorage;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/upgrade1/task/FaceFailedNotCleanFragment;->T(Lteam/opay/pay/kyc/upgrade1/task/FaceFailedNotCleanFragment;)Lteam/opay/core/settings/SettingsStorage;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic P(Lteam/opay/pay/kyc/upgrade1/task/FaceFailedNotCleanFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/upgrade1/task/FaceFailedNotCleanFragment;->U(Lteam/opay/pay/kyc/upgrade1/task/FaceFailedNotCleanFragment;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Q(Lteam/opay/pay/kyc/upgrade1/task/FaceFailedNotCleanFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/upgrade1/task/FaceFailedNotCleanFragment;->S(Lteam/opay/pay/kyc/upgrade1/task/FaceFailedNotCleanFragment;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final S(Lteam/opay/pay/kyc/upgrade1/task/FaceFailedNotCleanFragment;)Ljava/lang/String;
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
    const-string v0, "key_img_url"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return-object p0
.end method

.method public static final T(Lteam/opay/pay/kyc/upgrade1/task/FaceFailedNotCleanFragment;)Lteam/opay/core/settings/SettingsStorage;
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/core/settings/SettingsStorage;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v1, "requireContext(...)"

    .line 8
    .line 9
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p0}, Lteam/opay/core/settings/SettingsStorage;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public static final U(Lteam/opay/pay/kyc/upgrade1/task/FaceFailedNotCleanFragment;)Ljava/lang/String;
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
    const-string v0, "key_type"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return-object p0
.end method

.method private final getSettingsStorage()Lteam/opay/core/settings/SettingsStorage;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/upgrade1/task/FaceFailedNotCleanFragment;->l:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/core/settings/SettingsStorage;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final R()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/upgrade1/task/FaceFailedNotCleanFragment;->k:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
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
    sget-object p1, Lteam/opay/pay/security/SecurityUtils;->a:Lteam/opay/pay/security/SecurityUtils;

    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/pay/kyc/upgrade1/task/FaceFailedNotCleanFragment;->R()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    const-string v0, ""

    .line 16
    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    move-object p2, v0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getGenerator()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x0

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-interface {v1}, Lteam/opay/swarmfoundation/data/IAppDataGenerator;->appId()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move-object v1, v2

    .line 33
    :goto_0
    if-nez v1, :cond_2

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    move-object v0, v1

    .line 37
    :goto_1
    invoke-direct {p0}, Lteam/opay/pay/kyc/upgrade1/task/FaceFailedNotCleanFragment;->getSettingsStorage()Lteam/opay/core/settings/SettingsStorage;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Lteam/opay/core/settings/SettingsStorage;->c()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {p1, p2, v0, v1}, Lteam/opay/pay/security/SecurityUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    check-cast p2, Lqya;

    .line 54
    .line 55
    iget-object p2, p2, Lqya;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 56
    .line 57
    const-string v0, "imageView"

    .line 58
    .line 59
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const/4 v0, 0x0

    .line 63
    const/4 v1, 0x2

    .line 64
    invoke-static {p2, p1, v0, v1, v2}, Lkzf;->k(Landroid/widget/ImageView;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method
