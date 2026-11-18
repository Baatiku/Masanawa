.class public final Lteam/opay/pay/kyc/edit/KycEditFragment$c;
.super Ljava/lang/Object;
.source "KycEditFragment.kt"

# interfaces
.implements Lb83;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/kyc/edit/KycEditFragment;-><init>()V
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
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J)\u0010\r\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\'\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "team/opay/pay/kyc/edit/KycEditFragment$c",
        "Lb83;",
        "Lteam/opay/pay/address/Address;",
        "Landroid/view/View;",
        "view",
        "item",
        "",
        "f",
        "(Landroid/view/View;Lteam/opay/pay/address/Address;)V",
        "contentView",
        "",
        "position",
        "selectedItem",
        "e",
        "(Landroid/view/View;ILteam/opay/pay/address/Address;)V",
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
.field public final synthetic a:Lteam/opay/pay/kyc/edit/KycEditFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/kyc/edit/KycEditFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/edit/KycEditFragment$c;->a:Lteam/opay/pay/kyc/edit/KycEditFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final f(Landroid/view/View;Lteam/opay/pay/address/Address;)V
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
    invoke-virtual {p2}, Lteam/opay/pay/address/Address;->b()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Lteam/opay/pay/address/Address;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/pay/kyc/edit/KycEditFragment$c;->e(Landroid/view/View;ILteam/opay/pay/address/Address;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b()V
    .locals 0

    .line 1
    invoke-static {p0}, Lb83$a;->a(Lb83;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic c(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Lteam/opay/pay/address/Address;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/pay/kyc/edit/KycEditFragment$c;->d(Landroid/view/View;ILteam/opay/pay/address/Address;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d(Landroid/view/View;ILteam/opay/pay/address/Address;)V
    .locals 3

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "item"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, p3}, Lteam/opay/pay/kyc/edit/KycEditFragment$c;->f(Landroid/view/View;Lteam/opay/pay/address/Address;)V

    .line 12
    .line 13
    .line 14
    sget v0, Lteam/opay/pay/R$id;->selected:I

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "findViewById(...)"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lteam/opay/pay/kyc/edit/KycEditFragment$c;->a:Lteam/opay/pay/kyc/edit/KycEditFragment;

    .line 26
    .line 27
    invoke-static {v2}, Lteam/opay/pay/kyc/edit/KycEditFragment;->e0(Lteam/opay/pay/kyc/edit/KycEditFragment;)Lteam/opay/pay/kyc/edit/KycFormViewModel;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Lteam/opay/pay/kyc/edit/KycFormViewModel;->B()Lteam/opay/pay/address/Address;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p3

    .line 39
    invoke-static {v0, p3}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 40
    .line 41
    .line 42
    sget p3, Lteam/opay/pay/R$id;->drop_down:I

    .line 43
    .line 44
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    if-nez p2, :cond_0

    .line 52
    .line 53
    const/4 p2, 0x1

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/4 p2, 0x0

    .line 56
    :goto_0
    invoke-static {p1, p2}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public e(Landroid/view/View;ILteam/opay/pay/address/Address;)V
    .locals 1

    .line 1
    const-string p2, "contentView"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p3, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object p2, p0, Lteam/opay/pay/kyc/edit/KycEditFragment$c;->a:Lteam/opay/pay/kyc/edit/KycEditFragment;

    .line 10
    .line 11
    invoke-static {p2, p3}, Lteam/opay/pay/kyc/edit/KycEditFragment;->g0(Lteam/opay/pay/kyc/edit/KycEditFragment;Lteam/opay/pay/address/Address;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1, p3}, Lteam/opay/pay/kyc/edit/KycEditFragment$c;->f(Landroid/view/View;Lteam/opay/pay/address/Address;)V

    .line 15
    .line 16
    .line 17
    sget p2, Lteam/opay/pay/R$id;->selected:I

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    const-string v0, "findViewById(...)"

    .line 24
    .line 25
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p2}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    sget p2, Lteam/opay/pay/R$id;->drop_down:I

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lteam/opay/pay/kyc/edit/KycEditFragment$c;->a:Lteam/opay/pay/kyc/edit/KycEditFragment;

    .line 44
    .line 45
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Lkx7;

    .line 50
    .line 51
    iget-object p1, p1, Lkx7;->G:Lteam/opay/pay/android/views/DetailSpinner;

    .line 52
    .line 53
    const/4 p2, 0x0

    .line 54
    invoke-virtual {p1, p2}, Lteam/opay/pay/android/views/DetailSpinner;->setError(Z)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lteam/opay/pay/kyc/edit/KycEditFragment$c;->a:Lteam/opay/pay/kyc/edit/KycEditFragment;

    .line 58
    .line 59
    invoke-static {p1}, Lteam/opay/pay/kyc/edit/KycEditFragment;->e0(Lteam/opay/pay/kyc/edit/KycEditFragment;)Lteam/opay/pay/kyc/edit/KycFormViewModel;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1, p3}, Lteam/opay/pay/kyc/edit/KycFormViewModel;->Q(Lteam/opay/pay/address/Address;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lteam/opay/pay/kyc/edit/KycEditFragment$c;->a:Lteam/opay/pay/kyc/edit/KycEditFragment;

    .line 67
    .line 68
    invoke-static {p1}, Lteam/opay/pay/kyc/edit/KycEditFragment;->d0(Lteam/opay/pay/kyc/edit/KycEditFragment;)Lteam/opay/pay/kyc/base/AbstractSetAddressViewModel;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p3}, Lteam/opay/pay/address/Address;->a()J

    .line 73
    .line 74
    .line 75
    move-result-wide p2

    .line 76
    const-string v0, "area"

    .line 77
    .line 78
    invoke-virtual {p1, p2, p3, v0}, Lteam/opay/pay/kyc/base/AbstractSetAddressViewModel;->D(JLjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method
