.class public final Lteam/opay/pay/home/security/HomePageSettingsActivity;
.super Lteam/opay/pay/home/security/Hilt_HomePageSettingsActivity;
.source "HomePageSettingsActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\u0003R\u001b\u0010\u000f\u001a\u00020\n8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000eR\u0016\u0010\u0013\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u001b\u0010\u0018\u001a\u00020\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u000c\u001a\u0004\u0008\u0016\u0010\u0017R\u0016\u0010\u001a\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u0012\u00a8\u0006\u001b"
    }
    d2 = {
        "Lteam/opay/pay/home/security/HomePageSettingsActivity;",
        "Lteam/opay/pay/android/BaseActivity;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onPostCreate",
        "(Landroid/os/Bundle;)V",
        "onBackPressed",
        "Laf;",
        "e",
        "Lid8;",
        "F",
        "()Laf;",
        "viewBinding",
        "",
        "f",
        "Z",
        "adjustment",
        "Lcom/opay/team/home/HomeSettingsStorage;",
        "g",
        "E",
        "()Lcom/opay/team/home/HomeSettingsStorage;",
        "storage",
        "h",
        "oldIschecked",
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
.field public final e:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Z

.field public final g:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->activity_home_page_settings:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/home/security/Hilt_HomePageSettingsActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, La17;

    .line 7
    .line 8
    invoke-direct {v0, p0}, La17;-><init>(Lteam/opay/pay/home/security/HomePageSettingsActivity;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lteam/opay/pay/home/security/HomePageSettingsActivity;->e:Lid8;

    .line 16
    .line 17
    new-instance v0, Lb17;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lb17;-><init>(Lteam/opay/pay/home/security/HomePageSettingsActivity;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lteam/opay/pay/home/security/HomePageSettingsActivity;->g:Lid8;

    .line 27
    .line 28
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/home/security/HomePageSettingsActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/security/HomePageSettingsActivity;->H(Lteam/opay/pay/home/security/HomePageSettingsActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic B(Lteam/opay/pay/home/security/HomePageSettingsActivity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/home/security/HomePageSettingsActivity;->G(Lteam/opay/pay/home/security/HomePageSettingsActivity;Landroid/widget/CompoundButton;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic C(Lteam/opay/pay/home/security/HomePageSettingsActivity;)Lcom/opay/team/home/HomeSettingsStorage;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/security/HomePageSettingsActivity;->I(Lteam/opay/pay/home/security/HomePageSettingsActivity;)Lcom/opay/team/home/HomeSettingsStorage;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic D(Lteam/opay/pay/home/security/HomePageSettingsActivity;)Laf;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/security/HomePageSettingsActivity;->J(Lteam/opay/pay/home/security/HomePageSettingsActivity;)Laf;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final G(Lteam/opay/pay/home/security/HomePageSettingsActivity;Landroid/widget/CompoundButton;Z)V
    .locals 7

    .line 1
    const/4 p1, 0x1

    .line 2
    sget-object v0, Lx7b;->a:Lx7b;

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    const-string v1, "on"

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const-string v1, "off"

    .line 10
    .line 11
    :goto_0
    const-string v2, "status"

    .line 12
    .line 13
    invoke-static {v2, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-array v2, p1, [Lkotlin/Pair;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    aput-object v1, v2, v3

    .line 21
    .line 22
    const-string v1, "settings_homepage_settings_page_toggle_click"

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lteam/opay/pay/home/security/HomePageSettingsActivity;->E()Lcom/opay/team/home/HomeSettingsStorage;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0, p2}, Lcom/opay/team/home/HomeSettingsStorage;->x(Z)V

    .line 32
    .line 33
    .line 34
    sget-object v1, Lteam/opay/pay/util/FlowBus;->a:Lteam/opay/pay/util/FlowBus;

    .line 35
    .line 36
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const/4 v5, 0x4

    .line 41
    const/4 v6, 0x0

    .line 42
    const-string v2, "home_page_transfer_list_setting"

    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    invoke-static/range {v1 .. v6}, Lteam/opay/pay/util/FlowBus;->i(Lteam/opay/pay/util/FlowBus;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iput-boolean p1, p0, Lteam/opay/pay/home/security/HomePageSettingsActivity;->f:Z

    .line 49
    .line 50
    return-void
.end method

.method public static final H(Lteam/opay/pay/home/security/HomePageSettingsActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/security/HomePageSettingsActivity;->onBackPressed()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final I(Lteam/opay/pay/home/security/HomePageSettingsActivity;)Lcom/opay/team/home/HomeSettingsStorage;
    .locals 1

    .line 1
    new-instance v0, Lcom/opay/team/home/HomeSettingsStorage;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/opay/team/home/HomeSettingsStorage;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final J(Lteam/opay/pay/home/security/HomePageSettingsActivity;)Laf;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Laf;->inflate(Landroid/view/LayoutInflater;)Laf;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public final E()Lcom/opay/team/home/HomeSettingsStorage;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/security/HomePageSettingsActivity;->g:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/opay/team/home/HomeSettingsStorage;

    .line 8
    .line 9
    return-object v0
.end method

.method public F()Laf;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/security/HomePageSettingsActivity;->e:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Laf;

    .line 8
    .line 9
    return-object v0
.end method

.method public bridge synthetic getViewBinding()Lxyf;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/security/HomePageSettingsActivity;->F()Laf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public onBackPressed()V
    .locals 11

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    iget-boolean v3, p0, Lteam/opay/pay/home/security/HomePageSettingsActivity;->f:Z

    .line 5
    .line 6
    const-string v4, "1"

    .line 7
    .line 8
    const-string v5, "adjustment"

    .line 9
    .line 10
    const-string v6, "off"

    .line 11
    .line 12
    const-string v7, "on"

    .line 13
    .line 14
    const-string v8, "status"

    .line 15
    .line 16
    const-string v9, "settings_homepage_settings_page_return_click"

    .line 17
    .line 18
    if-nez v3, :cond_2

    .line 19
    .line 20
    sget-object v3, Lx7b;->a:Lx7b;

    .line 21
    .line 22
    invoke-virtual {p0}, Lteam/opay/pay/home/security/HomePageSettingsActivity;->E()Lcom/opay/team/home/HomeSettingsStorage;

    .line 23
    .line 24
    .line 25
    move-result-object v10

    .line 26
    invoke-virtual {v10}, Lcom/opay/team/home/HomeSettingsStorage;->h()Z

    .line 27
    .line 28
    .line 29
    move-result v10

    .line 30
    if-eqz v10, :cond_0

    .line 31
    .line 32
    move-object v6, v7

    .line 33
    :cond_0
    invoke-static {v8, v6}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    const-string v7, "0"

    .line 38
    .line 39
    invoke-static {v5, v7}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    iget-boolean v8, p0, Lteam/opay/pay/home/security/HomePageSettingsActivity;->h:Z

    .line 44
    .line 45
    if-eqz v8, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    move-object v4, v7

    .line 49
    :goto_0
    const-string v7, "noChange"

    .line 50
    .line 51
    invoke-static {v7, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    const/4 v7, 0x3

    .line 56
    new-array v7, v7, [Lkotlin/Pair;

    .line 57
    .line 58
    aput-object v6, v7, v2

    .line 59
    .line 60
    aput-object v5, v7, v1

    .line 61
    .line 62
    aput-object v4, v7, v0

    .line 63
    .line 64
    invoke-virtual {v3, v9, v7}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    sget-object v3, Lx7b;->a:Lx7b;

    .line 69
    .line 70
    invoke-virtual {p0}, Lteam/opay/pay/home/security/HomePageSettingsActivity;->E()Lcom/opay/team/home/HomeSettingsStorage;

    .line 71
    .line 72
    .line 73
    move-result-object v10

    .line 74
    invoke-virtual {v10}, Lcom/opay/team/home/HomeSettingsStorage;->h()Z

    .line 75
    .line 76
    .line 77
    move-result v10

    .line 78
    if-eqz v10, :cond_3

    .line 79
    .line 80
    move-object v6, v7

    .line 81
    :cond_3
    invoke-static {v8, v6}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    invoke-static {v5, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    new-array v0, v0, [Lkotlin/Pair;

    .line 90
    .line 91
    aput-object v6, v0, v2

    .line 92
    .line 93
    aput-object v4, v0, v1

    .line 94
    .line 95
    invoke-virtual {v3, v9, v0}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 96
    .line 97
    .line 98
    :goto_1
    invoke-super {p0}, Lteam/opay/core/android/InjectableActivity;->onBackPressed()V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/pay/home/security/HomePageSettingsActivity;->E()Lcom/opay/team/home/HomeSettingsStorage;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/opay/team/home/HomeSettingsStorage;->h()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iput-boolean p1, p0, Lteam/opay/pay/home/security/HomePageSettingsActivity;->h:Z

    .line 13
    .line 14
    invoke-virtual {p0}, Lteam/opay/pay/home/security/HomePageSettingsActivity;->F()Laf;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object p1, p1, Laf;->d:Landroidx/appcompat/widget/SwitchCompat;

    .line 19
    .line 20
    iget-boolean v0, p0, Lteam/opay/pay/home/security/HomePageSettingsActivity;->h:Z

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lteam/opay/pay/home/security/HomePageSettingsActivity;->F()Laf;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-object p1, p1, Laf;->d:Landroidx/appcompat/widget/SwitchCompat;

    .line 30
    .line 31
    new-instance v0, Ly07;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Ly07;-><init>(Lteam/opay/pay/home/security/HomePageSettingsActivity;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lteam/opay/pay/home/security/HomePageSettingsActivity;->F()Laf;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iget-object p1, p1, Laf;->b:Lteam/opay/core/android/views/OpayActionBar;

    .line 44
    .line 45
    new-instance v0, Lz07;

    .line 46
    .line 47
    invoke-direct {v0, p0}, Lz07;-><init>(Lteam/opay/pay/home/security/HomePageSettingsActivity;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Lteam/opay/core/android/views/OpayActionBar;->setBackNavigationListener(Lkotlin/jvm/functions/Function0;)V

    .line 51
    .line 52
    .line 53
    sget-object p1, Lx7b;->a:Lx7b;

    .line 54
    .line 55
    iget-boolean v0, p0, Lteam/opay/pay/home/security/HomePageSettingsActivity;->h:Z

    .line 56
    .line 57
    if-eqz v0, :cond_0

    .line 58
    .line 59
    const-string v0, "on"

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const-string v0, "off"

    .line 63
    .line 64
    :goto_0
    const-string v1, "status"

    .line 65
    .line 66
    invoke-static {v1, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const/4 v1, 0x1

    .line 71
    new-array v1, v1, [Lkotlin/Pair;

    .line 72
    .line 73
    const/4 v2, 0x0

    .line 74
    aput-object v0, v1, v2

    .line 75
    .line 76
    const-string v0, "settings_homepage_settings_page_show"

    .line 77
    .line 78
    invoke-virtual {p1, v0, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method
