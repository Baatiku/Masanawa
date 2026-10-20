.class public final Lteam/opay/pay/kyc/ModifyUserAddressFragment$b;
.super Ljava/lang/Object;
.source "ModifyUserAddressFragment.kt"

# interfaces
.implements Lb83;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/kyc/ModifyUserAddressFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb83<",
        "Lteam/opay/pay/address/Address;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0007*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u001f\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ)\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\r2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\'\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0011\u00a8\u0006\u0014"
    }
    d2 = {
        "team/opay/pay/kyc/ModifyUserAddressFragment$b",
        "Lb83;",
        "Lteam/opay/pay/address/Address;",
        "Landroid/view/View;",
        "view",
        "",
        "name",
        "",
        "f",
        "(Landroid/view/View;Ljava/lang/String;)V",
        "b",
        "()V",
        "contentView",
        "",
        "position",
        "selectedItem",
        "e",
        "(Landroid/view/View;ILteam/opay/pay/address/Address;)V",
        "item",
        "d",
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
.field public final synthetic a:Lteam/opay/pay/kyc/ModifyUserAddressFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/kyc/ModifyUserAddressFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/ModifyUserAddressFragment$b;->a:Lteam/opay/pay/kyc/ModifyUserAddressFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final f(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget v0, Lteam/opay/pay/R$id;->title:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/widget/TextView;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Lteam/opay/pay/address/Address;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/pay/kyc/ModifyUserAddressFragment$b;->e(Landroid/view/View;ILteam/opay/pay/address/Address;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b()V
    .locals 4

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/kyc/ModifyUserAddressFragment$b;->a:Lteam/opay/pay/kyc/ModifyUserAddressFragment;

    .line 4
    .line 5
    sget v2, Lteam/opay/pay/R$string;->osdk_register_set_address_lga_hint:I

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "field"

    .line 12
    .line 13
    invoke-static {v2, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x1

    .line 18
    new-array v2, v2, [Lkotlin/Pair;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    aput-object v1, v2, v3

    .line 22
    .line 23
    const-string v1, "kyc1_address_enter_click"

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public bridge synthetic c(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Lteam/opay/pay/address/Address;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/pay/kyc/ModifyUserAddressFragment$b;->d(Landroid/view/View;ILteam/opay/pay/address/Address;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d(Landroid/view/View;ILteam/opay/pay/address/Address;)V
    .locals 2

    .line 1
    const-string p2, "view"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "item"

    .line 7
    .line 8
    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p3}, Lteam/opay/pay/address/Address;->b()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-direct {p0, p1, p2}, Lteam/opay/pay/kyc/ModifyUserAddressFragment$b;->f(Landroid/view/View;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sget p2, Lteam/opay/pay/R$id;->selected:I

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    const-string v0, "findViewById(...)"

    .line 25
    .line 26
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lteam/opay/pay/kyc/ModifyUserAddressFragment$b;->a:Lteam/opay/pay/kyc/ModifyUserAddressFragment;

    .line 30
    .line 31
    invoke-static {v1}, Lteam/opay/pay/kyc/ModifyUserAddressFragment;->b0(Lteam/opay/pay/kyc/ModifyUserAddressFragment;)Lteam/opay/pay/kyc/ModifyUserInfoViewModel;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lteam/opay/pay/kyc/ModifyUserInfoViewModel;->y()Lteam/opay/pay/address/Address;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p3

    .line 43
    if-eqz p3, :cond_0

    .line 44
    .line 45
    iget-object p3, p0, Lteam/opay/pay/kyc/ModifyUserAddressFragment$b;->a:Lteam/opay/pay/kyc/ModifyUserAddressFragment;

    .line 46
    .line 47
    invoke-static {p3}, Lteam/opay/pay/kyc/ModifyUserAddressFragment;->c0(Lteam/opay/pay/kyc/ModifyUserAddressFragment;)Z

    .line 48
    .line 49
    .line 50
    move-result p3

    .line 51
    if-eqz p3, :cond_0

    .line 52
    .line 53
    const/4 p3, 0x1

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/4 p3, 0x0

    .line 56
    :goto_0
    invoke-static {p2, p3}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 57
    .line 58
    .line 59
    sget p2, Lteam/opay/pay/R$id;->drop_down:I

    .line 60
    .line 61
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public e(Landroid/view/View;ILteam/opay/pay/address/Address;)V
    .locals 2

    .line 1
    const-string p2, "contentView"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lteam/opay/pay/kyc/ModifyUserAddressFragment$b;->a:Lteam/opay/pay/kyc/ModifyUserAddressFragment;

    .line 7
    .line 8
    invoke-static {p2, p3}, Lteam/opay/pay/kyc/ModifyUserAddressFragment;->e0(Lteam/opay/pay/kyc/ModifyUserAddressFragment;Lteam/opay/pay/address/Address;)V

    .line 9
    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    invoke-virtual {p3}, Lteam/opay/pay/address/Address;->b()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v0, p2

    .line 20
    :goto_0
    iget-object v1, p0, Lteam/opay/pay/kyc/ModifyUserAddressFragment$b;->a:Lteam/opay/pay/kyc/ModifyUserAddressFragment;

    .line 21
    .line 22
    invoke-static {v1}, Lteam/opay/pay/kyc/ModifyUserAddressFragment;->Z(Lteam/opay/pay/kyc/ModifyUserAddressFragment;)Lteam/opay/pay/kyc/AddressInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {v1}, Lteam/opay/pay/kyc/AddressInfo;->getLga()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move-object v1, p2

    .line 34
    :goto_1
    if-nez v1, :cond_2

    .line 35
    .line 36
    const-string v1, ""

    .line 37
    .line 38
    :cond_2
    invoke-static {v0, v1}, Loj2;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Ljava/lang/String;

    .line 43
    .line 44
    invoke-direct {p0, p1, v0}, Lteam/opay/pay/kyc/ModifyUserAddressFragment$b;->f(Landroid/view/View;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sget v0, Lteam/opay/pay/R$id;->selected:I

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v1, "findViewById(...)"

    .line 54
    .line 55
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 59
    .line 60
    .line 61
    sget v0, Lteam/opay/pay/R$id;->drop_down:I

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lteam/opay/pay/kyc/ModifyUserAddressFragment$b;->a:Lteam/opay/pay/kyc/ModifyUserAddressFragment;

    .line 71
    .line 72
    invoke-static {v0}, Lteam/opay/pay/kyc/ModifyUserAddressFragment;->c0(Lteam/opay/pay/kyc/ModifyUserAddressFragment;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    invoke-static {p1, v0}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lteam/opay/pay/kyc/ModifyUserAddressFragment$b;->a:Lteam/opay/pay/kyc/ModifyUserAddressFragment;

    .line 80
    .line 81
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Lbg6;

    .line 86
    .line 87
    iget-object p1, p1, Lbg6;->h:Lteam/opay/pay/android/views/DetailSpinner;

    .line 88
    .line 89
    const/4 v0, 0x0

    .line 90
    invoke-virtual {p1, v0}, Lteam/opay/pay/android/views/DetailSpinner;->setError(Z)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lteam/opay/pay/kyc/ModifyUserAddressFragment$b;->a:Lteam/opay/pay/kyc/ModifyUserAddressFragment;

    .line 94
    .line 95
    invoke-static {p1}, Lteam/opay/pay/kyc/ModifyUserAddressFragment;->b0(Lteam/opay/pay/kyc/ModifyUserAddressFragment;)Lteam/opay/pay/kyc/ModifyUserInfoViewModel;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1, p3}, Lteam/opay/pay/kyc/ModifyUserInfoViewModel;->K(Lteam/opay/pay/address/Address;)V

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lteam/opay/pay/kyc/ModifyUserAddressFragment$b;->a:Lteam/opay/pay/kyc/ModifyUserAddressFragment;

    .line 103
    .line 104
    invoke-static {p1}, Lteam/opay/pay/kyc/ModifyUserAddressFragment;->Y(Lteam/opay/pay/kyc/ModifyUserAddressFragment;)V

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Lteam/opay/pay/kyc/ModifyUserAddressFragment$b;->a:Lteam/opay/pay/kyc/ModifyUserAddressFragment;

    .line 108
    .line 109
    invoke-static {p1}, Lteam/opay/pay/kyc/ModifyUserAddressFragment;->a0(Lteam/opay/pay/kyc/ModifyUserAddressFragment;)Lteam/opay/pay/kyc/base/AbstractSetAddressViewModel;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    if-eqz p3, :cond_3

    .line 114
    .line 115
    invoke-virtual {p3}, Lteam/opay/pay/address/Address;->a()J

    .line 116
    .line 117
    .line 118
    move-result-wide p2

    .line 119
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    :cond_3
    const-wide/16 v0, -0x63

    .line 124
    .line 125
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 126
    .line 127
    .line 128
    move-result-object p3

    .line 129
    invoke-static {p2, p3}, Loj2;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    check-cast p2, Ljava/lang/Number;

    .line 134
    .line 135
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    .line 136
    .line 137
    .line 138
    move-result-wide p2

    .line 139
    const-string v0, "area"

    .line 140
    .line 141
    invoke-virtual {p1, p2, p3, v0}, Lteam/opay/pay/kyc/base/AbstractSetAddressViewModel;->D(JLjava/lang/String;)V

    .line 142
    .line 143
    .line 144
    return-void
.end method
