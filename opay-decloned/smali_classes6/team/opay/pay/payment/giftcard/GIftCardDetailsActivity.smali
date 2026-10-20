.class public final Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;
.super Lteam/opay/pay/payment/giftcard/Hilt_GIftCardDetailsActivity;
.source "GIftCardDetailsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0008\u0007\u0018\u0000 <2\u00020\u0001:\u0001=B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u0019\u0010\u0008\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0014\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0003J\u0017\u0010\r\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0004H\u0003\u00a2\u0006\u0004\u0008\u0013\u0010\u0003J\u0017\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0014H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0017\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0014H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0017J\u001f\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u001bH\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0017\u0010!\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u001fH\u0002\u00a2\u0006\u0004\u0008!\u0010\"R\u001b\u0010(\u001a\u00020#8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'R\u001b\u0010-\u001a\u00020)8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008*\u0010%\u001a\u0004\u0008+\u0010,R\u001b\u00102\u001a\u00020.8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008/\u0010%\u001a\u0004\u00080\u00101R\u0018\u00105\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00083\u00104R\u0018\u00108\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00086\u00107R\u0018\u0010;\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00089\u0010:\u00a8\u0006>"
    }
    d2 = {
        "Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;",
        "Lteam/opay/pay/android/BaseActivity;",
        "<init>",
        "()V",
        "",
        "d0",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onPostCreate",
        "(Landroid/os/Bundle;)V",
        "N",
        "Lteam/opay/core/api/graphql/GiftCardCountryInfo;",
        "country",
        "S",
        "(Lteam/opay/core/api/graphql/GiftCardCountryInfo;)V",
        "",
        "code",
        "i0",
        "(Ljava/lang/String;)V",
        "U",
        "Lteam/opay/core/api/graphql/GiftCardProductInfo;",
        "product",
        "T",
        "(Lteam/opay/core/api/graphql/GiftCardProductInfo;)V",
        "f0",
        "Lteam/opay/pay/cashier/OrderInfo;",
        "orderInfo",
        "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "amount",
        "e0",
        "(Lteam/opay/pay/cashier/OrderInfo;Lteam/opay/core/api/GraphQL$CurrencyAmount;)V",
        "Lteam/opay/core/api/graphql/GiftCardProviderInfo;",
        "info",
        "X",
        "(Lteam/opay/core/api/graphql/GiftCardProviderInfo;)V",
        "Lye;",
        "e",
        "Lid8;",
        "Z",
        "()Lye;",
        "viewBinding",
        "Lteam/opay/pay/payment/giftcard/GiftCardViewModel;",
        "f",
        "a0",
        "()Lteam/opay/pay/payment/giftcard/GiftCardViewModel;",
        "viewModel",
        "Lteam/opay/pay/payment/giftcard/GiftCardProductAdapter;",
        "g",
        "Y",
        "()Lteam/opay/pay/payment/giftcard/GiftCardProductAdapter;",
        "adapter",
        "h",
        "Ljava/lang/String;",
        "selectedCountryCode",
        "i",
        "Lteam/opay/core/api/graphql/GiftCardProviderInfo;",
        "data",
        "j",
        "Lteam/opay/core/api/graphql/GiftCardProductInfo;",
        "selectProduct",
        "k",
        "Companion",
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


# static fields
.field public static final k:Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final e:Lid8;
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

.field public h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public i:Lteam/opay/core/api/graphql/GiftCardProviderInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public j:Lteam/opay/core/api/graphql/GiftCardProductInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->k:Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->activity_gift_card_detail:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/payment/giftcard/Hilt_GIftCardDetailsActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lnn6;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lnn6;-><init>(Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->e:Lid8;

    .line 16
    .line 17
    new-instance v0, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity$special$$inlined$viewModels$default$1;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 23
    .line 24
    const-class v2, Lteam/opay/pay/payment/giftcard/GiftCardViewModel;

    .line 25
    .line 26
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    new-instance v3, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity$special$$inlined$viewModels$default$2;

    .line 31
    .line 32
    invoke-direct {v3, p0}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 33
    .line 34
    .line 35
    new-instance v4, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity$special$$inlined$viewModels$default$3;

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    invoke-direct {v4, v5, p0}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->f:Lid8;

    .line 45
    .line 46
    new-instance v0, Lon6;

    .line 47
    .line 48
    invoke-direct {v0}, Lon6;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->g:Lid8;

    .line 56
    .line 57
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->O(Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic B(Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/pay/cashier/OrderInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->g0(Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/pay/cashier/OrderInfo;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic C(Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->h0(Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic D()Lteam/opay/pay/payment/giftcard/GiftCardProductAdapter;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->M()Lteam/opay/pay/payment/giftcard/GiftCardProductAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic E(Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;Lteam/opay/core/api/graphql/GiftCardProductInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->V(Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;Lteam/opay/core/api/graphql/GiftCardProductInfo;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic F(Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->b0(Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic G(Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->Q(Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic H(Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;)Lye;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->j0(Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;)Lye;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic I(Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->c0(Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic J(Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;Lkotlin/Pair;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->P(Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;Lkotlin/Pair;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic K(Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->W(Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic L(Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;Lteam/opay/core/api/graphql/GiftCardCountryInfo;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->R(Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;Lteam/opay/core/api/graphql/GiftCardCountryInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final M()Lteam/opay/pay/payment/giftcard/GiftCardProductAdapter;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/pay/payment/giftcard/GiftCardProductAdapter;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/pay/payment/giftcard/GiftCardProductAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final O(Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->Z()Lye;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lye;->r:Lteam/opay/core/android/views/PulseLoaderView;

    .line 6
    .line 7
    const-string v1, "loadingView"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->Z()Lye;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v0, v0, Lye;->c:Landroidx/constraintlayout/widget/Group;

    .line 20
    .line 21
    const-string v1, "amountGroup"

    .line 22
    .line 23
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->Z()Lye;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v0, v0, Lye;->i:Landroidx/constraintlayout/widget/Group;

    .line 34
    .line 35
    const-string v1, "contentGroup"

    .line 36
    .line 37
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->Y()Lteam/opay/pay/payment/giftcard/GiftCardProductAdapter;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 48
    .line 49
    .line 50
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    const/4 v0, 0x0

    .line 54
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Lteam/opay/core/api/graphql/GiftCardProductInfo;

    .line 59
    .line 60
    if-eqz p1, :cond_0

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->T(Lteam/opay/core/api/graphql/GiftCardProductInfo;)V

    .line 63
    .line 64
    .line 65
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->Z()Lye;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iget-object p1, p1, Lye;->w:Landroid/widget/TextView;

    .line 70
    .line 71
    const-string v1, "statement"

    .line 72
    .line 73
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object p0, p0, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->i:Lteam/opay/core/api/graphql/GiftCardProviderInfo;

    .line 77
    .line 78
    if-eqz p0, :cond_1

    .line 79
    .line 80
    invoke-virtual {p0}, Lteam/opay/core/api/graphql/GiftCardProviderInfo;->getStatement()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    goto :goto_0

    .line 85
    :cond_1
    const/4 p0, 0x0

    .line 86
    :goto_0
    const/4 v1, 0x1

    .line 87
    if-eqz p0, :cond_2

    .line 88
    .line 89
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    if-nez p0, :cond_3

    .line 94
    .line 95
    :cond_2
    const/4 v0, 0x1

    .line 96
    :cond_3
    xor-int/lit8 p0, v0, 0x1

    .line 97
    .line 98
    invoke-static {p1, p0}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public static final P(Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;Lkotlin/Pair;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->Z()Lye;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lye;->r:Lteam/opay/core/android/views/PulseLoaderView;

    .line 6
    .line 7
    const-string v1, "loadingView"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/Number;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/16 v1, -0x3ec

    .line 26
    .line 27
    if-ne v0, v1, :cond_0

    .line 28
    .line 29
    sget v0, Lteam/opay/pay/R$mipmap;->osdk_ic_net_error:I

    .line 30
    .line 31
    :goto_0
    move v3, v0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    sget v0, Lteam/opay/pay/R$mipmap;->ic_error_502:I

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :goto_1
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->Z()Lye;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v1, v0, Lye;->o:Lteam/opay/pay/kyc/view/EmptyView;

    .line 41
    .line 42
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    move-object v2, p1

    .line 47
    check-cast v2, Ljava/lang/String;

    .line 48
    .line 49
    sget p1, Lteam/opay/pay/R$string;->retry:I

    .line 50
    .line 51
    invoke-static {p1}, Ljmf;->k(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    new-instance v7, Lun6;

    .line 56
    .line 57
    invoke-direct {v7, p0}, Lun6;-><init>(Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;)V

    .line 58
    .line 59
    .line 60
    const/16 v8, 0x18

    .line 61
    .line 62
    const/4 v9, 0x0

    .line 63
    const/4 v5, 0x0

    .line 64
    const/4 v6, 0x0

    .line 65
    invoke-static/range {v1 .. v9}, Lteam/opay/pay/kyc/view/EmptyView;->p(Lteam/opay/pay/kyc/view/EmptyView;Ljava/lang/String;ILjava/lang/String;IILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public static final Q(Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->Z()Lye;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object p1, p1, Lye;->o:Lteam/opay/pay/kyc/view/EmptyView;

    .line 11
    .line 12
    const-string v0, "errorView"

    .line 13
    .line 14
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->Z()Lye;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object p1, p1, Lye;->r:Lteam/opay/core/android/views/PulseLoaderView;

    .line 25
    .line 26
    const-string v0, "loadingView"

    .line 27
    .line 28
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->a0()Lteam/opay/pay/payment/giftcard/GiftCardViewModel;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object v0, p0, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->i:Lteam/opay/core/api/graphql/GiftCardProviderInfo;

    .line 39
    .line 40
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0, p0}, Lteam/opay/pay/payment/giftcard/GiftCardViewModel;->I(Lteam/opay/core/api/graphql/GiftCardProviderInfo;Lag8;)V

    .line 44
    .line 45
    .line 46
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 47
    .line 48
    return-object p0
.end method

.method public static final R(Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;Lteam/opay/core/api/graphql/GiftCardCountryInfo;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->S(Lteam/opay/core/api/graphql/GiftCardCountryInfo;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static final V(Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;Lteam/opay/core/api/graphql/GiftCardProductInfo;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "product"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->T(Lteam/opay/core/api/graphql/GiftCardProductInfo;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method public static final W(Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;)Lkotlin/Unit;
    .locals 8

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->j:Lteam/opay/core/api/graphql/GiftCardProductInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    sget-object v1, Lx7b;->a:Lx7b;

    .line 6
    .line 7
    iget-object v2, p0, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->i:Lteam/opay/core/api/graphql/GiftCardProviderInfo;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {v2}, Lteam/opay/core/api/graphql/GiftCardProviderInfo;->getProviderId()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v2, v3

    .line 18
    :goto_0
    const-string v4, "operate_id"

    .line 19
    .line 20
    invoke-static {v4, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget-object v4, p0, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->i:Lteam/opay/core/api/graphql/GiftCardProviderInfo;

    .line 25
    .line 26
    if-eqz v4, :cond_1

    .line 27
    .line 28
    invoke-virtual {v4}, Lteam/opay/core/api/graphql/GiftCardProviderInfo;->getProviderName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    :cond_1
    const-string v4, "operate_name"

    .line 33
    .line 34
    invoke-static {v4, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v0}, Lteam/opay/core/api/graphql/GiftCardProductInfo;->d()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v0}, Lteam/opay/core/api/graphql/GiftCardProductInfo;->c()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    new-instance v6, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    const-string v5, "sku_value"

    .line 62
    .line 63
    invoke-static {v5, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    sget-object v5, Lbd9;->a:Lbd9;

    .line 68
    .line 69
    invoke-virtual {v0}, Lteam/opay/core/api/graphql/GiftCardProductInfo;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    invoke-virtual {v5, v6}, Lbd9;->c(Lteam/opay/core/api/GraphQL$CurrencyAmount;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    const-string v6, "sku_amount"

    .line 78
    .line 79
    invoke-static {v6, v5}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    const/4 v6, 0x4

    .line 84
    new-array v6, v6, [Lkotlin/Pair;

    .line 85
    .line 86
    const/4 v7, 0x0

    .line 87
    aput-object v2, v6, v7

    .line 88
    .line 89
    const/4 v2, 0x1

    .line 90
    aput-object v3, v6, v2

    .line 91
    .line 92
    const/4 v2, 0x2

    .line 93
    aput-object v4, v6, v2

    .line 94
    .line 95
    const/4 v2, 0x3

    .line 96
    aput-object v5, v6, v2

    .line 97
    .line 98
    const-string v2, "COMMON_gift_card_operate_page_buy_click"

    .line 99
    .line 100
    invoke-virtual {v1, v2, v6}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v0}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->f0(Lteam/opay/core/api/graphql/GiftCardProductInfo;)V

    .line 104
    .line 105
    .line 106
    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 107
    .line 108
    return-object p0
.end method

.method public static final b0(Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->d0()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final c0(Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->h:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, v0}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->i0(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method

.method private final d0()V
    .locals 4

    .line 1
    sget-object v0, Lteam/opay/pay/home/Service;->TRANSACTION:Lteam/opay/pay/home/Service;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/home/Service;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->GIFT_CARD:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 8
    .line 9
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, "?&key_select_code="

    .line 26
    .line 27
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v0, "&key_select_name=Gift Card&key_select_service="

    .line 34
    .line 35
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v0, "&key_select_time=all"

    .line 42
    .line 43
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sget-object v1, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 51
    .line 52
    const-class v2, Lteam/opay/swarmfoundation/action/IActionManager;

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Lteam/opay/swarmfoundation/action/IActionManager;

    .line 59
    .line 60
    if-eqz v1, :cond_0

    .line 61
    .line 62
    const-string v2, ""

    .line 63
    .line 64
    invoke-interface {v1, p0, v0, v2}, Lteam/opay/swarmfoundation/action/IActionManager;->open(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_0
    return-void
.end method

.method public static final g0(Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/pay/cashier/OrderInfo;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "order"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->Z()Lye;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v0, v0, Lye;->r:Lteam/opay/core/android/views/PulseLoaderView;

    .line 11
    .line 12
    const-string v1, "loadingView"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p2, p1}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->e0(Lteam/opay/pay/cashier/OrderInfo;Lteam/opay/core/api/GraphQL$CurrencyAmount;)V

    .line 21
    .line 22
    .line 23
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 24
    .line 25
    return-object p0
.end method

.method public static final h0(Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "msg"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->Z()Lye;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iget-object p0, p0, Lye;->r:Lteam/opay/core/android/views/PulseLoaderView;

    .line 11
    .line 12
    const-string v0, "loadingView"

    .line 13
    .line 14
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    sget-object p0, Lteam/opay/pay/android/ToastUtils;->b:Lteam/opay/pay/android/ToastUtils$Companion;

    .line 21
    .line 22
    invoke-virtual {p0}, Lteam/opay/pay/android/ToastUtils$Companion;->a()Lteam/opay/pay/android/ToastUtils;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const/4 v0, 0x0

    .line 27
    const/4 v1, 0x2

    .line 28
    invoke-static {p0, p1, v0, v1, v0}, Lteam/opay/pay/android/ToastUtils;->h(Lteam/opay/pay/android/ToastUtils;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 32
    .line 33
    return-object p0
.end method

.method public static final j0(Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;)Lye;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lye;->inflate(Landroid/view/LayoutInflater;)Lye;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public final N()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->a0()Lteam/opay/pay/payment/giftcard/GiftCardViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/payment/giftcard/GiftCardViewModel;->H()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lrn6;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lrn6;-><init>(Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->a0()Lteam/opay/pay/payment/giftcard/GiftCardViewModel;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lteam/opay/pay/payment/giftcard/GiftCardViewModel;->G()Landroidx/lifecycle/MutableLiveData;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v1, Lsn6;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lsn6;-><init>(Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->a0()Lteam/opay/pay/payment/giftcard/GiftCardViewModel;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lteam/opay/pay/payment/giftcard/GiftCardViewModel;->F()Landroidx/lifecycle/MutableLiveData;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    new-instance v1, Ltn6;

    .line 42
    .line 43
    invoke-direct {v1, p0}, Ltn6;-><init>(Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final S(Lteam/opay/core/api/graphql/GiftCardCountryInfo;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->Z()Lye;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lye;->j:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 6
    .line 7
    const-string v1, "countryIcon"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/GiftCardCountryInfo;->getLogo()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x2

    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-static {v0, v1, v2, v3, v4}, Lkzf;->k(Landroid/widget/ImageView;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->Z()Lye;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v0, v0, Lye;->k:Landroid/widget/TextView;

    .line 27
    .line 28
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/GiftCardCountryInfo;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/GiftCardCountryInfo;->getCode()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->h:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v0, p0, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->i:Lteam/opay/core/api/graphql/GiftCardProviderInfo;

    .line 42
    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    invoke-virtual {v0}, Lteam/opay/core/api/graphql/GiftCardProviderInfo;->getRestrictionTips()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    :cond_0
    const-string v0, "restrictionTips"

    .line 50
    .line 51
    if-eqz v4, :cond_3

    .line 52
    .line 53
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->Z()Lye;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iget-object v1, v1, Lye;->u:Landroid/widget/TextView;

    .line 65
    .line 66
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->Z()Lye;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iget-object v0, v0, Lye;->u:Landroid/widget/TextView;

    .line 77
    .line 78
    iget-object v1, p0, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->i:Lteam/opay/core/api/graphql/GiftCardProviderInfo;

    .line 79
    .line 80
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Lteam/opay/core/api/graphql/GiftCardProviderInfo;->getRestrictionTips()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/GiftCardCountryInfo;->getName()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    if-nez p1, :cond_2

    .line 95
    .line 96
    const-string p1, ""

    .line 97
    .line 98
    :cond_2
    move-object v4, p1

    .line 99
    const/4 v6, 0x4

    .line 100
    const/4 v7, 0x0

    .line 101
    const-string v3, "${country}"

    .line 102
    .line 103
    const/4 v5, 0x0

    .line 104
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-static {p1}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->Z()Lye;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    iget-object p1, p1, Lye;->u:Landroid/widget/TextView;

    .line 121
    .line 122
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 126
    .line 127
    .line 128
    :goto_1
    return-void
.end method

.method public final T(Lteam/opay/core/api/graphql/GiftCardProductInfo;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->j:Lteam/opay/core/api/graphql/GiftCardProductInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->Z()Lye;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lye;->t:Landroid/widget/TextView;

    .line 8
    .line 9
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/GiftCardProductInfo;->b()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/GiftCardProductInfo;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->Z()Lye;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v1, v1, Lye;->y:Landroid/widget/TextView;

    .line 27
    .line 28
    sget-object v2, Lbd9;->a:Lbd9;

    .line 29
    .line 30
    invoke-virtual {v2, v0}, Lbd9;->c(Lteam/opay/core/api/GraphQL$CurrencyAmount;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->Z()Lye;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v0, v0, Lye;->m:Landroidx/constraintlayout/widget/Group;

    .line 42
    .line 43
    const-string v1, "discountGroup"

    .line 44
    .line 45
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 49
    .line 50
    .line 51
    sget-object v0, Lx7b;->a:Lx7b;

    .line 52
    .line 53
    iget-object v1, p0, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->i:Lteam/opay/core/api/graphql/GiftCardProviderInfo;

    .line 54
    .line 55
    const/4 v2, 0x0

    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    invoke-virtual {v1}, Lteam/opay/core/api/graphql/GiftCardProviderInfo;->getProviderId()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    move-object v1, v2

    .line 64
    :goto_0
    const-string v3, "operate_id"

    .line 65
    .line 66
    invoke-static {v3, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    iget-object v3, p0, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->i:Lteam/opay/core/api/graphql/GiftCardProviderInfo;

    .line 71
    .line 72
    if-eqz v3, :cond_2

    .line 73
    .line 74
    invoke-virtual {v3}, Lteam/opay/core/api/graphql/GiftCardProviderInfo;->getProviderName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    :cond_2
    const-string v3, "operate_name"

    .line 79
    .line 80
    invoke-static {v3, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/GiftCardProductInfo;->d()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/GiftCardProductInfo;->c()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    new-instance v5, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    const-string v4, "sku_value"

    .line 108
    .line 109
    invoke-static {v4, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    sget-object v4, Lbd9;->a:Lbd9;

    .line 114
    .line 115
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/GiftCardProductInfo;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {v4, p1}, Lbd9;->c(Lteam/opay/core/api/GraphQL$CurrencyAmount;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    const-string v4, "sku_amount"

    .line 124
    .line 125
    invoke-static {v4, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    const/4 v4, 0x4

    .line 130
    new-array v4, v4, [Lkotlin/Pair;

    .line 131
    .line 132
    const/4 v5, 0x0

    .line 133
    aput-object v1, v4, v5

    .line 134
    .line 135
    const/4 v1, 0x1

    .line 136
    aput-object v2, v4, v1

    .line 137
    .line 138
    const/4 v1, 0x2

    .line 139
    aput-object v3, v4, v1

    .line 140
    .line 141
    const/4 v1, 0x3

    .line 142
    aput-object p1, v4, v1

    .line 143
    .line 144
    const-string p1, "COMMON_gift_card_operate_page_sku_click"

    .line 145
    .line 146
    invoke-virtual {v0, p1, v4}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 147
    .line 148
    .line 149
    return-void
.end method

.method public final U()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->Y()Lteam/opay/pay/payment/giftcard/GiftCardProductAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lpn6;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lpn6;-><init>(Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lteam/opay/pay/payment/giftcard/GiftCardProductAdapter;->p(Lkotlin/jvm/functions/Function1;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->Z()Lye;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v0, v0, Lye;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 18
    .line 19
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    invoke-direct {v1, p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->Z()Lye;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v0, v0, Lye;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 33
    .line 34
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->Y()Lteam/opay/pay/payment/giftcard/GiftCardProductAdapter;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->Z()Lye;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v0, v0, Lye;->h:Lcom/google/android/material/button/MaterialButton;

    .line 46
    .line 47
    const-string v1, "btnConfirm"

    .line 48
    .line 49
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    new-instance v1, Lqn6;

    .line 53
    .line 54
    invoke-direct {v1, p0}, Lqn6;-><init>(Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;)V

    .line 55
    .line 56
    .line 57
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final X(Lteam/opay/core/api/graphql/GiftCardProviderInfo;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->Z()Lye;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Lye;->p:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 6
    .line 7
    const-string v2, "icon"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/GiftCardProviderInfo;->getLogoUrl()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    const-string v2, ""

    .line 19
    .line 20
    :cond_0
    const/4 v3, 0x2

    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x0

    .line 23
    invoke-static {v1, v2, v5, v3, v4}, Lkzf;->k(Landroid/widget/ImageView;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, v0, Lye;->s:Landroid/widget/TextView;

    .line 27
    .line 28
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/GiftCardProviderInfo;->getProviderName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final Y()Lteam/opay/pay/payment/giftcard/GiftCardProductAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->g:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/payment/giftcard/GiftCardProductAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method public Z()Lye;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->e:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lye;

    .line 8
    .line 9
    return-object v0
.end method

.method public final a0()Lteam/opay/pay/payment/giftcard/GiftCardViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->f:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/payment/giftcard/GiftCardViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public final e0(Lteam/opay/pay/cashier/OrderInfo;Lteam/opay/core/api/GraphQL$CurrencyAmount;)V
    .locals 13

    .line 1
    new-instance v0, Lteam/opay/pay/cashier/PaymentTask;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lteam/opay/pay/cashier/PaymentTask;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->GIFT_CARD:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 7
    .line 8
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceId;->GIFT_CARD:Lteam/opay/core/api/GraphQL$ServiceId;

    .line 13
    .line 14
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$ServiceId;->getValue()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    invoke-virtual {p1}, Lteam/opay/pay/cashier/OrderInfo;->getOrderNo()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    const-string p1, ""

    .line 25
    .line 26
    :cond_0
    move-object v4, p1

    .line 27
    new-instance v1, Lteam/opay/swarmfoundation/payment/PayInput;

    .line 28
    .line 29
    const/16 v11, 0xf8

    .line 30
    .line 31
    const/4 v12, 0x0

    .line 32
    const/4 v6, 0x0

    .line 33
    const/4 v7, 0x0

    .line 34
    const/4 v8, 0x0

    .line 35
    const/4 v9, 0x0

    .line 36
    const/4 v10, 0x0

    .line 37
    move-object v2, v1

    .line 38
    invoke-direct/range {v2 .. v12}, Lteam/opay/swarmfoundation/payment/PayInput;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 39
    .line 40
    .line 41
    const/16 v5, 0xc

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    const/4 v4, 0x0

    .line 45
    move-object v2, p2

    .line 46
    invoke-static/range {v0 .. v6}, Lteam/opay/pay/cashier/PaymentTask;->c(Lteam/opay/pay/cashier/PaymentTask;Lteam/opay/swarmfoundation/payment/PayInput;Lteam/opay/core/api/GraphQL$CurrencyAmount;ZZILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final f0(Lteam/opay/core/api/graphql/GiftCardProductInfo;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/GiftCardProductInfo;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    .line 4
    move-result-object v4

    .line 5
    if-eqz v4, :cond_5

    .line 6
    .line 7
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->Z()Lye;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Lye;->r:Lteam/opay/core/android/views/PulseLoaderView;

    .line 12
    .line 13
    const-string v1, "loadingView"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->a0()Lteam/opay/pay/payment/giftcard/GiftCardViewModel;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/GiftCardProductInfo;->f()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, ""

    .line 30
    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    move-object v1, v2

    .line 34
    :cond_0
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/GiftCardProductInfo;->e()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-nez p1, :cond_1

    .line 39
    .line 40
    move-object p1, v2

    .line 41
    :cond_1
    iget-object v3, p0, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->i:Lteam/opay/core/api/graphql/GiftCardProviderInfo;

    .line 42
    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    invoke-virtual {v3}, Lteam/opay/core/api/graphql/GiftCardProviderInfo;->getCategoryId()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const/4 v3, 0x0

    .line 51
    :goto_0
    if-nez v3, :cond_3

    .line 52
    .line 53
    move-object v3, v2

    .line 54
    :cond_3
    iget-object v5, p0, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->h:Ljava/lang/String;

    .line 55
    .line 56
    if-nez v5, :cond_4

    .line 57
    .line 58
    move-object v5, v2

    .line 59
    :cond_4
    new-instance v7, Lkn6;

    .line 60
    .line 61
    invoke-direct {v7, p0, v4}, Lkn6;-><init>(Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;Lteam/opay/core/api/GraphQL$CurrencyAmount;)V

    .line 62
    .line 63
    .line 64
    new-instance v8, Lln6;

    .line 65
    .line 66
    invoke-direct {v8, p0}, Lln6;-><init>(Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;)V

    .line 67
    .line 68
    .line 69
    move-object v2, p1

    .line 70
    move-object v6, p0

    .line 71
    invoke-virtual/range {v0 .. v8}, Lteam/opay/pay/payment/giftcard/GiftCardViewModel;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Lag8;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 72
    .line 73
    .line 74
    :cond_5
    return-void
.end method

.method public bridge synthetic getViewBinding()Lxyf;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->Z()Lye;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final i0(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->a0()Lteam/opay/pay/payment/giftcard/GiftCardViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/payment/giftcard/GiftCardViewModel;->E()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lteam/opay/pay/payment/giftcard/GIftCardCountrySelectedDialog;->m:Lteam/opay/pay/payment/giftcard/GIftCardCountrySelectedDialog$Companion;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lteam/opay/pay/payment/giftcard/GIftCardCountrySelectedDialog$Companion;->a(Ljava/lang/String;)Lteam/opay/pay/payment/giftcard/GIftCardCountrySelectedDialog;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p0, p1}, Lteam/opay/pay/base/FragmentKt;->x(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/DialogFragment;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v2, "key_data"

    .line 11
    .line 12
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lteam/opay/core/api/graphql/GiftCardProviderInfo;

    .line 17
    .line 18
    iput-object p1, p0, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->i:Lteam/opay/core/api/graphql/GiftCardProviderInfo;

    .line 19
    .line 20
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->a0()Lteam/opay/pay/payment/giftcard/GiftCardViewModel;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object v2, p0, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->i:Lteam/opay/core/api/graphql/GiftCardProviderInfo;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {v2}, Lteam/opay/core/api/graphql/GiftCardProviderInfo;->getCountryList()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move-object v2, v3

    .line 35
    :goto_0
    invoke-virtual {p1, v2}, Lteam/opay/pay/payment/giftcard/GiftCardViewModel;->V(Ljava/util/List;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->i:Lteam/opay/core/api/graphql/GiftCardProviderInfo;

    .line 39
    .line 40
    if-nez p1, :cond_1

    .line 41
    .line 42
    sget-object p1, Lteam/opay/pay/android/ToastUtils;->b:Lteam/opay/pay/android/ToastUtils$Companion;

    .line 43
    .line 44
    invoke-virtual {p1}, Lteam/opay/pay/android/ToastUtils$Companion;->a()Lteam/opay/pay/android/ToastUtils;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    sget v2, Lteam/opay/pay/R$string;->something_went_wrong_header:I

    .line 49
    .line 50
    invoke-static {v2}, Ljmf;->k(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-static {p1, v2, v3, v1, v3}, Lteam/opay/pay/android/ToastUtils;->h(Lteam/opay/pay/android/ToastUtils;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 58
    .line 59
    .line 60
    :cond_1
    iget-object p1, p0, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->i:Lteam/opay/core/api/graphql/GiftCardProviderInfo;

    .line 61
    .line 62
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p1}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->X(Lteam/opay/core/api/graphql/GiftCardProviderInfo;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->U()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->Z()Lye;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iget-object v4, p1, Lye;->b:Lteam/opay/core/android/views/OpayActionBar;

    .line 76
    .line 77
    sget p1, Lteam/opay/pay/R$string;->history:I

    .line 78
    .line 79
    invoke-static {p1}, Ljmf;->k(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    sget v8, Lteam/opay/pay/R$color;->color_00B876:I

    .line 84
    .line 85
    new-instance v9, Ljn6;

    .line 86
    .line 87
    invoke-direct {v9, p0}, Ljn6;-><init>(Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;)V

    .line 88
    .line 89
    .line 90
    const/4 v10, 0x1

    .line 91
    const/4 v11, 0x0

    .line 92
    const/4 v5, 0x0

    .line 93
    const-string v7, "font/roboto_400.xml"

    .line 94
    .line 95
    invoke-static/range {v4 .. v11}, Lteam/opay/core/android/views/OpayActionBar;->j(Lteam/opay/core/android/views/OpayActionBar;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->i:Lteam/opay/core/api/graphql/GiftCardProviderInfo;

    .line 99
    .line 100
    if-eqz p1, :cond_2

    .line 101
    .line 102
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/GiftCardProviderInfo;->getStatement()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    goto :goto_1

    .line 107
    :cond_2
    move-object p1, v3

    .line 108
    :goto_1
    if-eqz p1, :cond_5

    .line 109
    .line 110
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-nez p1, :cond_3

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_3
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->Z()Lye;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    iget-object p1, p1, Lye;->w:Landroid/widget/TextView;

    .line 122
    .line 123
    iget-object v2, p0, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->i:Lteam/opay/core/api/graphql/GiftCardProviderInfo;

    .line 124
    .line 125
    if-eqz v2, :cond_4

    .line 126
    .line 127
    invoke-virtual {v2}, Lteam/opay/core/api/graphql/GiftCardProviderInfo;->getStatement()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    goto :goto_2

    .line 132
    :cond_4
    move-object v2, v3

    .line 133
    :goto_2
    invoke-static {v2}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    .line 139
    .line 140
    :cond_5
    :goto_3
    iget-object p1, p0, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->i:Lteam/opay/core/api/graphql/GiftCardProviderInfo;

    .line 141
    .line 142
    if-eqz p1, :cond_6

    .line 143
    .line 144
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/GiftCardProviderInfo;->getCountryList()Ljava/util/List;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    if-eqz p1, :cond_6

    .line 149
    .line 150
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    check-cast p1, Lteam/opay/core/api/graphql/GiftCardCountryInfo;

    .line 155
    .line 156
    if-eqz p1, :cond_6

    .line 157
    .line 158
    invoke-virtual {p0, p1}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->S(Lteam/opay/core/api/graphql/GiftCardCountryInfo;)V

    .line 159
    .line 160
    .line 161
    :cond_6
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->Z()Lye;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    iget-object p1, p1, Lye;->k:Landroid/widget/TextView;

    .line 166
    .line 167
    const-string v2, "countryName"

    .line 168
    .line 169
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    new-instance v2, Lmn6;

    .line 173
    .line 174
    invoke-direct {v2, p0}, Lmn6;-><init>(Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;)V

    .line 175
    .line 176
    .line 177
    invoke-static {p1, v2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->a0()Lteam/opay/pay/payment/giftcard/GiftCardViewModel;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    iget-object v2, p0, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->i:Lteam/opay/core/api/graphql/GiftCardProviderInfo;

    .line 185
    .line 186
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1, v2, p0}, Lteam/opay/pay/payment/giftcard/GiftCardViewModel;->I(Lteam/opay/core/api/graphql/GiftCardProviderInfo;Lag8;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->N()V

    .line 193
    .line 194
    .line 195
    sget-object p1, Lx7b;->a:Lx7b;

    .line 196
    .line 197
    iget-object v2, p0, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->i:Lteam/opay/core/api/graphql/GiftCardProviderInfo;

    .line 198
    .line 199
    if-eqz v2, :cond_7

    .line 200
    .line 201
    invoke-virtual {v2}, Lteam/opay/core/api/graphql/GiftCardProviderInfo;->getProviderId()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    goto :goto_4

    .line 206
    :cond_7
    move-object v2, v3

    .line 207
    :goto_4
    const-string v4, "operate_id"

    .line 208
    .line 209
    invoke-static {v4, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    iget-object v4, p0, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->i:Lteam/opay/core/api/graphql/GiftCardProviderInfo;

    .line 214
    .line 215
    if-eqz v4, :cond_8

    .line 216
    .line 217
    invoke-virtual {v4}, Lteam/opay/core/api/graphql/GiftCardProviderInfo;->getProviderName()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    goto :goto_5

    .line 222
    :cond_8
    move-object v4, v3

    .line 223
    :goto_5
    const-string v5, "operate_name"

    .line 224
    .line 225
    invoke-static {v5, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    sget-object v5, Lbd9;->a:Lbd9;

    .line 230
    .line 231
    iget-object v6, p0, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->i:Lteam/opay/core/api/graphql/GiftCardProviderInfo;

    .line 232
    .line 233
    if-eqz v6, :cond_9

    .line 234
    .line 235
    invoke-virtual {v6}, Lteam/opay/core/api/graphql/GiftCardProviderInfo;->getMinAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 236
    .line 237
    .line 238
    move-result-object v6

    .line 239
    goto :goto_6

    .line 240
    :cond_9
    move-object v6, v3

    .line 241
    :goto_6
    invoke-virtual {v5, v6}, Lbd9;->c(Lteam/opay/core/api/GraphQL$CurrencyAmount;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v6

    .line 245
    const-string v7, "operate_min_amount"

    .line 246
    .line 247
    invoke-static {v7, v6}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 248
    .line 249
    .line 250
    move-result-object v6

    .line 251
    iget-object v7, p0, Lteam/opay/pay/payment/giftcard/GIftCardDetailsActivity;->i:Lteam/opay/core/api/graphql/GiftCardProviderInfo;

    .line 252
    .line 253
    if-eqz v7, :cond_a

    .line 254
    .line 255
    invoke-virtual {v7}, Lteam/opay/core/api/graphql/GiftCardProviderInfo;->getMaxAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    :cond_a
    invoke-virtual {v5, v3}, Lbd9;->c(Lteam/opay/core/api/GraphQL$CurrencyAmount;)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    const-string v5, "operate_max_amount"

    .line 264
    .line 265
    invoke-static {v5, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    const/4 v5, 0x4

    .line 270
    new-array v5, v5, [Lkotlin/Pair;

    .line 271
    .line 272
    aput-object v2, v5, v0

    .line 273
    .line 274
    const/4 v0, 0x1

    .line 275
    aput-object v4, v5, v0

    .line 276
    .line 277
    aput-object v6, v5, v1

    .line 278
    .line 279
    const/4 v0, 0x3

    .line 280
    aput-object v3, v5, v0

    .line 281
    .line 282
    const-string v0, "COMMON_gift_card_operate_page_show"

    .line 283
    .line 284
    invoke-virtual {p1, v0, v5}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 285
    .line 286
    .line 287
    return-void
.end method
