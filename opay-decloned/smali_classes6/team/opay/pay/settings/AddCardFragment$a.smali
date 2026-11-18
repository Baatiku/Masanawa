.class public final Lteam/opay/pay/settings/AddCardFragment$a;
.super Ljava/lang/Object;
.source "AddCardFragment.kt"

# interfaces
.implements Llla;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/settings/AddCardFragment;->i1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "team/opay/pay/settings/AddCardFragment$a",
        "Llla;",
        "",
        "position",
        "",
        "a",
        "(I)V",
        "b",
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
.field public final synthetic a:Lteam/opay/pay/settings/AddCardFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/settings/AddCardFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/settings/AddCardFragment$a;->a:Lteam/opay/pay/settings/AddCardFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public b(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lteam/opay/pay/settings/AddCardFragment$a;->a:Lteam/opay/pay/settings/AddCardFragment;

    .line 9
    .line 10
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lpf;

    .line 15
    .line 16
    iget-object p1, p1, Lpf;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 17
    .line 18
    const-string v2, "tableAccount"

    .line 19
    .line 20
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lkmf;->t(Landroid/view/View;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lteam/opay/pay/settings/AddCardFragment$a;->a:Lteam/opay/pay/settings/AddCardFragment;

    .line 27
    .line 28
    invoke-static {p1, v0}, Lteam/opay/pay/settings/AddCardFragment;->Y0(Lteam/opay/pay/settings/AddCardFragment;I)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lteam/opay/pay/settings/AddCardFragment$a;->a:Lteam/opay/pay/settings/AddCardFragment;

    .line 32
    .line 33
    invoke-static {p1, v1}, Lteam/opay/pay/settings/AddCardFragment;->X0(Lteam/opay/pay/settings/AddCardFragment;Z)V

    .line 34
    .line 35
    .line 36
    sget-object p1, Lteam/opay/pay/cashier/PaySheetViewModel;->H:Lteam/opay/pay/cashier/PaySheetViewModel$Companion;

    .line 37
    .line 38
    const-string v0, "new_card_tab_account_click"

    .line 39
    .line 40
    new-array v1, v1, [Lkotlin/Pair;

    .line 41
    .line 42
    invoke-virtual {p1, v0, v1}, Lteam/opay/pay/cashier/PaySheetViewModel$Companion;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-object p1, p0, Lteam/opay/pay/settings/AddCardFragment$a;->a:Lteam/opay/pay/settings/AddCardFragment;

    .line 47
    .line 48
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Lpf;

    .line 53
    .line 54
    iget-object p1, p1, Lpf;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 55
    .line 56
    const-string v2, "tabCard"

    .line 57
    .line 58
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-static {p1}, Lkmf;->t(Landroid/view/View;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lteam/opay/pay/settings/AddCardFragment$a;->a:Lteam/opay/pay/settings/AddCardFragment;

    .line 65
    .line 66
    invoke-static {p1, v1}, Lteam/opay/pay/settings/AddCardFragment;->Y0(Lteam/opay/pay/settings/AddCardFragment;I)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lteam/opay/pay/settings/AddCardFragment$a;->a:Lteam/opay/pay/settings/AddCardFragment;

    .line 70
    .line 71
    invoke-static {p1, v0}, Lteam/opay/pay/settings/AddCardFragment;->X0(Lteam/opay/pay/settings/AddCardFragment;Z)V

    .line 72
    .line 73
    .line 74
    sget-object p1, Lteam/opay/pay/cashier/PaySheetViewModel;->H:Lteam/opay/pay/cashier/PaySheetViewModel$Companion;

    .line 75
    .line 76
    const-string v0, "new_card_tab_card_click"

    .line 77
    .line 78
    new-array v1, v1, [Lkotlin/Pair;

    .line 79
    .line 80
    invoke-virtual {p1, v0, v1}, Lteam/opay/pay/cashier/PaySheetViewModel$Companion;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 81
    .line 82
    .line 83
    :goto_0
    return-void
.end method
