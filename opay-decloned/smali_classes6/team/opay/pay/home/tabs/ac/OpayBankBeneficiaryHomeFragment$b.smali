.class public final Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment$b;
.super Ljava/lang/Object;
.source "OpayBankBeneficiaryHomeFragment.kt"

# interfaces
.implements Lteam/opay/pay/android/views/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u0008J5\u0010\u000f\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00022\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "team/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment$b",
        "Lteam/opay/pay/android/views/e;",
        "",
        "c",
        "()Z",
        "valid",
        "",
        "g",
        "(Z)V",
        "isSending",
        "b",
        "",
        "name",
        "errorCode",
        "errorMessage",
        "a",
        "(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
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
.field public final synthetic a:Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment$b;->a:Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic i(Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment$b;->j(Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final j(Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;)Lkotlin/Unit;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    check-cast v1, Lug6;

    .line 7
    .line 8
    iget-object v1, v1, Lug6;->f:Lteam/opay/pay/home/tabs/ac/BankAccountInputText;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1}, Lteam/opay/pay/home/tabs/ac/BankAccountInputText;->Y()V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-static {p0}, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;->G0(Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;)Lteam/opay/pay/api/UserBanksMate;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {v1}, Lteam/opay/pay/api/UserBanksMate;->getAccurateBanks()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move-object v1, v2

    .line 28
    :goto_0
    if-eqz v1, :cond_6

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lug6;

    .line 42
    .line 43
    iget-object v1, v1, Lug6;->t:Landroidx/constraintlayout/widget/Group;

    .line 44
    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 48
    .line 49
    .line 50
    :cond_3
    sget-object v1, Lx7b;->a:Lx7b;

    .line 51
    .line 52
    const-string v3, "user_type"

    .line 53
    .line 54
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;->m1()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-static {v3, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    const/4 v4, 0x1

    .line 63
    new-array v4, v4, [Lkotlin/Pair;

    .line 64
    .line 65
    aput-object v3, v4, v0

    .line 66
    .line 67
    const-string v3, "ac_home_matched_bank_page_show"

    .line 68
    .line 69
    invoke-virtual {v1, v3, v4}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 70
    .line 71
    .line 72
    invoke-static {p0}, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;->D0(Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;)Lteam/opay/pay/home/tabs/ac/RecoBankAdapter;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-static {p0}, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;->G0(Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;)Lteam/opay/pay/api/UserBanksMate;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    if-eqz p0, :cond_5

    .line 81
    .line 82
    invoke-virtual {p0}, Lteam/opay/pay/api/UserBanksMate;->getAccurateBanks()Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    if-eqz p0, :cond_5

    .line 87
    .line 88
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    const/4 v3, 0x3

    .line 93
    if-le v2, v3, :cond_4

    .line 94
    .line 95
    invoke-interface {p0, v0, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    :cond_4
    move-object v2, p0

    .line 100
    :cond_5
    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 101
    .line 102
    .line 103
    :cond_6
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 104
    .line 105
    return-object p0
.end method


# virtual methods
.method public a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1
    invoke-static/range {p0 .. p4}, Lteam/opay/pay/android/views/e$a;->g(Lteam/opay/pay/android/views/e;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v6, Lx7b;->a:Lx7b;

    .line 3
    iget-object v7, v0, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment$b;->a:Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;

    invoke-virtual {v7}, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;->m1()Ljava/lang/String;

    move-result-object v7

    const-string v8, "user_type"

    invoke-static {v8, v7}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    .line 4
    iget-object v8, v0, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment$b;->a:Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;

    invoke-static {v8}, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;->H0(Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;)Lteam/opay/pay/home/tabs/BankTransferViewModel;

    move-result-object v8

    invoke-virtual {v8}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->r0()Lteam/opay/pay/api/BankUserInfo;

    move-result-object v8

    const/4 v9, 0x0

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lteam/opay/pay/api/BankUserInfo;->getOpayBankFlag()Ljava/lang/Boolean;

    move-result-object v8

    goto :goto_0

    :cond_0
    move-object v8, v9

    :goto_0
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "opayBankFlag"

    invoke-static {v10, v8}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    .line 5
    iget-object v10, v0, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment$b;->a:Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;

    invoke-static {v10}, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;->H0(Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;)Lteam/opay/pay/home/tabs/BankTransferViewModel;

    move-result-object v10

    invoke-virtual {v10}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->r0()Lteam/opay/pay/api/BankUserInfo;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Lteam/opay/pay/api/BankUserInfo;->getOpayUserFlag()Ljava/lang/Boolean;

    move-result-object v10

    goto :goto_1

    :cond_1
    move-object v10, v9

    :goto_1
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "opayUserFlag"

    invoke-static {v11, v10}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    .line 6
    iget-object v11, v0, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment$b;->a:Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;

    invoke-static {v11}, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;->H0(Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;)Lteam/opay/pay/home/tabs/BankTransferViewModel;

    move-result-object v11

    invoke-virtual {v11}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->r0()Lteam/opay/pay/api/BankUserInfo;

    move-result-object v11

    if-eqz v11, :cond_2

    invoke-virtual {v11}, Lteam/opay/pay/api/BankUserInfo;->getErrorMsg()Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    :cond_2
    move-object v11, v9

    :goto_2
    if-eqz v11, :cond_4

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-nez v11, :cond_3

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v11, 0x1

    :goto_4
    xor-int/2addr v11, v5

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const-string v12, "is_new"

    invoke-static {v12, v11}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    if-nez v2, :cond_5

    .line 7
    const-string v12, "suc"

    goto :goto_5

    .line 8
    :cond_5
    const-string v12, "20002"

    invoke-static {v2, v12}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    const-string v12, "error"

    goto :goto_5

    .line 9
    :cond_6
    const-string v12, "failed"

    .line 10
    :goto_5
    const-string v13, "result"

    invoke-static {v13, v12}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v12

    const/4 v13, 0x5

    new-array v13, v13, [Lkotlin/Pair;

    aput-object v7, v13, v4

    aput-object v8, v13, v5

    const/4 v7, 0x2

    aput-object v10, v13, v7

    const/4 v7, 0x3

    aput-object v11, v13, v7

    const/4 v7, 0x4

    aput-object v12, v13, v7

    .line 11
    const-string v7, "ac_home_account_verify_show"

    invoke-virtual {v6, v7, v13}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    if-eqz v2, :cond_7

    .line 12
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_a

    :cond_7
    iget-object v7, v0, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment$b;->a:Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;

    invoke-static {v7}, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;->H0(Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;)Lteam/opay/pay/home/tabs/BankTransferViewModel;

    move-result-object v7

    invoke-virtual {v7}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->r0()Lteam/opay/pay/api/BankUserInfo;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Lteam/opay/pay/api/BankUserInfo;->getErrorMsg()Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    :cond_8
    move-object v7, v9

    :goto_6
    if-eqz v7, :cond_a

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_9

    goto :goto_7

    .line 13
    :cond_9
    iget-object v7, v0, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment$b;->a:Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;

    invoke-static {v7}, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;->E0(Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;)Lteam/opay/pay/transfer/contact/view/TransferConfigChecker;

    move-result-object v7

    invoke-virtual {v7}, Lteam/opay/pay/transfer/contact/view/TransferConfigChecker;->a()V

    .line 14
    :cond_a
    :goto_7
    const-string v7, "05048"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 15
    const-string v7, "new_aa_home_fault_betting_show"

    new-array v8, v4, [Lkotlin/Pair;

    invoke-virtual {v6, v7, v8}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 16
    :cond_b
    iget-object v6, v0, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment$b;->a:Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;

    invoke-static {v6, v1}, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;->K0(Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;Ljava/lang/String;)V

    .line 17
    iget-object v6, v0, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment$b;->a:Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;

    invoke-virtual {v6}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    move-result-object v6

    check-cast v6, Lug6;

    iget-object v6, v6, Lug6;->f:Lteam/opay/pay/home/tabs/ac/BankAccountInputText;

    if-eqz v6, :cond_c

    invoke-virtual {v6}, Lteam/opay/pay/android/views/BaseAccountEditText;->getFormatText()Ljava/lang/String;

    move-result-object v6

    goto :goto_8

    :cond_c
    move-object v6, v9

    :goto_8
    if-nez v6, :cond_d

    const-string v6, ""

    .line 18
    :cond_d
    iget-object v7, v0, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment$b;->a:Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;

    invoke-static {v7}, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;->J0(Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;)Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, v0, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment$b;->a:Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;

    invoke-static {v7}, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;->H0(Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;)Lteam/opay/pay/home/tabs/BankTransferViewModel;

    move-result-object v7

    invoke-virtual {v7}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->r0()Lteam/opay/pay/api/BankUserInfo;

    move-result-object v7

    if-eqz v7, :cond_e

    invoke-virtual {v7}, Lteam/opay/pay/api/BankUserInfo;->getOpayBankFlag()Ljava/lang/Boolean;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    goto :goto_9

    :cond_e
    const/4 v7, 0x0

    :goto_9
    if-eqz v7, :cond_f

    const/4 v7, 0x1

    goto :goto_a

    :cond_f
    const/4 v7, 0x0

    :goto_a
    if-eqz v7, :cond_11

    .line 19
    iget-object v1, v0, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment$b;->a:Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;

    invoke-static {v1}, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;->x0(Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;)Lteam/opay/pay/android/views/AmountInputBusnissUtils;

    move-result-object v7

    if-eqz v7, :cond_10

    .line 20
    sget-object v8, Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;->STATUS_SEARCH_FAILED:Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;

    .line 21
    sget v1, Lteam/opay/pay/R$string;->osdk_transfer_self_phone_number_hint:I

    .line 22
    new-array v5, v5, [Ljava/lang/Object;

    aput-object v6, v5, v4

    .line 23
    invoke-static {v1, v5}, Ljmf;->l(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/16 v12, 0x8

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 24
    invoke-static/range {v7 .. v13}, Lteam/opay/pay/android/views/AmountInputBusnissUtils;->l(Lteam/opay/pay/android/views/AmountInputBusnissUtils;Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 25
    :cond_10
    iget-object v1, v0, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment$b;->a:Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;

    invoke-virtual {v1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    move-result-object v1

    check-cast v1, Lug6;

    iget-object v1, v1, Lug6;->l:Lcom/google/android/material/button/MaterialButton;

    if-eqz v1, :cond_1b

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_f

    :cond_11
    if-eqz v1, :cond_13

    .line 26
    invoke-static/range {p2 .. p2}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_b

    :cond_12
    const/4 v1, 0x0

    goto :goto_c

    :cond_13
    :goto_b
    const/4 v1, 0x1

    :goto_c
    if-eqz v1, :cond_16

    if-eqz v2, :cond_15

    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_14

    goto :goto_d

    :cond_14
    const/4 v1, 0x0

    goto :goto_e

    :cond_15
    :goto_d
    const/4 v1, 0x1

    :goto_e
    if-eqz v1, :cond_16

    .line 27
    iget-object v1, v0, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment$b;->a:Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;

    invoke-static {v1}, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;->x0(Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;)Lteam/opay/pay/android/views/AmountInputBusnissUtils;

    move-result-object v10

    if-eqz v10, :cond_16

    .line 28
    sget-object v11, Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;->STATUS_NONE:Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;

    const/16 v15, 0xc

    const/16 v16, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 29
    invoke-static/range {v10 .. v16}, Lteam/opay/pay/android/views/AmountInputBusnissUtils;->l(Lteam/opay/pay/android/views/AmountInputBusnissUtils;Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 30
    :cond_16
    iget-object v1, v0, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment$b;->a:Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;

    invoke-virtual {v1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    move-result-object v1

    check-cast v1, Lug6;

    iget-object v1, v1, Lug6;->l:Lcom/google/android/material/button/MaterialButton;

    if-eqz v1, :cond_19

    if-eqz v3, :cond_17

    invoke-interface/range {p4 .. p4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_18

    :cond_17
    const/4 v4, 0x1

    :cond_18
    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 31
    :cond_19
    iget-object v1, v0, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment$b;->a:Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;

    invoke-static {v1}, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;->A0(Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1b

    .line 32
    iget-object v1, v0, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment$b;->a:Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;

    invoke-static {v1}, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;->y0(Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;)Lteam/opay/pay/home/tabs/ac/BankSelectedPosition;

    move-result-object v4

    if-eqz v4, :cond_1a

    invoke-virtual {v4}, Lteam/opay/pay/home/tabs/ac/BankSelectedPosition;->getValue()Ljava/lang/String;

    move-result-object v9

    :cond_1a
    invoke-static {v1, v9}, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;->N0(Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;Ljava/lang/String;)V

    .line 33
    :cond_1b
    :goto_f
    const-string v1, "61008"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 34
    iget-object v1, v0, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment$b;->a:Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;

    invoke-static {v1, v3}, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;->Q0(Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;Ljava/lang/String;)V

    :cond_1c
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment$b;->a:Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;->I0(Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public d(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/android/views/e$a;->b(Lteam/opay/pay/android/views/e;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lteam/opay/pay/android/views/e$a;->e(Lteam/opay/pay/android/views/e;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public f(Z)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/android/views/e$a;->c(Lteam/opay/pay/android/views/e;Z)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public g(Z)V
    .locals 3

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/android/views/e$a;->i(Lteam/opay/pay/android/views/e;Z)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment$b;->a:Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;

    .line 5
    .line 6
    invoke-static {v0}, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;->E0(Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;)Lteam/opay/pay/transfer/contact/view/TransferConfigChecker;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lteam/opay/pay/transfer/contact/view/TransferConfigChecker;->d()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment$b;->a:Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;

    .line 17
    .line 18
    invoke-static {v1, v0}, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;->N0(Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v1, p0, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment$b;->a:Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;

    .line 22
    .line 23
    invoke-static {v1}, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;->H0(Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;)Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->D0()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/4 v2, 0x0

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    iget-object v1, p0, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment$b;->a:Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;

    .line 35
    .line 36
    invoke-static {v1}, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;->H0(Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;)Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1, v2}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->k1(Z)V

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-object v1, p0, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment$b;->a:Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;

    .line 44
    .line 45
    invoke-static {v1, p1}, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;->L0(Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;Z)V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment$b;->a:Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;

    .line 49
    .line 50
    invoke-static {v1}, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;->H0(Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;)Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->n1()V

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment$b;->a:Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;

    .line 58
    .line 59
    invoke-static {v1, v0}, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;->K0(Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment$b;->a:Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;

    .line 63
    .line 64
    invoke-virtual {v1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Lug6;

    .line 69
    .line 70
    iget-object v1, v1, Lug6;->l:Lcom/google/android/material/button/MaterialButton;

    .line 71
    .line 72
    if-eqz v1, :cond_2

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 75
    .line 76
    .line 77
    :cond_2
    if-eqz p1, :cond_4

    .line 78
    .line 79
    iget-object v1, p0, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment$b;->a:Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;

    .line 80
    .line 81
    invoke-static {v1}, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;->H0(Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;)Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v1}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->y0()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-nez v1, :cond_4

    .line 94
    .line 95
    iget-object p1, p0, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment$b;->a:Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;

    .line 96
    .line 97
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Lug6;

    .line 102
    .line 103
    iget-object p1, p1, Lug6;->f:Lteam/opay/pay/home/tabs/ac/BankAccountInputText;

    .line 104
    .line 105
    if-eqz p1, :cond_3

    .line 106
    .line 107
    sget v0, Lteam/opay/pay/R$string;->osdk_searching_bank:I

    .line 108
    .line 109
    invoke-static {v0}, Ljmf;->k(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {p1, v0}, Lteam/opay/pay/home/tabs/ac/BankAccountInputText;->f0(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :cond_3
    iget-object p1, p0, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment$b;->a:Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;

    .line 117
    .line 118
    new-instance v0, Ldqa;

    .line 119
    .line 120
    invoke-direct {v0, p1}, Ldqa;-><init>(Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;)V

    .line 121
    .line 122
    .line 123
    const/4 v1, 0x1

    .line 124
    invoke-static {p1, v1, v0}, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;->F0(Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;ZLkotlin/jvm/functions/Function0;)V

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_4
    if-nez p1, :cond_7

    .line 129
    .line 130
    iget-object p1, p0, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment$b;->a:Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;

    .line 131
    .line 132
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    check-cast p1, Lug6;

    .line 137
    .line 138
    iget-object p1, p1, Lug6;->f:Lteam/opay/pay/home/tabs/ac/BankAccountInputText;

    .line 139
    .line 140
    if-eqz p1, :cond_5

    .line 141
    .line 142
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/ac/BankAccountInputText;->Y()V

    .line 143
    .line 144
    .line 145
    :cond_5
    iget-object p1, p0, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment$b;->a:Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;

    .line 146
    .line 147
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    check-cast p1, Lug6;

    .line 152
    .line 153
    iget-object p1, p1, Lug6;->t:Landroidx/constraintlayout/widget/Group;

    .line 154
    .line 155
    if-eqz p1, :cond_6

    .line 156
    .line 157
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 158
    .line 159
    .line 160
    :cond_6
    iget-object p1, p0, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment$b;->a:Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;

    .line 161
    .line 162
    invoke-static {p1, v0}, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;->P0(Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;Lteam/opay/pay/api/UserBanksMate;)V

    .line 163
    .line 164
    .line 165
    :cond_7
    :goto_0
    iget-object p1, p0, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment$b;->a:Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;

    .line 166
    .line 167
    invoke-static {p1, v2}, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;->R0(Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryHomeFragment;Z)V

    .line 168
    .line 169
    .line 170
    return-void
.end method

.method public h()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lteam/opay/pay/android/views/e$a;->a(Lteam/opay/pay/android/views/e;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method
