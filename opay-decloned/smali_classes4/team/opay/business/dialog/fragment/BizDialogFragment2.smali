.class public abstract Lteam/opay/business/dialog/fragment/BizDialogFragment2;
.super Lteam/opay/business/dialog/fragment/BizDialogFragment;
.source "BizDialogFragment2.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008 \u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J!\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001b\u0010\u000f\u001a\u00020\u00062\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0004\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0006H\u0004\u00a2\u0006\u0004\u0008\u0011\u0010\u0003J\u000f\u0010\u0012\u001a\u00020\u0006H\u0004\u00a2\u0006\u0004\u0008\u0012\u0010\u0003J\u000f\u0010\u0013\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0003J!\u0010\u0017\u001a\u00020\u00062\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0016\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R$\u0010\u0015\u001a\u0004\u0018\u00010\u00148\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u0018\u0010!\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0016\u0010%\u001a\u00020\"8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\"\u0010+\u001a\u0010\u0012\u000c\u0012\n (*\u0004\u0018\u00010\'0\'0&8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008)\u0010*\u00a8\u0006,"
    }
    d2 = {
        "Lteam/opay/business/dialog/fragment/BizDialogFragment2;",
        "Lteam/opay/business/dialog/fragment/BizDialogFragment;",
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
        "link",
        "e0",
        "(Ljava/lang/String;)V",
        "b0",
        "d0",
        "dismissAllowingStateLoss",
        "Lteam/opay/business/provider/active/AdItem;",
        "adItem",
        "adClickType",
        "h0",
        "(Lteam/opay/business/provider/active/AdItem;Ljava/lang/String;)V",
        "q",
        "Lteam/opay/business/provider/active/AdItem;",
        "i0",
        "()Lteam/opay/business/provider/active/AdItem;",
        "setAdItem",
        "(Lteam/opay/business/provider/active/AdItem;)V",
        "r",
        "Ljava/lang/String;",
        "adpCode",
        "",
        "s",
        "Z",
        "isPositiveAction",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "Landroid/content/Intent;",
        "kotlin.jvm.PlatformType",
        "t",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "startActivityForResult",
        "business-dialog_release"
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
.field public q:Lteam/opay/business/provider/active/AdItem;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public r:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public s:Z

.field public final t:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lteam/opay/business/dialog/fragment/BizDialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lud1;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lud1;-><init>(Lteam/opay/business/dialog/fragment/BizDialogFragment2;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Lag;)Landroidx/activity/result/ActivityResultLauncher;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "registerForActivityResult(...)"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lteam/opay/business/dialog/fragment/BizDialogFragment2;->t:Landroidx/activity/result/ActivityResultLauncher;

    .line 24
    .line 25
    return-void
.end method

.method public static synthetic Y(Lteam/opay/business/dialog/fragment/BizDialogFragment2;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/dialog/fragment/BizDialogFragment2;->c0(Lteam/opay/business/dialog/fragment/BizDialogFragment2;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Z(Lteam/opay/business/dialog/fragment/BizDialogFragment2;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/dialog/fragment/BizDialogFragment2;->g0(Lteam/opay/business/dialog/fragment/BizDialogFragment2;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic a0(Lteam/opay/business/dialog/fragment/BizDialogFragment2;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/dialog/fragment/BizDialogFragment2;->j0(Lteam/opay/business/dialog/fragment/BizDialogFragment2;Landroidx/activity/result/ActivityResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final c0(Lteam/opay/business/dialog/fragment/BizDialogFragment2;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/common/base/BaseDialogFragment;->dismiss()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static synthetic f0(Lteam/opay/business/dialog/fragment/BizDialogFragment2;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p3, :cond_1

    .line 2
    .line 3
    and-int/lit8 p2, p2, 0x1

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lteam/opay/business/dialog/fragment/BizDialogFragment2;->e0(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string p1, "Super calls with default arguments not supported in this target, function: actionConfirm"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public static final g0(Lteam/opay/business/dialog/fragment/BizDialogFragment2;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/common/base/BaseDialogFragment;->dismiss()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final j0(Lteam/opay/business/dialog/fragment/BizDialogFragment2;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/common/base/BaseDialogFragment;->dismiss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final b0()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lteam/opay/business/dialog/fragment/BizDialogFragment2;->s:Z

    .line 3
    .line 4
    iget-object v0, p0, Lteam/opay/business/dialog/fragment/BizDialogFragment2;->q:Lteam/opay/business/provider/active/AdItem;

    .line 5
    .line 6
    const-string v1, "cancel"

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Lteam/opay/business/dialog/fragment/BizDialogFragment2;->h0(Lteam/opay/business/provider/active/AdItem;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lud;->a:Lud;

    .line 12
    .line 13
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeDialogFragment;->getAppContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, Lteam/opay/business/dialog/fragment/BizDialogFragment2;->q:Lteam/opay/business/provider/active/AdItem;

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {v2}, Lteam/opay/business/provider/active/AdItem;->getButtonCancelLink()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v2, 0x0

    .line 27
    :goto_0
    if-nez v2, :cond_1

    .line 28
    .line 29
    const-string v2, ""

    .line 30
    .line 31
    :cond_1
    invoke-virtual {v0, v1, v2}, Lud;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p0, Lteam/opay/business/dialog/fragment/BizDialogFragment2;->t:Landroidx/activity/result/ActivityResultLauncher;

    .line 36
    .line 37
    new-instance v2, Lvd1;

    .line 38
    .line 39
    invoke-direct {v2, p0}, Lvd1;-><init>(Lteam/opay/business/dialog/fragment/BizDialogFragment2;)V

    .line 40
    .line 41
    .line 42
    invoke-static {p0, v1, v0, v2}, Lvd;->e(Landroidx/fragment/app/Fragment;Landroidx/activity/result/ActivityResultLauncher;Landroid/content/Intent;Lkotlin/jvm/functions/Function0;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final d0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/business/dialog/fragment/BizDialogFragment2;->q:Lteam/opay/business/provider/active/AdItem;

    .line 2
    .line 3
    const-string v1, "close"

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lteam/opay/business/dialog/fragment/BizDialogFragment2;->h0(Lteam/opay/business/provider/active/AdItem;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lteam/opay/core/common/base/BaseDialogFragment;->dismiss()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public dismissAllowingStateLoss()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 21
    .line 22
    .line 23
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 24
    .line 25
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/BizDialogFragment;->W()Lfa3;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-boolean v1, p0, Lteam/opay/business/dialog/fragment/BizDialogFragment2;->s:Z

    .line 30
    .line 31
    invoke-interface {v0, v1}, Lfa3;->c(Z)V

    .line 32
    .line 33
    .line 34
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 35
    .line 36
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 42
    .line 43
    invoke-static {v0}, Lkotlin/d;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    :cond_1
    :goto_0
    return-void
.end method

.method public final e0(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lteam/opay/business/dialog/fragment/BizDialogFragment2;->s:Z

    .line 3
    .line 4
    iget-object v0, p0, Lteam/opay/business/dialog/fragment/BizDialogFragment2;->q:Lteam/opay/business/provider/active/AdItem;

    .line 5
    .line 6
    const-string v1, "confirm"

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Lteam/opay/business/dialog/fragment/BizDialogFragment2;->h0(Lteam/opay/business/provider/active/AdItem;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Lteam/opay/business/dialog/fragment/BizDialogFragment2;->q:Lteam/opay/business/provider/active/AdItem;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Lteam/opay/business/provider/active/AdItem;->getButtonConfirmLink()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    if-nez p1, :cond_1

    .line 24
    .line 25
    const-string p1, ""

    .line 26
    .line 27
    :cond_1
    sget-object v0, Lud;->a:Lud;

    .line 28
    .line 29
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeDialogFragment;->getAppContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1, p1}, Lud;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object v0, p0, Lteam/opay/business/dialog/fragment/BizDialogFragment2;->t:Landroidx/activity/result/ActivityResultLauncher;

    .line 38
    .line 39
    new-instance v1, Lwd1;

    .line 40
    .line 41
    invoke-direct {v1, p0}, Lwd1;-><init>(Lteam/opay/business/dialog/fragment/BizDialogFragment2;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p0, v0, p1, v1}, Lvd;->e(Landroidx/fragment/app/Fragment;Landroidx/activity/result/ActivityResultLauncher;Landroid/content/Intent;Lkotlin/jvm/functions/Function0;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final h0(Lteam/opay/business/provider/active/AdItem;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/business/provider/active/AdpApi;->i:Lteam/opay/business/provider/active/AdpApi$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/business/provider/active/AdpApi$Companion;->a()Lteam/opay/business/provider/active/AdpApi;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lteam/opay/business/dialog/fragment/BizDialogFragment2;->r:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1, p1, p2}, Lteam/opay/business/provider/active/AdpApi;->x(Ljava/lang/String;Lteam/opay/business/provider/active/AdItem;Ljava/lang/String;)Lkotlinx/coroutines/l;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final i0()Lteam/opay/business/provider/active/AdItem;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/dialog/fragment/BizDialogFragment2;->q:Lteam/opay/business/provider/active/AdItem;

    .line 2
    .line 3
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lteam/opay/core/common/base/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

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
    const/4 v0, 0x0

    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    const/16 v2, 0x21

    .line 16
    .line 17
    const-string v3, "dialogEntity"

    .line 18
    .line 19
    if-lt v1, v2, :cond_0

    .line 20
    .line 21
    :try_start_1
    const-class v1, Lteam/opay/business/provider/active/AdItem;

    .line 22
    .line 23
    invoke-static {p1, v3, v1}, Lyb0;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    instance-of v1, p1, Lteam/opay/business/provider/active/AdItem;

    .line 33
    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    move-object p1, v0

    .line 37
    :cond_1
    check-cast p1, Lteam/opay/business/provider/active/AdItem;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-object p1, v0

    .line 41
    :goto_0
    check-cast p1, Lteam/opay/business/provider/active/AdItem;

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    move-object p1, v0

    .line 45
    :goto_1
    iput-object p1, p0, Lteam/opay/business/dialog/fragment/BizDialogFragment2;->q:Lteam/opay/business/provider/active/AdItem;

    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    const-string v0, "dialogAdpCode"

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    :cond_3
    iput-object v0, p0, Lteam/opay/business/dialog/fragment/BizDialogFragment2;->r:Ljava/lang/String;

    .line 60
    .line 61
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
    invoke-super {p0, p1, p2}, Lteam/opay/core/common/base/BaseDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    sget-object p1, Lteam/opay/business/provider/active/AdpApi;->i:Lteam/opay/business/provider/active/AdpApi$Companion;

    .line 12
    .line 13
    invoke-virtual {p1}, Lteam/opay/business/provider/active/AdpApi$Companion;->a()Lteam/opay/business/provider/active/AdpApi;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object p2, p0, Lteam/opay/business/dialog/fragment/BizDialogFragment2;->r:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v0, p0, Lteam/opay/business/dialog/fragment/BizDialogFragment2;->q:Lteam/opay/business/provider/active/AdItem;

    .line 20
    .line 21
    invoke-virtual {p1, p2, v0}, Lteam/opay/business/provider/active/AdpApi;->z(Ljava/lang/String;Lteam/opay/business/provider/active/AdItem;)Lkotlinx/coroutines/l;

    .line 22
    .line 23
    .line 24
    return-void
.end method
