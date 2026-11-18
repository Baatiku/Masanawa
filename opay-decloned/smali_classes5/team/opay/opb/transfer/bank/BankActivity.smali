.class public final Lteam/opay/opb/transfer/bank/BankActivity;
.super Liw6;
.source "BankActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0019\u0010\u000f\u001a\u00020\u00062\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0014\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lteam/opay/opb/transfer/bank/BankActivity;",
        "Lteam/opay/core/common/base/HiltActivity;",
        "<init>",
        "()V",
        "Landroid/content/Intent;",
        "intent",
        "",
        "d0",
        "(Landroid/content/Intent;)V",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "e0",
        "(Landroidx/fragment/app/Fragment;)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "business-transfer-bank_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lteam/opay/opb/transfer/bank/R$layout;->bank_activity_container:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Liw6;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final d0(Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {v0}, Lvd;->c(Landroid/net/Uri;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v1

    .line 14
    :goto_0
    const-string v2, "opay://business/bankTransfer/instruction"

    .line 15
    .line 16
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    sget-object p1, Lteam/opay/opb/transfer/bank/ui/BankInstructionFragment;->e:Lteam/opay/opb/transfer/bank/ui/BankInstructionFragment$Companion;

    .line 23
    .line 24
    invoke-virtual {p1}, Lteam/opay/opb/transfer/bank/ui/BankInstructionFragment$Companion;->a()Lteam/opay/opb/transfer/bank/ui/BankInstructionFragment;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {p0, p1}, Lteam/opay/opb/transfer/bank/BankActivity;->e0(Landroidx/fragment/app/Fragment;)V

    .line 29
    .line 30
    .line 31
    goto :goto_3

    .line 32
    :cond_1
    const-string v2, "opay://business/bankTransfer/chooseMatchedBank"

    .line 33
    .line 34
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_4

    .line 39
    .line 40
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    const/16 v2, 0x21

    .line 43
    .line 44
    const-string v3, "headers"

    .line 45
    .line 46
    if-lt v0, v2, :cond_2

    .line 47
    .line 48
    :try_start_1
    const-class v0, [Lteam/opay/opb/transfer/bank/bank/MatchedBankInfo;

    .line 49
    .line 50
    invoke-static {p1, v3, v0}, Lsqb;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    :goto_1
    move-object v1, p1

    .line 55
    goto :goto_2

    .line 56
    :cond_2
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    instance-of v0, p1, [Lteam/opay/opb/transfer/bank/bank/MatchedBankInfo;

    .line 61
    .line 62
    if-nez v0, :cond_3

    .line 63
    .line 64
    move-object p1, v1

    .line 65
    :cond_3
    check-cast p1, [Lteam/opay/opb/transfer/bank/bank/MatchedBankInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :catch_0
    :goto_2
    check-cast v1, [Lteam/opay/opb/transfer/bank/bank/MatchedBankInfo;

    .line 69
    .line 70
    sget-object p1, Lteam/opay/opb/transfer/bank/bank/MatchedBankChooseFragment;->n:Lteam/opay/opb/transfer/bank/bank/MatchedBankChooseFragment$Companion;

    .line 71
    .line 72
    invoke-virtual {p1, v1}, Lteam/opay/opb/transfer/bank/bank/MatchedBankChooseFragment$Companion;->a([Lteam/opay/opb/transfer/bank/bank/MatchedBankInfo;)Lteam/opay/opb/transfer/bank/bank/MatchedBankChooseFragment;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-direct {p0, p1}, Lteam/opay/opb/transfer/bank/BankActivity;->e0(Landroidx/fragment/app/Fragment;)V

    .line 77
    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_4
    sget p1, Lteam/opay/core/common/R$string;->common_not_supported:I

    .line 81
    .line 82
    invoke-static {p0, p1}, Let;->u(Landroid/content/Context;I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 86
    .line 87
    .line 88
    :goto_3
    return-void
.end method

.method private final e0(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 1
    sget v0, Lteam/opay/opb/transfer/bank/R$id;->fragment_container:I

    .line 2
    .line 3
    invoke-static {p0, v0, p1}, Lre6;->k(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Liw6;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v0, "getIntent(...)"

    .line 17
    .line 18
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1}, Lteam/opay/opb/transfer/bank/BankActivity;->d0(Landroid/content/Intent;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object p1, Lhf5;->a:Lhf5;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p1, p0, v0}, Lhf5;->b(Landroid/app/Activity;Z)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
