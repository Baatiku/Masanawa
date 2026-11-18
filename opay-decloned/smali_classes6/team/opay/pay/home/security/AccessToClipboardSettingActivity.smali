.class public final Lteam/opay/pay/home/security/AccessToClipboardSettingActivity;
.super Lteam/opay/pay/home/security/Hilt_AccessToClipboardSettingActivity;
.source "AccessToClipboardSettingActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\u000e\u001a\u00020\t8\u0016X\u0096D\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\rR\u001b\u0010\u0014\u001a\u00020\u000f8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R\u001b\u0010\u0019\u001a\u00020\u00158BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0011\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001a"
    }
    d2 = {
        "Lteam/opay/pay/home/security/AccessToClipboardSettingActivity;",
        "Lteam/opay/pay/android/BaseActivity;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onPostCreate",
        "(Landroid/os/Bundle;)V",
        "",
        "e",
        "Ljava/lang/String;",
        "getTAG",
        "()Ljava/lang/String;",
        "TAG",
        "Lde;",
        "f",
        "Lid8;",
        "E",
        "()Lde;",
        "viewBinding",
        "Lteam/opay/core/settings/NoClearStorage;",
        "g",
        "D",
        "()Lteam/opay/core/settings/NoClearStorage;",
        "settingStorage",
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
.field public final e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->activity_access_to_clipboard:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/home/security/Hilt_AccessToClipboardSettingActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    const-string v0, "AccessToClipboardSettingActivity"

    .line 7
    .line 8
    iput-object v0, p0, Lteam/opay/pay/home/security/AccessToClipboardSettingActivity;->e:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v0, Ll8;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Ll8;-><init>(Lteam/opay/pay/home/security/AccessToClipboardSettingActivity;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lteam/opay/pay/home/security/AccessToClipboardSettingActivity;->f:Lid8;

    .line 20
    .line 21
    new-instance v0, Lm8;

    .line 22
    .line 23
    invoke-direct {v0}, Lm8;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lteam/opay/pay/home/security/AccessToClipboardSettingActivity;->g:Lid8;

    .line 31
    .line 32
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/home/security/AccessToClipboardSettingActivity;)Lde;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/security/AccessToClipboardSettingActivity;->H(Lteam/opay/pay/home/security/AccessToClipboardSettingActivity;)Lde;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic B()Lteam/opay/core/settings/NoClearStorage;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/home/security/AccessToClipboardSettingActivity;->G()Lteam/opay/core/settings/NoClearStorage;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic C(Lteam/opay/pay/home/security/AccessToClipboardSettingActivity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/home/security/AccessToClipboardSettingActivity;->F(Lteam/opay/pay/home/security/AccessToClipboardSettingActivity;Landroid/widget/CompoundButton;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final F(Lteam/opay/pay/home/security/AccessToClipboardSettingActivity;Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    sget-object v0, Lx7b;->a:Lx7b;

    .line 5
    .line 6
    const-string v1, "access_clipboard_open_click"

    .line 7
    .line 8
    new-array p1, p1, [Lkotlin/Pair;

    .line 9
    .line 10
    invoke-virtual {v0, v1, p1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object v0, Lx7b;->a:Lx7b;

    .line 15
    .line 16
    const-string v1, "access_clipboard_close_click"

    .line 17
    .line 18
    new-array p1, p1, [Lkotlin/Pair;

    .line 19
    .line 20
    invoke-virtual {v0, v1, p1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-virtual {p0}, Lteam/opay/pay/home/security/AccessToClipboardSettingActivity;->D()Lteam/opay/core/settings/NoClearStorage;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0, p2}, Lteam/opay/core/settings/NoClearStorage;->W0(Z)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public static final G()Lteam/opay/core/settings/NoClearStorage;
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

.method public static final H(Lteam/opay/pay/home/security/AccessToClipboardSettingActivity;)Lde;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lde;->inflate(Landroid/view/LayoutInflater;)Lde;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public final D()Lteam/opay/core/settings/NoClearStorage;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/security/AccessToClipboardSettingActivity;->g:Lid8;

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

.method public E()Lde;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/security/AccessToClipboardSettingActivity;->f:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lde;

    .line 8
    .line 9
    return-object v0
.end method

.method public getTAG()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/security/AccessToClipboardSettingActivity;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getViewBinding()Lxyf;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/security/AccessToClipboardSettingActivity;->E()Lde;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/pay/home/security/AccessToClipboardSettingActivity;->E()Lde;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object p1, p1, Lde;->c:Landroidx/appcompat/widget/SwitchCompat;

    .line 9
    .line 10
    invoke-virtual {p0}, Lteam/opay/pay/home/security/AccessToClipboardSettingActivity;->D()Lteam/opay/core/settings/NoClearStorage;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lteam/opay/core/settings/NoClearStorage;->r()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lteam/opay/pay/home/security/AccessToClipboardSettingActivity;->E()Lde;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object p1, p1, Lde;->c:Landroidx/appcompat/widget/SwitchCompat;

    .line 26
    .line 27
    new-instance v0, Ln8;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Ln8;-><init>(Lteam/opay/pay/home/security/AccessToClipboardSettingActivity;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 33
    .line 34
    .line 35
    sget-object p1, Lx7b;->a:Lx7b;

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    new-array v0, v0, [Lkotlin/Pair;

    .line 39
    .line 40
    const-string v1, "access_clipboard_page_show"

    .line 41
    .line 42
    invoke-virtual {p1, v1, v0}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
