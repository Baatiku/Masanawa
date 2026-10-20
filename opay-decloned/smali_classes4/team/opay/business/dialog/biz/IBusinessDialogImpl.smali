.class public final Lteam/opay/business/dialog/biz/IBusinessDialogImpl;
.super Ljava/lang/Object;
.source "IBusinessDialogImpl.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\'\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\'\u0010\u000e\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001f\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\'\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u001b\u0010\u001b\u001a\u00020\u00168BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001aR\u001b\u0010 \u001a\u00020\u001c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u0018\u001a\u0004\u0008\u001e\u0010\u001f\u00a8\u0006!"
    }
    d2 = {
        "Lteam/opay/business/dialog/biz/IBusinessDialogImpl;",
        "",
        "<init>",
        "()V",
        "Landroidx/fragment/app/FragmentManager;",
        "fm",
        "Lteam/opay/core/http/BusinessInfo;",
        "info",
        "Lfa3;",
        "callback",
        "",
        "n",
        "(Landroidx/fragment/app/FragmentManager;Lteam/opay/core/http/BusinessInfo;Lfa3;)V",
        "Lteam/opay/core/common/base/DialogInfo;",
        "h",
        "(Landroidx/fragment/app/FragmentManager;Lteam/opay/core/common/base/DialogInfo;Lfa3;)V",
        "Lteam/opay/business/dialog/api/DialogEntity;",
        "entity",
        "m",
        "(Lteam/opay/business/dialog/api/DialogEntity;Lfa3;)V",
        "g",
        "(Landroidx/fragment/app/FragmentManager;Lteam/opay/business/dialog/api/DialogEntity;Lfa3;)V",
        "Lteam/opay/business/dialog/internal/DialogMap;",
        "a",
        "Lid8;",
        "l",
        "()Lteam/opay/business/dialog/internal/DialogMap;",
        "dialogMap",
        "Landroid/content/Context;",
        "b",
        "k",
        "()Landroid/content/Context;",
        "context",
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
.field public final a:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lm77;

    .line 5
    .line 6
    invoke-direct {v0}, Lm77;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lteam/opay/business/dialog/biz/IBusinessDialogImpl;->a:Lid8;

    .line 14
    .line 15
    new-instance v0, Ln77;

    .line 16
    .line 17
    invoke-direct {v0}, Ln77;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lteam/opay/business/dialog/biz/IBusinessDialogImpl;->b:Lid8;

    .line 25
    .line 26
    return-void
.end method

.method public static synthetic a(Lteam/opay/business/dialog/biz/IBusinessDialogImpl;Lteam/opay/core/common/base/DialogInfo;Lfa3;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/business/dialog/biz/IBusinessDialogImpl;->j(Lteam/opay/business/dialog/biz/IBusinessDialogImpl;Lteam/opay/core/common/base/DialogInfo;Lfa3;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/business/dialog/biz/IBusinessDialogImpl;->e()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic c(Lteam/opay/business/dialog/biz/IBusinessDialogImpl;Lteam/opay/core/common/base/DialogInfo;Lfa3;Lteam/opay/core/common/base/CorpDialogFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/business/dialog/biz/IBusinessDialogImpl;->i(Lteam/opay/business/dialog/biz/IBusinessDialogImpl;Lteam/opay/core/common/base/DialogInfo;Lfa3;Lteam/opay/core/common/base/CorpDialogFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d()Lteam/opay/business/dialog/internal/DialogMap;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/business/dialog/biz/IBusinessDialogImpl;->f()Lteam/opay/business/dialog/internal/DialogMap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final e()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public static final f()Lteam/opay/business/dialog/internal/DialogMap;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/business/dialog/internal/DialogMap;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/business/dialog/internal/DialogMap;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final i(Lteam/opay/business/dialog/biz/IBusinessDialogImpl;Lteam/opay/core/common/base/DialogInfo;Lfa3;Lteam/opay/core/common/base/CorpDialogFragment;)Lkotlin/Unit;
    .locals 6

    .line 1
    sget-object v0, Lhre;->a:Lhre;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/business/dialog/biz/IBusinessDialogImpl;->k()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "Home_pop_window_click"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, p1}, Lhre;->b(Landroid/content/Context;Ljava/lang/String;Lteam/opay/core/common/base/DialogInfo;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lteam/opay/core/common/base/DialogInfo;->getDefaultDismiss()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const/4 p3, 0x1

    .line 19
    invoke-interface {p2, p3}, Lfa3;->c(Z)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    invoke-interface {p2, v0}, Lfa3;->a(Z)Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    invoke-virtual {p3}, Lteam/opay/core/common/base/BaseDialogFragment;->dismiss()V

    .line 31
    .line 32
    .line 33
    :cond_1
    :goto_0
    sget-object v0, Lud;->a:Lud;

    .line 34
    .line 35
    invoke-virtual {p0}, Lteam/opay/business/dialog/biz/IBusinessDialogImpl;->k()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p1}, Lteam/opay/core/common/base/DialogInfo;->getJumpUrl()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    if-nez p0, :cond_2

    .line 44
    .line 45
    const-string p0, ""

    .line 46
    .line 47
    :cond_2
    move-object v2, p0

    .line 48
    const/4 v4, 0x4

    .line 49
    const/4 v5, 0x0

    .line 50
    const/4 v3, 0x0

    .line 51
    invoke-static/range {v0 .. v5}, Lud;->i(Lud;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 55
    .line 56
    return-object p0
.end method

.method public static final j(Lteam/opay/business/dialog/biz/IBusinessDialogImpl;Lteam/opay/core/common/base/DialogInfo;Lfa3;)Lkotlin/Unit;
    .locals 2

    .line 1
    sget-object v0, Lhre;->a:Lhre;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/business/dialog/biz/IBusinessDialogImpl;->k()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v1, "Home_pop_window_close"

    .line 8
    .line 9
    invoke-virtual {v0, p0, v1, p1}, Lhre;->b(Landroid/content/Context;Ljava/lang/String;Lteam/opay/core/common/base/DialogInfo;)V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    invoke-interface {p2, p0}, Lfa3;->c(Z)V

    .line 14
    .line 15
    .line 16
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p0
.end method


# virtual methods
.method public final g(Landroidx/fragment/app/FragmentManager;Lteam/opay/business/dialog/api/DialogEntity;Lfa3;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->M0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lteam/opay/business/dialog/biz/IBusinessDialogImpl;->l()Lteam/opay/business/dialog/internal/DialogMap;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1, p2}, Lteam/opay/business/dialog/internal/DialogMap;->g(Landroidx/fragment/app/FragmentManager;Lteam/opay/business/dialog/api/DialogEntity;)Lteam/opay/business/dialog/fragment/BizDialogFragment;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0, p2, p3}, Lteam/opay/business/dialog/biz/IBusinessDialogImpl;->m(Lteam/opay/business/dialog/api/DialogEntity;Lfa3;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    invoke-virtual {p2}, Lteam/opay/business/dialog/api/DialogEntity;->getTag()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentManager;->l0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/FragmentTransaction;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->r(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 47
    .line 48
    .line 49
    :cond_2
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/FragmentTransaction;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p2}, Lteam/opay/business/dialog/api/DialogEntity;->getTag()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {p1, v0, p2}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p3}, Lteam/opay/business/dialog/fragment/BizDialogFragment;->X(Lfa3;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final h(Landroidx/fragment/app/FragmentManager;Lteam/opay/core/common/base/DialogInfo;Lfa3;)V
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lteam/opay/core/common/base/CorpDialogFragment;->u:Lteam/opay/core/common/base/CorpDialogFragment$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Lteam/opay/core/common/base/CorpDialogFragment$Companion;->a(Lteam/opay/core/common/base/DialogInfo;)Lteam/opay/core/common/base/CorpDialogFragment;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lhre;->a:Lhre;

    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/business/dialog/biz/IBusinessDialogImpl;->k()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const-string v3, "Home_pop_window_show"

    .line 14
    .line 15
    invoke-virtual {v1, v2, v3, p2}, Lhre;->b(Landroid/content/Context;Ljava/lang/String;Lteam/opay/core/common/base/DialogInfo;)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Lo77;

    .line 19
    .line 20
    invoke-direct {v1, p0, p2, p3, v0}, Lo77;-><init>(Lteam/opay/business/dialog/biz/IBusinessDialogImpl;Lteam/opay/core/common/base/DialogInfo;Lfa3;Lteam/opay/core/common/base/CorpDialogFragment;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lteam/opay/core/common/base/CorpDialogFragment;->m0(Lkotlin/jvm/functions/Function0;)V

    .line 24
    .line 25
    .line 26
    new-instance v1, Lp77;

    .line 27
    .line 28
    invoke-direct {v1, p0, p2, p3}, Lp77;-><init>(Lteam/opay/business/dialog/biz/IBusinessDialogImpl;Lteam/opay/core/common/base/DialogInfo;Lfa3;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lteam/opay/core/common/base/CorpDialogFragment;->k0(Lkotlin/jvm/functions/Function0;)V

    .line 32
    .line 33
    .line 34
    const-class p2, Lteam/opay/core/common/base/CorpDialogFragment;

    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->l0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    if-eqz p3, :cond_0

    .line 45
    .line 46
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 47
    .line 48
    .line 49
    move-result p3

    .line 50
    if-eqz p3, :cond_0

    .line 51
    .line 52
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/FragmentTransaction;

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    invoke-virtual {p3, v0}, Landroidx/fragment/app/FragmentTransaction;->r(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    invoke-virtual {p3}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception p1

    .line 65
    goto :goto_1

    .line 66
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/FragmentTransaction;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1, v0, p2}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->j()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 79
    .line 80
    .line 81
    :goto_2
    return-void
.end method

.method public final k()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/dialog/biz/IBusinessDialogImpl;->b:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/Context;

    .line 8
    .line 9
    return-object v0
.end method

.method public final l()Lteam/opay/business/dialog/internal/DialogMap;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/dialog/biz/IBusinessDialogImpl;->a:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/business/dialog/internal/DialogMap;

    .line 8
    .line 9
    return-object v0
.end method

.method public final m(Lteam/opay/business/dialog/api/DialogEntity;Lfa3;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lteam/opay/business/dialog/api/DialogEntity;->getWindowIsForce()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-interface {p2, v0}, Lfa3;->a(Z)Z

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x1

    .line 13
    invoke-interface {p2, v0}, Lfa3;->c(Z)V

    .line 14
    .line 15
    .line 16
    :goto_0
    sget-object v1, Lud;->a:Lud;

    .line 17
    .line 18
    invoke-virtual {p0}, Lteam/opay/business/dialog/biz/IBusinessDialogImpl;->k()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {p1}, Lteam/opay/business/dialog/api/DialogEntity;->getJumpUrl()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    if-nez p2, :cond_1

    .line 27
    .line 28
    const-string p2, ""

    .line 29
    .line 30
    :cond_1
    move-object v3, p2

    .line 31
    const/4 v5, 0x4

    .line 32
    const/4 v6, 0x0

    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-static/range {v1 .. v6}, Lud;->i(Lud;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    sget-object p2, Lhre;->a:Lhre;

    .line 38
    .line 39
    invoke-virtual {p0}, Lteam/opay/business/dialog/biz/IBusinessDialogImpl;->k()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v1, "Home_pop_window_click"

    .line 44
    .line 45
    invoke-virtual {p2, v0, v1, p1}, Lhre;->a(Landroid/content/Context;Ljava/lang/String;Lteam/opay/business/dialog/api/DialogEntity;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public n(Landroidx/fragment/app/FragmentManager;Lteam/opay/core/http/BusinessInfo;Lfa3;)V
    .locals 2
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/http/BusinessInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lfa3;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "fm"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "info"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "callback"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Lteam/opay/core/http/BusinessInfo;->isDisplay()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {p2}, Lteam/opay/core/http/BusinessInfo;->getWindowType()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    const/16 v1, 0x8

    .line 29
    .line 30
    if-eq v0, v1, :cond_0

    .line 31
    .line 32
    invoke-static {p2}, Lq77;->a(Lteam/opay/core/http/BusinessInfo;)Lteam/opay/business/dialog/api/DialogEntity;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/business/dialog/biz/IBusinessDialogImpl;->g(Landroidx/fragment/app/FragmentManager;Lteam/opay/business/dialog/api/DialogEntity;Lfa3;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-static {}, Let;->l()Lkotlin/jvm/functions/Function0;

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-static {p2}, Lq77;->b(Lteam/opay/core/http/BusinessInfo;)Lteam/opay/core/common/base/DialogInfo;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/business/dialog/biz/IBusinessDialogImpl;->h(Landroidx/fragment/app/FragmentManager;Lteam/opay/core/common/base/DialogInfo;Lfa3;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    invoke-static {p2}, Lq77;->a(Lteam/opay/core/http/BusinessInfo;)Lteam/opay/business/dialog/api/DialogEntity;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p0, p1, p3}, Lteam/opay/business/dialog/biz/IBusinessDialogImpl;->m(Lteam/opay/business/dialog/api/DialogEntity;Lfa3;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void
.end method
