.class public final Lcom/opay/team/home/dialog/HomeConfigDialogV2;
.super Lteam/opay/odialog/BaseBindingConfigDialog;
.source "HomeConfigDialogV2.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opay/team/home/dialog/HomeConfigDialogV2$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u0000 +2\u00020\u0001:\u0001,B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J!\u0010\r\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\u00062\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0003J\u000f\u0010\u0013\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0003R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R$\u0010\u001f\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR*\u0010\'\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010 8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008!\u0010\"\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R\u0014\u0010*\u001a\u00020\u00148BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010)\u00a8\u0006-"
    }
    d2 = {
        "Lcom/opay/team/home/dialog/HomeConfigDialogV2;",
        "Lteam/opay/odialog/BaseBindingConfigDialog;",
        "<init>",
        "()V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/View;",
        "E",
        "(Landroid/view/LayoutInflater;)Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Lteam/opay/odialog/DialogClosePosition;",
        "D",
        "()Lteam/opay/odialog/DialogClosePosition;",
        "dismissAllowingStateLoss",
        "onDestroyView",
        "Lnb3;",
        "i",
        "Lnb3;",
        "_binding",
        "Lteam/opay/odialog/net/AdDataItem;",
        "j",
        "Lteam/opay/odialog/net/AdDataItem;",
        "getData",
        "()Lteam/opay/odialog/net/AdDataItem;",
        "setData",
        "(Lteam/opay/odialog/net/AdDataItem;)V",
        "data",
        "Lkotlin/Function0;",
        "k",
        "Lkotlin/jvm/functions/Function0;",
        "getOnClickedCallback",
        "()Lkotlin/jvm/functions/Function0;",
        "R",
        "(Lkotlin/jvm/functions/Function0;)V",
        "onClickedCallback",
        "N",
        "()Lnb3;",
        "configBinding",
        "l",
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
.field public static final l:Lcom/opay/team/home/dialog/HomeConfigDialogV2$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public i:Lnb3;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public j:Lteam/opay/odialog/net/AdDataItem;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public k:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/opay/team/home/dialog/HomeConfigDialogV2$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/opay/team/home/dialog/HomeConfigDialogV2$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/opay/team/home/dialog/HomeConfigDialogV2;->l:Lcom/opay/team/home/dialog/HomeConfigDialogV2$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/odialog/BaseBindingConfigDialog;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic K(Lcom/opay/team/home/dialog/HomeConfigDialogV2;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/home/dialog/HomeConfigDialogV2;->Q(Lcom/opay/team/home/dialog/HomeConfigDialogV2;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic L(Lcom/opay/team/home/dialog/HomeConfigDialogV2;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/home/dialog/HomeConfigDialogV2;->P(Lcom/opay/team/home/dialog/HomeConfigDialogV2;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic M(Ljava/lang/String;Lcom/opay/team/home/dialog/HomeConfigDialogV2;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/home/dialog/HomeConfigDialogV2;->O(Ljava/lang/String;Lcom/opay/team/home/dialog/HomeConfigDialogV2;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final O(Ljava/lang/String;Lcom/opay/team/home/dialog/HomeConfigDialogV2;)Lkotlin/Unit;
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    sget-object v1, Lx7b;->a:Lx7b;

    .line 3
    .line 4
    const-string v2, "cell_name"

    .line 5
    .line 6
    invoke-static {v2, p0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iget-object v2, p1, Lcom/opay/team/home/dialog/HomeConfigDialogV2;->j:Lteam/opay/odialog/net/AdDataItem;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v2}, Lteam/opay/odialog/net/AdDataItem;->getButtonConfirmLink()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v2, v3

    .line 21
    :goto_0
    const-string v4, "deep_link"

    .line 22
    .line 23
    invoke-static {v4, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/4 v4, 0x2

    .line 28
    new-array v4, v4, [Lkotlin/Pair;

    .line 29
    .line 30
    aput-object p0, v4, v0

    .line 31
    .line 32
    const/4 p0, 0x1

    .line 33
    aput-object v2, v4, p0

    .line 34
    .line 35
    const-string p0, "home_pop_button_click"

    .line 36
    .line 37
    invoke-virtual {v1, p0, v4}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 38
    .line 39
    .line 40
    iget-object p0, p1, Lcom/opay/team/home/dialog/HomeConfigDialogV2;->j:Lteam/opay/odialog/net/AdDataItem;

    .line 41
    .line 42
    if-eqz p0, :cond_1

    .line 43
    .line 44
    invoke-virtual {p0}, Lteam/opay/odialog/net/AdDataItem;->getButtonConfirmLink()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    move-object p0, v3

    .line 50
    :goto_1
    if-eqz p0, :cond_4

    .line 51
    .line 52
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    if-nez p0, :cond_2

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_2
    sget-object v4, Lcom/opay/team/home/a;->a:Lcom/opay/team/home/a;

    .line 60
    .line 61
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    const-string p0, "requireActivity(...)"

    .line 66
    .line 67
    invoke-static {v5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object p0, p1, Lcom/opay/team/home/dialog/HomeConfigDialogV2;->j:Lteam/opay/odialog/net/AdDataItem;

    .line 71
    .line 72
    if-eqz p0, :cond_3

    .line 73
    .line 74
    invoke-virtual {p0}, Lteam/opay/odialog/net/AdDataItem;->getButtonConfirmLink()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    :cond_3
    move-object v6, v3

    .line 79
    new-array v9, v0, [Lkotlin/Pair;

    .line 80
    .line 81
    const/4 v10, 0x4

    .line 82
    const/4 v11, 0x0

    .line 83
    const/4 v7, 0x0

    .line 84
    const-string v8, "interstitial_ad"

    .line 85
    .line 86
    invoke-static/range {v4 .. v11}, Lcom/opay/team/home/a;->y(Lcom/opay/team/home/a;Landroid/content/Context;Ljava/lang/String;Lteam/opay/core/api/Country;Ljava/lang/String;[Lkotlin/Pair;ILjava/lang/Object;)Lcom/opay/team/home/ServiceTypeRunner;

    .line 87
    .line 88
    .line 89
    :cond_4
    :goto_2
    invoke-virtual {p1}, Lcom/opay/team/home/dialog/HomeConfigDialogV2;->dismissAllowingStateLoss()V

    .line 90
    .line 91
    .line 92
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 93
    .line 94
    return-object p0
.end method

.method public static final P(Lcom/opay/team/home/dialog/HomeConfigDialogV2;)Lkotlin/Unit;
    .locals 11

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Lkotlin/Pair;

    .line 5
    .line 6
    const-string v3, "home_pop_Close_click"

    .line 7
    .line 8
    invoke-virtual {v0, v3, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/opay/team/home/dialog/HomeConfigDialogV2;->j:Lteam/opay/odialog/net/AdDataItem;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lteam/opay/odialog/net/AdDataItem;->getButtonCancelLink()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v0, v2

    .line 22
    :goto_0
    if-eqz v0, :cond_3

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    sget-object v3, Lcom/opay/team/home/a;->a:Lcom/opay/team/home/a;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    const-string v0, "requireActivity(...)"

    .line 38
    .line 39
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/opay/team/home/dialog/HomeConfigDialogV2;->j:Lteam/opay/odialog/net/AdDataItem;

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-virtual {v0}, Lteam/opay/odialog/net/AdDataItem;->getButtonCancelLink()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    :cond_2
    move-object v5, v2

    .line 51
    new-array v8, v1, [Lkotlin/Pair;

    .line 52
    .line 53
    const/4 v9, 0x4

    .line 54
    const/4 v10, 0x0

    .line 55
    const/4 v6, 0x0

    .line 56
    const-string v7, "interstitial_ad"

    .line 57
    .line 58
    invoke-static/range {v3 .. v10}, Lcom/opay/team/home/a;->y(Lcom/opay/team/home/a;Landroid/content/Context;Ljava/lang/String;Lteam/opay/core/api/Country;Ljava/lang/String;[Lkotlin/Pair;ILjava/lang/Object;)Lcom/opay/team/home/ServiceTypeRunner;

    .line 59
    .line 60
    .line 61
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/opay/team/home/dialog/HomeConfigDialogV2;->dismissAllowingStateLoss()V

    .line 62
    .line 63
    .line 64
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 65
    .line 66
    return-object p0
.end method

.method public static final Q(Lcom/opay/team/home/dialog/HomeConfigDialogV2;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/opay/team/home/dialog/HomeConfigDialogV2;->k:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method


# virtual methods
.method public D()Lteam/opay/odialog/DialogClosePosition;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/home/dialog/HomeConfigDialogV2;->j:Lteam/opay/odialog/net/AdDataItem;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/odialog/net/AdDataItem;->getCloseIconPosition()Lteam/opay/odialog/DialogClosePosition;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    :cond_0
    sget-object v0, Lteam/opay/odialog/DialogClosePosition;->OutsideBottom:Lteam/opay/odialog/DialogClosePosition;

    .line 12
    .line 13
    :cond_1
    return-object v0
.end method

.method public E(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "inflater"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lnb3;->inflate(Landroid/view/LayoutInflater;)Lnb3;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/opay/team/home/dialog/HomeConfigDialogV2;->i:Lnb3;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/opay/team/home/dialog/HomeConfigDialogV2;->N()Lnb3;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lnb3;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v0, "getRoot(...)"

    .line 21
    .line 22
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-object p1
.end method

.method public final N()Lnb3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/team/home/dialog/HomeConfigDialogV2;->i:Lnb3;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final R(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/opay/team/home/dialog/HomeConfigDialogV2;->k:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method

.method public dismissAllowingStateLoss()V
    .locals 0

    .line 1
    invoke-super {p0}, Lteam/opay/odialog/BaseDialogFragment;->dismissAllowingStateLoss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Lteam/opay/odialog/BaseBindingDialogFragment;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/opay/team/home/dialog/HomeConfigDialogV2;->i:Lnb3;

    .line 6
    .line 7
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 13
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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    const-string v4, "key_home_popup_data"

    .line 16
    .line 17
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lteam/opay/odialog/net/AdDataItem;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object v2, v3

    .line 25
    :goto_0
    iput-object v2, p0, Lcom/opay/team/home/dialog/HomeConfigDialogV2;->j:Lteam/opay/odialog/net/AdDataItem;

    .line 26
    .line 27
    invoke-super {p0, p1, p2}, Lteam/opay/odialog/BaseBindingConfigDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    const-string p2, "home_config_dialog_height"

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const/16 p1, 0x190

    .line 44
    .line 45
    invoke-static {p1}, Lkmf;->g(I)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    :goto_1
    invoke-virtual {p0}, Lcom/opay/team/home/dialog/HomeConfigDialogV2;->N()Lnb3;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    iget-object p2, p2, Lnb3;->e:Lcom/opay/team/newhome/home/ImageLottieView;

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/opay/team/home/dialog/HomeConfigDialogV2;->N()Lnb3;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    iget-object v2, v2, Lnb3;->e:Lcom/opay/team/newhome/home/ImageLottieView;

    .line 60
    .line 61
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    const-string v4, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    .line 66
    .line 67
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 71
    .line 72
    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 73
    .line 74
    invoke-virtual {p2, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/opay/team/home/dialog/HomeConfigDialogV2;->j:Lteam/opay/odialog/net/AdDataItem;

    .line 78
    .line 79
    if-eqz p1, :cond_3

    .line 80
    .line 81
    invoke-virtual {p1}, Lteam/opay/odialog/net/AdDataItem;->getImageIconUrl()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-nez p1, :cond_2

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_2
    :goto_2
    move-object v5, p1

    .line 89
    goto :goto_4

    .line 90
    :cond_3
    :goto_3
    const-string p1, ""

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :goto_4
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-nez p1, :cond_4

    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/opay/team/home/dialog/HomeConfigDialogV2;->dismissAllowingStateLoss()V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    if-eqz p1, :cond_5

    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/opay/team/home/dialog/HomeConfigDialogV2;->N()Lnb3;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    iget-object v4, p1, Lnb3;->e:Lcom/opay/team/newhome/home/ImageLottieView;

    .line 114
    .line 115
    const/16 v11, 0x1e

    .line 116
    .line 117
    const/4 v12, 0x0

    .line 118
    const/4 v6, 0x0

    .line 119
    const/4 v7, 0x0

    .line 120
    const/4 v8, 0x0

    .line 121
    const/4 v9, 0x0

    .line 122
    const/4 v10, 0x1

    .line 123
    invoke-static/range {v4 .. v12}, Lcom/opay/team/newhome/home/ImageLottieView;->n(Lcom/opay/team/newhome/home/ImageLottieView;Ljava/lang/String;IIZZZILjava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    :cond_5
    iget-object p1, p0, Lcom/opay/team/home/dialog/HomeConfigDialogV2;->j:Lteam/opay/odialog/net/AdDataItem;

    .line 127
    .line 128
    if-eqz p1, :cond_6

    .line 129
    .line 130
    invoke-virtual {p1}, Lteam/opay/odialog/net/AdDataItem;->getButtonConfirmTitle()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    goto :goto_5

    .line 135
    :cond_6
    move-object p1, v3

    .line 136
    :goto_5
    if-eqz p1, :cond_8

    .line 137
    .line 138
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 139
    .line 140
    .line 141
    move-result p2

    .line 142
    if-nez p2, :cond_7

    .line 143
    .line 144
    goto :goto_6

    .line 145
    :cond_7
    const/4 p2, 0x0

    .line 146
    goto :goto_7

    .line 147
    :cond_8
    :goto_6
    const/4 p2, 0x1

    .line 148
    :goto_7
    if-nez p2, :cond_9

    .line 149
    .line 150
    goto :goto_8

    .line 151
    :cond_9
    move-object p1, v3

    .line 152
    :goto_8
    if-eqz p1, :cond_d

    .line 153
    .line 154
    invoke-virtual {p0}, Lcom/opay/team/home/dialog/HomeConfigDialogV2;->N()Lnb3;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    iget-object p2, p2, Lnb3;->b:Landroid/view/View;

    .line 159
    .line 160
    if-eqz p2, :cond_a

    .line 161
    .line 162
    invoke-static {p2}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 163
    .line 164
    .line 165
    :cond_a
    invoke-virtual {p0}, Lcom/opay/team/home/dialog/HomeConfigDialogV2;->N()Lnb3;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    iget-object p2, p2, Lnb3;->d:Lcom/google/android/material/button/MaterialButton;

    .line 170
    .line 171
    if-eqz p2, :cond_b

    .line 172
    .line 173
    invoke-static {p2}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 174
    .line 175
    .line 176
    :cond_b
    invoke-virtual {p0}, Lcom/opay/team/home/dialog/HomeConfigDialogV2;->N()Lnb3;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    iget-object p2, p2, Lnb3;->d:Lcom/google/android/material/button/MaterialButton;

    .line 181
    .line 182
    if-eqz p2, :cond_c

    .line 183
    .line 184
    invoke-static {p1}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    .line 190
    .line 191
    :cond_c
    invoke-virtual {p0}, Lcom/opay/team/home/dialog/HomeConfigDialogV2;->N()Lnb3;

    .line 192
    .line 193
    .line 194
    move-result-object p2

    .line 195
    iget-object p2, p2, Lnb3;->d:Lcom/google/android/material/button/MaterialButton;

    .line 196
    .line 197
    if-eqz p2, :cond_d

    .line 198
    .line 199
    new-instance v2, Lyy6;

    .line 200
    .line 201
    invoke-direct {v2, p1, p0}, Lyy6;-><init>(Ljava/lang/String;Lcom/opay/team/home/dialog/HomeConfigDialogV2;)V

    .line 202
    .line 203
    .line 204
    invoke-static {p2, v2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 205
    .line 206
    .line 207
    :cond_d
    iget-object p1, p0, Lcom/opay/team/home/dialog/HomeConfigDialogV2;->j:Lteam/opay/odialog/net/AdDataItem;

    .line 208
    .line 209
    if-eqz p1, :cond_e

    .line 210
    .line 211
    invoke-virtual {p1}, Lteam/opay/odialog/net/AdDataItem;->getButtonCancelTitle()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    goto :goto_9

    .line 216
    :cond_e
    move-object p1, v3

    .line 217
    :goto_9
    if-eqz p1, :cond_10

    .line 218
    .line 219
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 220
    .line 221
    .line 222
    move-result p2

    .line 223
    if-nez p2, :cond_f

    .line 224
    .line 225
    goto :goto_a

    .line 226
    :cond_f
    const/4 p2, 0x0

    .line 227
    goto :goto_b

    .line 228
    :cond_10
    :goto_a
    const/4 p2, 0x1

    .line 229
    :goto_b
    if-nez p2, :cond_11

    .line 230
    .line 231
    goto :goto_c

    .line 232
    :cond_11
    move-object p1, v3

    .line 233
    :goto_c
    if-eqz p1, :cond_15

    .line 234
    .line 235
    invoke-virtual {p0}, Lcom/opay/team/home/dialog/HomeConfigDialogV2;->N()Lnb3;

    .line 236
    .line 237
    .line 238
    move-result-object p2

    .line 239
    iget-object p2, p2, Lnb3;->b:Landroid/view/View;

    .line 240
    .line 241
    if-eqz p2, :cond_12

    .line 242
    .line 243
    invoke-static {p2}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 244
    .line 245
    .line 246
    :cond_12
    invoke-virtual {p0}, Lcom/opay/team/home/dialog/HomeConfigDialogV2;->N()Lnb3;

    .line 247
    .line 248
    .line 249
    move-result-object p2

    .line 250
    iget-object p2, p2, Lnb3;->c:Lcom/google/android/material/button/MaterialButton;

    .line 251
    .line 252
    if-eqz p2, :cond_13

    .line 253
    .line 254
    invoke-static {p2}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 255
    .line 256
    .line 257
    :cond_13
    invoke-virtual {p0}, Lcom/opay/team/home/dialog/HomeConfigDialogV2;->N()Lnb3;

    .line 258
    .line 259
    .line 260
    move-result-object p2

    .line 261
    iget-object p2, p2, Lnb3;->c:Lcom/google/android/material/button/MaterialButton;

    .line 262
    .line 263
    if-eqz p2, :cond_14

    .line 264
    .line 265
    invoke-static {p1}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    .line 271
    .line 272
    :cond_14
    invoke-virtual {p0}, Lcom/opay/team/home/dialog/HomeConfigDialogV2;->N()Lnb3;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    iget-object p1, p1, Lnb3;->c:Lcom/google/android/material/button/MaterialButton;

    .line 277
    .line 278
    if-eqz p1, :cond_15

    .line 279
    .line 280
    new-instance p2, Lzy6;

    .line 281
    .line 282
    invoke-direct {p2, p0}, Lzy6;-><init>(Lcom/opay/team/home/dialog/HomeConfigDialogV2;)V

    .line 283
    .line 284
    .line 285
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 286
    .line 287
    .line 288
    :cond_15
    invoke-virtual {p0}, Lcom/opay/team/home/dialog/HomeConfigDialogV2;->N()Lnb3;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    iget-object p1, p1, Lnb3;->e:Lcom/opay/team/newhome/home/ImageLottieView;

    .line 293
    .line 294
    if-eqz p1, :cond_16

    .line 295
    .line 296
    new-instance p2, Laz6;

    .line 297
    .line 298
    invoke-direct {p2, p0}, Laz6;-><init>(Lcom/opay/team/home/dialog/HomeConfigDialogV2;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    .line 303
    .line 304
    :cond_16
    sget-object p1, Lx7b;->a:Lx7b;

    .line 305
    .line 306
    iget-object p2, p0, Lcom/opay/team/home/dialog/HomeConfigDialogV2;->j:Lteam/opay/odialog/net/AdDataItem;

    .line 307
    .line 308
    if-eqz p2, :cond_17

    .line 309
    .line 310
    invoke-virtual {p2}, Lteam/opay/odialog/net/AdDataItem;->getId()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    :cond_17
    const-string p2, "task_id"

    .line 315
    .line 316
    invoke-static {p2, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 317
    .line 318
    .line 319
    move-result-object p2

    .line 320
    new-array v1, v1, [Lkotlin/Pair;

    .line 321
    .line 322
    aput-object p2, v1, v0

    .line 323
    .line 324
    const-string p2, "home_pop_show"

    .line 325
    .line 326
    invoke-virtual {p1, p2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 327
    .line 328
    .line 329
    return-void
.end method
