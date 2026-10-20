.class public final Lteam/opay/pay/home/dialog/HomeThemeNoticeTask;
.super Lteam/opay/pay/home/dialog/HomeDialogTask;
.source "HomeThemeNoticeTask.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0011\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0011\u0010\n\u001a\u0004\u0018\u00010\tH\u0014\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0012\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0096@\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0008J\u000f\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u0013R\u001b\u0010\u0018\u001a\u00020\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u0019"
    }
    d2 = {
        "Lteam/opay/pay/home/dialog/HomeThemeNoticeTask;",
        "Lteam/opay/pay/home/dialog/HomeDialogTask;",
        "Landroid/app/Activity;",
        "activity",
        "<init>",
        "(Landroid/app/Activity;)V",
        "",
        "k",
        "()Z",
        "Lkotlinx/coroutines/l;",
        "e",
        "()Lkotlinx/coroutines/l;",
        "Landroidx/fragment/app/DialogFragment;",
        "d",
        "(Ljr2;)Ljava/lang/Object;",
        "n",
        "Lteam/opay/pay/settings/CommonTwoButtonDialogFragment;",
        "o",
        "()Lteam/opay/pay/settings/CommonTwoButtonDialogFragment;",
        "Landroid/app/Activity;",
        "Lteam/opay/core/settings/NoClearStorage;",
        "Lid8;",
        "q",
        "()Lteam/opay/core/settings/NoClearStorage;",
        "storage",
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


# instance fields
.field public final d:Landroid/app/Activity;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final e:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/home/dialog/HomeDialogTask;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lteam/opay/pay/home/dialog/HomeThemeNoticeTask;->d:Landroid/app/Activity;

    .line 5
    .line 6
    new-instance p1, Ll27;

    .line 7
    .line 8
    invoke-direct {p1}, Ll27;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lteam/opay/pay/home/dialog/HomeThemeNoticeTask;->e:Lid8;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic l()Lteam/opay/core/settings/NoClearStorage;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/home/dialog/HomeThemeNoticeTask;->r()Lteam/opay/core/settings/NoClearStorage;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic m(Lteam/opay/pay/home/dialog/HomeThemeNoticeTask;Lteam/opay/pay/settings/CommonTwoButtonDialogFragment;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/home/dialog/HomeThemeNoticeTask;->p(Lteam/opay/pay/home/dialog/HomeThemeNoticeTask;Lteam/opay/pay/settings/CommonTwoButtonDialogFragment;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final p(Lteam/opay/pay/home/dialog/HomeThemeNoticeTask;Lteam/opay/pay/settings/CommonTwoButtonDialogFragment;Z)Lkotlin/Unit;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    sget-object p2, Lx7b;->a:Lx7b;

    .line 5
    .line 6
    const-string v1, "themes_popup_proceed"

    .line 7
    .line 8
    new-array v0, v0, [Lkotlin/Pair;

    .line 9
    .line 10
    invoke-virtual {p2, v1, v0}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lteam/opay/pay/home/dialog/HomeThemeNoticeTask;->q()Lteam/opay/core/settings/NoClearStorage;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const/4 p2, 0x3

    .line 18
    invoke-virtual {p0, p2}, Lteam/opay/core/settings/NoClearStorage;->y1(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    if-eqz p0, :cond_1

    .line 26
    .line 27
    sget-object p1, Lteam/opay/pay/home/security/SecurityEntranceActivity;->n:Lteam/opay/pay/home/security/SecurityEntranceActivity$Companion;

    .line 28
    .line 29
    const-string p2, "THEMES"

    .line 30
    .line 31
    invoke-virtual {p1, p0, p2}, Lteam/opay/pay/home/security/SecurityEntranceActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    sget-object p0, Lx7b;->a:Lx7b;

    .line 36
    .line 37
    const-string p1, "themes_popup_later"

    .line 38
    .line 39
    new-array p2, v0, [Lkotlin/Pair;

    .line 40
    .line 41
    invoke-virtual {p0, p1, p2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 45
    .line 46
    return-object p0
.end method

.method public static final r()Lteam/opay/core/settings/NoClearStorage;
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/core/settings/NoClearStorage;

    .line 2
    .line 3
    invoke-static {}, Ljmf;->i()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lteam/opay/core/settings/NoClearStorage;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method


# virtual methods
.method public d(Ljr2;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljr2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljr2<",
            "-",
            "Landroidx/fragment/app/DialogFragment;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/dialog/HomeThemeNoticeTask;->o()Lteam/opay/pay/settings/CommonTwoButtonDialogFragment;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public e()Lkotlinx/coroutines/l;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public k()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/dialog/HomeThemeNoticeTask;->n()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final n()Z
    .locals 6

    .line 1
    sget-object v0, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager;->i()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    invoke-virtual {p0}, Lteam/opay/pay/home/dialog/HomeThemeNoticeTask;->q()Lteam/opay/core/settings/NoClearStorage;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lteam/opay/core/settings/NoClearStorage;->U()J

    .line 24
    .line 25
    .line 26
    move-result-wide v4

    .line 27
    sub-long/2addr v2, v4

    .line 28
    const v0, 0x240c8400

    .line 29
    .line 30
    .line 31
    int-to-long v4, v0

    .line 32
    cmp-long v0, v2, v4

    .line 33
    .line 34
    if-lez v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0}, Lteam/opay/pay/home/dialog/HomeThemeNoticeTask;->q()Lteam/opay/core/settings/NoClearStorage;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lteam/opay/core/settings/NoClearStorage;->T()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const/4 v2, 0x3

    .line 45
    if-lt v0, v2, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    sget-object v0, Lc03;->a:Lc03;

    .line 49
    .line 50
    invoke-virtual {v0}, Lc03;->d()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    invoke-virtual {v0}, Lc03;->c()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_2

    .line 61
    .line 62
    const/4 v1, 0x1

    .line 63
    :cond_2
    :goto_0
    return v1
.end method

.method public final o()Lteam/opay/pay/settings/CommonTwoButtonDialogFragment;
    .locals 13

    .line 1
    sget-object v0, Lteam/opay/pay/settings/CommonTwoButtonDialogFragment;->l:Lteam/opay/pay/settings/CommonTwoButtonDialogFragment$Companion;

    .line 2
    .line 3
    new-instance v12, Lteam/opay/pay/settings/CommonTwoButtonDialogFragmentInfo;

    .line 4
    .line 5
    sget v1, Lteam/opay/pay/R$string;->osdk_theme_switch:I

    .line 6
    .line 7
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    sget v1, Lteam/opay/pay/R$string;->osdk_theme_switch_tips:I

    .line 12
    .line 13
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    sget v1, Lteam/opay/pay/R$string;->proceed:I

    .line 18
    .line 19
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    sget v1, Lteam/opay/pay/R$string;->osdk_later:I

    .line 24
    .line 25
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    sget v1, Lteam/opay/pay/R$drawable;->gradient_e2f5eb_white:I

    .line 30
    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v9

    .line 35
    const/16 v10, 0x70

    .line 36
    .line 37
    const/4 v11, 0x0

    .line 38
    const/4 v6, 0x0

    .line 39
    const/4 v7, 0x0

    .line 40
    const/4 v8, 0x0

    .line 41
    move-object v1, v12

    .line 42
    invoke-direct/range {v1 .. v11}, Lteam/opay/pay/settings/CommonTwoButtonDialogFragmentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZFLjava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v12}, Lteam/opay/pay/settings/CommonTwoButtonDialogFragment$Companion;->a(Lteam/opay/pay/settings/CommonTwoButtonDialogFragmentInfo;)Lteam/opay/pay/settings/CommonTwoButtonDialogFragment;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    new-instance v1, Lm27;

    .line 50
    .line 51
    invoke-direct {v1, p0, v0}, Lm27;-><init>(Lteam/opay/pay/home/dialog/HomeThemeNoticeTask;Lteam/opay/pay/settings/CommonTwoButtonDialogFragment;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lteam/opay/pay/settings/CommonTwoButtonDialogFragment;->Q(Lkotlin/jvm/functions/Function1;)V

    .line 55
    .line 56
    .line 57
    sget-object v1, Lx7b;->a:Lx7b;

    .line 58
    .line 59
    const/4 v2, 0x0

    .line 60
    new-array v2, v2, [Lkotlin/Pair;

    .line 61
    .line 62
    const-string v3, "themes_popup_show"

    .line 63
    .line 64
    invoke-virtual {v1, v3, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 65
    .line 66
    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 68
    .line 69
    .line 70
    move-result-wide v1

    .line 71
    invoke-virtual {p0}, Lteam/opay/pay/home/dialog/HomeThemeNoticeTask;->q()Lteam/opay/core/settings/NoClearStorage;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v3, v1, v2}, Lteam/opay/core/settings/NoClearStorage;->z1(J)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lteam/opay/pay/home/dialog/HomeThemeNoticeTask;->q()Lteam/opay/core/settings/NoClearStorage;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v1}, Lteam/opay/core/settings/NoClearStorage;->T()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    add-int/lit8 v2, v2, 0x1

    .line 87
    .line 88
    invoke-virtual {v1, v2}, Lteam/opay/core/settings/NoClearStorage;->y1(I)V

    .line 89
    .line 90
    .line 91
    return-object v0
.end method

.method public final q()Lteam/opay/core/settings/NoClearStorage;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/dialog/HomeThemeNoticeTask;->e:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/core/settings/NoClearStorage;

    .line 8
    .line 9
    return-object v0
.end method
