.class public final Lteam/opay/pay/home/tabs/ac/BankTransferDispatchActivity;
.super Lteam/opay/pay/home/tabs/ac/Hilt_BankTransferDispatchActivity;
.source "BankTransferDispatchActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\u000c\u001a\u00020\t8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000e\u001a\u00020\t8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\t8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u000bR\u0014\u0010\u0012\u001a\u00020\t8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u000bR\u0014\u0010\u0014\u001a\u00020\t8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u000bR\u0014\u0010\u0016\u001a\u00020\t8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u000bR\u001b\u0010\u001c\u001a\u00020\u00178VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001d"
    }
    d2 = {
        "Lteam/opay/pay/home/tabs/ac/BankTransferDispatchActivity;",
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
        "KEY_ACCOUNT_NUMBER",
        "f",
        "KEY_BANK_CODE",
        "g",
        "KEY_AMOUNT",
        "h",
        "KEY_ICON",
        "i",
        "KEY_BANK_NAME",
        "j",
        "KEY_BUSINESS_SCENE_SOURCE",
        "Lue;",
        "k",
        "Lid8;",
        "B",
        "()Lue;",
        "viewBinding",
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

.field public final f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->activity_fragment_container_below_actionbar:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/home/tabs/ac/Hilt_BankTransferDispatchActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    const-string v0, "accountNumber"

    .line 7
    .line 8
    iput-object v0, p0, Lteam/opay/pay/home/tabs/ac/BankTransferDispatchActivity;->e:Ljava/lang/String;

    .line 9
    .line 10
    const-string v0, "bankCode"

    .line 11
    .line 12
    iput-object v0, p0, Lteam/opay/pay/home/tabs/ac/BankTransferDispatchActivity;->f:Ljava/lang/String;

    .line 13
    .line 14
    const-string v0, "amount"

    .line 15
    .line 16
    iput-object v0, p0, Lteam/opay/pay/home/tabs/ac/BankTransferDispatchActivity;->g:Ljava/lang/String;

    .line 17
    .line 18
    const-string v0, "bankIcon"

    .line 19
    .line 20
    iput-object v0, p0, Lteam/opay/pay/home/tabs/ac/BankTransferDispatchActivity;->h:Ljava/lang/String;

    .line 21
    .line 22
    const-string v0, "bankName"

    .line 23
    .line 24
    iput-object v0, p0, Lteam/opay/pay/home/tabs/ac/BankTransferDispatchActivity;->i:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "businessSceneSource"

    .line 27
    .line 28
    iput-object v0, p0, Lteam/opay/pay/home/tabs/ac/BankTransferDispatchActivity;->j:Ljava/lang/String;

    .line 29
    .line 30
    new-instance v0, Lnk0;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Lnk0;-><init>(Lteam/opay/pay/home/tabs/ac/BankTransferDispatchActivity;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lteam/opay/pay/home/tabs/ac/BankTransferDispatchActivity;->k:Lid8;

    .line 40
    .line 41
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/home/tabs/ac/BankTransferDispatchActivity;)Lue;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/tabs/ac/BankTransferDispatchActivity;->C(Lteam/opay/pay/home/tabs/ac/BankTransferDispatchActivity;)Lue;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final C(Lteam/opay/pay/home/tabs/ac/BankTransferDispatchActivity;)Lue;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lue;->inflate(Landroid/view/LayoutInflater;)Lue;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public B()Lue;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/tabs/ac/BankTransferDispatchActivity;->k:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lue;

    .line 8
    .line 9
    return-object v0
.end method

.method public bridge synthetic getViewBinding()Lxyf;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/BankTransferDispatchActivity;->B()Lue;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/BankTransferDispatchActivity;->B()Lue;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object p1, p1, Lue;->c:Lteam/opay/core/android/views/PulseLoaderView;

    .line 9
    .line 10
    const-string v0, "fragmentLoading"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/home/tabs/ac/BankTransferDispatchActivity;->e:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lteam/opay/pay/home/tabs/ac/BankTransferDispatchActivity;->f:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iget-object v2, p0, Lteam/opay/pay/home/tabs/ac/BankTransferDispatchActivity;->i:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iget-object v3, p0, Lteam/opay/pay/home/tabs/ac/BankTransferDispatchActivity;->g:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    iget-object v4, p0, Lteam/opay/pay/home/tabs/ac/BankTransferDispatchActivity;->h:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    iget-object v5, p0, Lteam/opay/pay/home/tabs/ac/BankTransferDispatchActivity;->j:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    sget v5, Lteam/opay/pay/R$id;->fragment_container:I

    .line 69
    .line 70
    sget-object v6, Lteam/opay/pay/home/tabs/ac/BankTransferDispatchFragment;->v:Lteam/opay/pay/home/tabs/ac/BankTransferDispatchFragment$Companion;

    .line 71
    .line 72
    const-string v7, ""

    .line 73
    .line 74
    if-nez v0, :cond_1

    .line 75
    .line 76
    move-object v0, v7

    .line 77
    :cond_1
    if-nez v1, :cond_2

    .line 78
    .line 79
    move-object v8, v7

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    move-object v8, v1

    .line 82
    :goto_0
    if-nez v4, :cond_3

    .line 83
    .line 84
    move-object v9, v7

    .line 85
    goto :goto_1

    .line 86
    :cond_3
    move-object v9, v4

    .line 87
    :goto_1
    if-nez v2, :cond_4

    .line 88
    .line 89
    move-object v10, v7

    .line 90
    goto :goto_2

    .line 91
    :cond_4
    move-object v10, v2

    .line 92
    :goto_2
    if-nez v3, :cond_5

    .line 93
    .line 94
    move-object v11, v7

    .line 95
    goto :goto_3

    .line 96
    :cond_5
    move-object v11, v3

    .line 97
    :goto_3
    if-nez p1, :cond_6

    .line 98
    .line 99
    move-object v12, v7

    .line 100
    goto :goto_4

    .line 101
    :cond_6
    move-object v12, p1

    .line 102
    :goto_4
    move-object v7, v0

    .line 103
    invoke-virtual/range {v6 .. v12}, Lteam/opay/pay/home/tabs/ac/BankTransferDispatchFragment$Companion;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lteam/opay/pay/home/tabs/ac/BankTransferDispatchFragment;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-static {p0, v5, p1}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 108
    .line 109
    .line 110
    return-void
.end method
