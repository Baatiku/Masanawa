.class public final Lteam/opay/sme/store/SmeStoreActivity;
.super Lax6;
.source "SmeStoreActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0019\u0010\u000f\u001a\u00020\u00062\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0014\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lteam/opay/sme/store/SmeStoreActivity;",
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
        "business-sme-store_release"
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
    sget v0, Lteam/opay/sme/store/R$layout;->sme_store_activity_container:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lax6;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final d0(Landroid/content/Intent;)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object p1, v0

    .line 10
    :goto_0
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-static {p1}, Lvd;->c(Landroid/net/Uri;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_1
    sget-object v1, Lg5e;->a:Lg5e;

    .line 17
    .line 18
    invoke-virtual {v1}, Lg5e;->i()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    sget-object p1, Lteam/opay/sme/store/branch/BranchListFragment;->o:Lteam/opay/sme/store/branch/BranchListFragment$Companion;

    .line 29
    .line 30
    invoke-virtual {p1}, Lteam/opay/sme/store/branch/BranchListFragment$Companion;->a()Lteam/opay/sme/store/branch/BranchListFragment;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {p0, p1}, Lteam/opay/sme/store/SmeStoreActivity;->e0(Landroidx/fragment/app/Fragment;)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    invoke-virtual {v1}, Lg5e;->k()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_3

    .line 47
    .line 48
    sget-object p1, Lteam/opay/sme/store/user/EmployeeListFragment;->l:Lteam/opay/sme/store/user/EmployeeListFragment$Companion;

    .line 49
    .line 50
    invoke-virtual {p1}, Lteam/opay/sme/store/user/EmployeeListFragment$Companion;->a()Lteam/opay/sme/store/user/EmployeeListFragment;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-direct {p0, p1}, Lteam/opay/sme/store/SmeStoreActivity;->e0(Landroidx/fragment/app/Fragment;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    invoke-virtual {v1}, Lg5e;->m()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_4

    .line 67
    .line 68
    sget-object v3, Lteam/opay/sme/store/user/NewEmployeeFragment;->p:Lteam/opay/sme/store/user/NewEmployeeFragment$Companion;

    .line 69
    .line 70
    const/4 v7, 0x2

    .line 71
    const/4 v8, 0x0

    .line 72
    const-string v4, "create_new"

    .line 73
    .line 74
    const/4 v5, 0x0

    .line 75
    const/4 v6, 0x1

    .line 76
    invoke-static/range {v3 .. v8}, Lteam/opay/sme/store/user/NewEmployeeFragment$Companion;->b(Lteam/opay/sme/store/user/NewEmployeeFragment$Companion;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lteam/opay/sme/store/user/NewEmployeeFragment;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-direct {p0, p1}, Lteam/opay/sme/store/SmeStoreActivity;->e0(Landroidx/fragment/app/Fragment;)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_4
    invoke-virtual {v1}, Lg5e;->n()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_5

    .line 93
    .line 94
    sget-object p1, Lteam/opay/sme/store/reports/ReportsHomeFragment;->e:Lteam/opay/sme/store/reports/ReportsHomeFragment$Companion;

    .line 95
    .line 96
    invoke-virtual {p1}, Lteam/opay/sme/store/reports/ReportsHomeFragment$Companion;->a()Lteam/opay/sme/store/reports/ReportsHomeFragment;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-direct {p0, p1}, Lteam/opay/sme/store/SmeStoreActivity;->e0(Landroidx/fragment/app/Fragment;)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_5
    invoke-virtual {v1}, Lg5e;->j()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-eqz v2, :cond_6

    .line 113
    .line 114
    sget-object p1, Lteam/opay/sme/store/branch/balance/BranchBalanceDetailFragment;->h:Lteam/opay/sme/store/branch/balance/BranchBalanceDetailFragment$Companion;

    .line 115
    .line 116
    invoke-virtual {p1}, Lteam/opay/sme/store/branch/balance/BranchBalanceDetailFragment$Companion;->a()Lteam/opay/sme/store/branch/balance/BranchBalanceDetailFragment;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-direct {p0, p1}, Lteam/opay/sme/store/SmeStoreActivity;->e0(Landroidx/fragment/app/Fragment;)V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_6
    invoke-virtual {v1}, Lg5e;->l()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-eqz v0, :cond_7

    .line 133
    .line 134
    sget-object v0, Lteam/opay/sme/store/user/EmployeeDetailFragment;->u:Lteam/opay/sme/store/user/EmployeeDetailFragment$Companion;

    .line 135
    .line 136
    invoke-virtual {v0, p1}, Lteam/opay/sme/store/user/EmployeeDetailFragment$Companion;->a(Landroid/net/Uri;)Lteam/opay/sme/store/user/EmployeeDetailFragment;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-direct {p0, p1}, Lteam/opay/sme/store/SmeStoreActivity;->e0(Landroidx/fragment/app/Fragment;)V

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 145
    .line 146
    .line 147
    :goto_1
    return-void
.end method

.method private final e0(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 1
    sget v0, Lteam/opay/sme/store/R$id;->fragment_container:I

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
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lax6;->onCreate(Landroid/os/Bundle;)V

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
    invoke-direct {p0, p1}, Lteam/opay/sme/store/SmeStoreActivity;->d0(Landroid/content/Intent;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
