.class public final Lteam/opay/business/dialog/biz/IAdpDialogImpl;
.super Ljava/lang/Object;
.source "IAdpDialogImpl.kt"

# interfaces
.implements Lq67;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J1\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ1\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u001f\u0010\u0013\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J1\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0012J1\u0010\u0016\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u000eJ1\u0010\u0017\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0012J1\u0010\u0018\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u000eJ1\u0010\u0019\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u000eJ1\u0010\u001a\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u0012R\u001b\u0010\u001f\u001a\u00020\u001b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001eR\u001b\u0010#\u001a\u00020 8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u001c\u001a\u0004\u0008!\u0010\"\u00a8\u0006$"
    }
    d2 = {
        "Lteam/opay/business/dialog/biz/IAdpDialogImpl;",
        "Lq67;",
        "<init>",
        "()V",
        "Landroidx/fragment/app/FragmentManager;",
        "fm",
        "",
        "adpCode",
        "Lteam/opay/business/provider/active/AdItem;",
        "adItem",
        "Lfa3;",
        "onDismiss",
        "",
        "a",
        "(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Lteam/opay/business/provider/active/AdItem;Lfa3;)V",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "b",
        "(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lteam/opay/business/provider/active/AdItem;Lfa3;)V",
        "i",
        "(Landroidx/fragment/app/FragmentManager;Lteam/opay/business/provider/active/AdItem;)V",
        "m",
        "n",
        "j",
        "k",
        "q",
        "p",
        "Landroid/content/Context;",
        "Lid8;",
        "l",
        "()Landroid/content/Context;",
        "context",
        "Lteam/opay/business/dialog/internal/DialogMap;",
        "o",
        "()Lteam/opay/business/dialog/internal/DialogMap;",
        "dialogMap",
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
    new-instance v0, Lr67;

    .line 5
    .line 6
    invoke-direct {v0}, Lr67;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lteam/opay/business/dialog/biz/IAdpDialogImpl;->a:Lid8;

    .line 14
    .line 15
    new-instance v0, Ls67;

    .line 16
    .line 17
    invoke-direct {v0}, Ls67;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lteam/opay/business/dialog/biz/IAdpDialogImpl;->b:Lid8;

    .line 25
    .line 26
    return-void
.end method

.method public static synthetic c()Lteam/opay/business/dialog/internal/DialogMap;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/business/dialog/biz/IAdpDialogImpl;->h()Lteam/opay/business/dialog/internal/DialogMap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic d()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/business/dialog/biz/IAdpDialogImpl;->g()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic e(Lteam/opay/business/dialog/biz/IAdpDialogImpl;Landroidx/fragment/app/Fragment;Ljava/lang/String;Lteam/opay/business/provider/active/AdItem;Lfa3;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lteam/opay/business/dialog/biz/IAdpDialogImpl;->j(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lteam/opay/business/provider/active/AdItem;Lfa3;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic f(Lteam/opay/business/dialog/biz/IAdpDialogImpl;Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Lteam/opay/business/provider/active/AdItem;Lfa3;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lteam/opay/business/dialog/biz/IAdpDialogImpl;->k(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Lteam/opay/business/provider/active/AdItem;Lfa3;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final g()Landroid/content/Context;
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

.method public static final h()Lteam/opay/business/dialog/internal/DialogMap;
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


# virtual methods
.method public a(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Lteam/opay/business/provider/active/AdItem;Lfa3;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lteam/opay/business/provider/active/AdItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lfa3;
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
    const-string v0, "adItem"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "onDismiss"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1, p2, p3, p4}, Lteam/opay/business/dialog/biz/IAdpDialogImpl;->n(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Lteam/opay/business/provider/active/AdItem;Lfa3;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public b(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lteam/opay/business/provider/active/AdItem;Lfa3;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lteam/opay/business/provider/active/AdItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lfa3;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "fragment"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "adItem"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "onDismiss"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1, p2, p3, p4}, Lteam/opay/business/dialog/biz/IAdpDialogImpl;->m(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lteam/opay/business/provider/active/AdItem;Lfa3;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public i(Landroidx/fragment/app/FragmentManager;Lteam/opay/business/provider/active/AdItem;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/business/provider/active/AdItem;
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
    const-string v0, "adItem"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lteam/opay/business/provider/active/AdItem;->getId()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->l0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isVisible()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/FragmentTransaction;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentTransaction;->r(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public final j(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lteam/opay/business/provider/active/AdItem;Lfa3;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isVisible()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "getChildFragmentManager(...)"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lteam/opay/business/dialog/biz/IAdpDialogImpl;->o()Lteam/opay/business/dialog/internal/DialogMap;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1, v0, p2, p3}, Lteam/opay/business/dialog/internal/DialogMap;->f(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Lteam/opay/business/provider/active/AdItem;)Lteam/opay/business/dialog/fragment/BizDialogFragment;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    if-eqz p2, :cond_3

    .line 26
    .line 27
    invoke-virtual {p3}, Lteam/opay/business/provider/active/AdItem;->getId()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->l0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/FragmentTransaction;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v2, v1}, Landroidx/fragment/app/FragmentTransaction;->r(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isVisible()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-nez p1, :cond_2

    .line 63
    .line 64
    return-void

    .line 65
    :cond_2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/FragmentTransaction;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p3}, Lteam/opay/business/provider/active/AdItem;->getId()I

    .line 70
    .line 71
    .line 72
    move-result p3

    .line 73
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    invoke-virtual {p1, p2, p3}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, p4}, Lteam/opay/business/dialog/fragment/BizDialogFragment;->X(Lfa3;)V

    .line 85
    .line 86
    .line 87
    :cond_3
    return-void
.end method

.method public final k(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Lteam/opay/business/provider/active/AdItem;Lfa3;)V
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
    invoke-virtual {p0}, Lteam/opay/business/dialog/biz/IAdpDialogImpl;->o()Lteam/opay/business/dialog/internal/DialogMap;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1, p2, p3}, Lteam/opay/business/dialog/internal/DialogMap;->f(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Lteam/opay/business/provider/active/AdItem;)Lteam/opay/business/dialog/fragment/BizDialogFragment;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    if-eqz p2, :cond_2

    .line 17
    .line 18
    invoke-virtual {p3}, Lteam/opay/business/provider/active/AdItem;->getId()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->l0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_1

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
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/FragmentTransaction;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p3}, Lteam/opay/business/provider/active/AdItem;->getId()I

    .line 54
    .line 55
    .line 56
    move-result p3

    .line 57
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p3

    .line 61
    invoke-virtual {p1, p2, p3}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, p4}, Lteam/opay/business/dialog/fragment/BizDialogFragment;->X(Lfa3;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    return-void
.end method

.method public final l()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/dialog/biz/IAdpDialogImpl;->a:Lid8;

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

.method public final m(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lteam/opay/business/provider/active/AdItem;Lfa3;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isVisible()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {p3}, Lem;->a(Lteam/opay/business/provider/active/AdItem;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/16 v1, 0xc9

    .line 13
    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0, p1, p2, p3, p4}, Lteam/opay/business/dialog/biz/IAdpDialogImpl;->p(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lteam/opay/business/provider/active/AdItem;Lfa3;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lteam/opay/business/dialog/biz/IAdpDialogImpl;->j(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lteam/opay/business/provider/active/AdItem;Lfa3;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final n(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Lteam/opay/business/provider/active/AdItem;Lfa3;)V
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
    invoke-static {p3}, Lem;->a(Lteam/opay/business/provider/active/AdItem;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/16 v1, 0xc9

    .line 13
    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0, p1, p2, p3, p4}, Lteam/opay/business/dialog/biz/IAdpDialogImpl;->q(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Lteam/opay/business/provider/active/AdItem;Lfa3;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lteam/opay/business/dialog/biz/IAdpDialogImpl;->k(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Lteam/opay/business/provider/active/AdItem;Lfa3;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final o()Lteam/opay/business/dialog/internal/DialogMap;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/dialog/biz/IAdpDialogImpl;->b:Lid8;

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

.method public final p(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lteam/opay/business/provider/active/AdItem;Lfa3;)V
    .locals 8

    .line 1
    invoke-virtual {p3}, Lteam/opay/business/provider/active/AdItem;->getImageUrl()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ldm;->a(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1, p2, p3, p4}, Lteam/opay/business/dialog/biz/IAdpDialogImpl;->j(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lteam/opay/business/provider/active/AdItem;Lfa3;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {v0}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Lteam/opay/business/dialog/biz/IAdpDialogImpl;->l()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1}, Lcom/bumptech/glide/a;->u(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lcom/bumptech/glide/RequestManager;->n()Ljpc;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1, v0}, Ljpc;->M0(Ljava/lang/String;)Ljpc;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v7, Lteam/opay/business/dialog/biz/IAdpDialogImpl$b;

    .line 38
    .line 39
    move-object v1, v7

    .line 40
    move-object v2, p4

    .line 41
    move-object v3, p3

    .line 42
    move-object v4, p0

    .line 43
    move-object v5, p1

    .line 44
    move-object v6, p2

    .line 45
    invoke-direct/range {v1 .. v6}, Lteam/opay/business/dialog/biz/IAdpDialogImpl$b;-><init>(Lfa3;Lteam/opay/business/provider/active/AdItem;Lteam/opay/business/dialog/biz/IAdpDialogImpl;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v7}, Ljpc;->C0(Llfe;)Llfe;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const/4 p1, 0x0

    .line 57
    invoke-interface {p4, p1}, Lfa3;->c(Z)V

    .line 58
    .line 59
    .line 60
    :goto_0
    return-void
.end method

.method public final q(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Lteam/opay/business/provider/active/AdItem;Lfa3;)V
    .locals 8

    .line 1
    invoke-virtual {p3}, Lteam/opay/business/provider/active/AdItem;->getImageUrl()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ldm;->a(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1, p2, p3, p4}, Lteam/opay/business/dialog/biz/IAdpDialogImpl;->k(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Lteam/opay/business/provider/active/AdItem;Lfa3;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {v0}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Lteam/opay/business/dialog/biz/IAdpDialogImpl;->l()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1}, Lcom/bumptech/glide/a;->u(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lcom/bumptech/glide/RequestManager;->n()Ljpc;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1, v0}, Ljpc;->M0(Ljava/lang/String;)Ljpc;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v7, Lteam/opay/business/dialog/biz/IAdpDialogImpl$a;

    .line 38
    .line 39
    move-object v1, v7

    .line 40
    move-object v2, p4

    .line 41
    move-object v3, p3

    .line 42
    move-object v4, p0

    .line 43
    move-object v5, p1

    .line 44
    move-object v6, p2

    .line 45
    invoke-direct/range {v1 .. v6}, Lteam/opay/business/dialog/biz/IAdpDialogImpl$a;-><init>(Lfa3;Lteam/opay/business/provider/active/AdItem;Lteam/opay/business/dialog/biz/IAdpDialogImpl;Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v7}, Ljpc;->C0(Llfe;)Llfe;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const/4 p1, 0x0

    .line 57
    invoke-interface {p4, p1}, Lfa3;->c(Z)V

    .line 58
    .line 59
    .line 60
    :goto_0
    return-void
.end method
