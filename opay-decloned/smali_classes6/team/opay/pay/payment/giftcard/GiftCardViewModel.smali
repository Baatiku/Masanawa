.class public final Lteam/opay/pay/payment/giftcard/GiftCardViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "GiftCardViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0015\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ8\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00102\u0006\u0010\u000c\u001a\u00020\u000b2\u0018\u0010\u000f\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\u000e\u0012\u0004\u0012\u00020\u00080\rH\u0086@\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0015\u0010\u0015\u001a\u00020\u00082\u0006\u0010\u0014\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u001d\u0010\u0019\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJe\u0010$\u001a\u00020\u00082\u0006\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00062\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\u00080\r2\u0012\u0010#\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00080\r\u00a2\u0006\u0004\u0008$\u0010%R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R#\u0010.\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010)0(8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008*\u0010+\u001a\u0004\u0008,\u0010-R\u001b\u00103\u001a\u00020/8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00080\u0010+\u001a\u0004\u00081\u00102R)\u00106\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u000e0(8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00084\u0010+\u001a\u0004\u00085\u0010-R\'\u0010:\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002070\u000e0(8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00088\u0010+\u001a\u0004\u00089\u0010-R!\u0010>\u001a\u0008\u0012\u0004\u0012\u00020;0(8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008<\u0010+\u001a\u0004\u0008=\u0010-R*\u0010E\u001a\n\u0012\u0004\u0012\u00020;\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008?\u0010@\u001a\u0004\u0008A\u0010B\"\u0004\u0008C\u0010DR-\u0010#\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020G\u0012\u0004\u0012\u00020\u000b0F0(8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008H\u0010+\u001a\u0004\u0008I\u0010-\u00a8\u0006J"
    }
    d2 = {
        "Lteam/opay/pay/payment/giftcard/GiftCardViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Landroid/app/Application;",
        "app",
        "<init>",
        "(Landroid/app/Application;)V",
        "Lag8;",
        "owner",
        "",
        "R",
        "(Lag8;)V",
        "",
        "typeId",
        "Lkotlin/Function1;",
        "",
        "letterCallback",
        "",
        "Lteam/opay/pay/payment/giftcard/QuickSpanItemEntry;",
        "L",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljr2;)Ljava/lang/Object;",
        "key",
        "T",
        "(Ljava/lang/String;)V",
        "Lteam/opay/core/api/graphql/GiftCardProviderInfo;",
        "data",
        "I",
        "(Lteam/opay/core/api/graphql/GiftCardProviderInfo;Lag8;)V",
        "providerId",
        "productId",
        "categoryId",
        "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "amount",
        "country",
        "Lteam/opay/pay/cashier/OrderInfo;",
        "success",
        "error",
        "P",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Lag8;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V",
        "b",
        "Landroid/app/Application;",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lteam/opay/core/api/graphql/GiftCardProviderResult;",
        "c",
        "Lid8;",
        "K",
        "()Landroidx/lifecycle/MutableLiveData;",
        "giftCardList",
        "Lxt;",
        "d",
        "D",
        "()Lxt;",
        "api",
        "e",
        "M",
        "searchResult",
        "Lteam/opay/core/api/graphql/GiftCardProductInfo;",
        "f",
        "H",
        "giftCardDetails",
        "Lteam/opay/core/api/graphql/GiftCardCountryInfo;",
        "g",
        "F",
        "countrySelected",
        "h",
        "Ljava/util/List;",
        "E",
        "()Ljava/util/List;",
        "V",
        "(Ljava/util/List;)V",
        "countryList",
        "Lkotlin/Pair;",
        "",
        "i",
        "G",
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
.field public final b:Landroid/app/Application;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

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

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/core/api/graphql/GiftCardCountryInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final i:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "app"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lteam/opay/pay/payment/giftcard/GiftCardViewModel;->b:Landroid/app/Application;

    .line 10
    .line 11
    new-instance p1, Loq6;

    .line 12
    .line 13
    invoke-direct {p1}, Loq6;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lteam/opay/pay/payment/giftcard/GiftCardViewModel;->c:Lid8;

    .line 21
    .line 22
    new-instance p1, Lpq6;

    .line 23
    .line 24
    invoke-direct {p1, p0}, Lpq6;-><init>(Lteam/opay/pay/payment/giftcard/GiftCardViewModel;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lteam/opay/pay/payment/giftcard/GiftCardViewModel;->d:Lid8;

    .line 32
    .line 33
    new-instance p1, Lqq6;

    .line 34
    .line 35
    invoke-direct {p1}, Lqq6;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lteam/opay/pay/payment/giftcard/GiftCardViewModel;->e:Lid8;

    .line 43
    .line 44
    new-instance p1, Lrq6;

    .line 45
    .line 46
    invoke-direct {p1}, Lrq6;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iput-object p1, p0, Lteam/opay/pay/payment/giftcard/GiftCardViewModel;->f:Lid8;

    .line 54
    .line 55
    new-instance p1, Lsq6;

    .line 56
    .line 57
    invoke-direct {p1}, Lsq6;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iput-object p1, p0, Lteam/opay/pay/payment/giftcard/GiftCardViewModel;->g:Lid8;

    .line 65
    .line 66
    new-instance p1, Ltq6;

    .line 67
    .line 68
    invoke-direct {p1}, Ltq6;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iput-object p1, p0, Lteam/opay/pay/payment/giftcard/GiftCardViewModel;->i:Lid8;

    .line 76
    .line 77
    return-void
.end method

.method public static final A(Lteam/opay/pay/payment/giftcard/GiftCardViewModel;)Lxt;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 2
    .line 3
    iget-object p0, p0, Lteam/opay/pay/payment/giftcard/GiftCardViewModel;->b:Landroid/app/Application;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lteam/opay/core/api/GraphQL;->a(Landroid/content/Context;)Lxt;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static final B()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final C()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final D()Lxt;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/giftcard/GiftCardViewModel;->d:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lxt;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final J(Lteam/opay/pay/payment/giftcard/GiftCardViewModel;Lteam/opay/core/api/graphql/GiftCardProviderInfo;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 8

    .line 1
    invoke-static {p2}, Lteam/opay/core/android/arch/ResourceKt;->e(Lteam/opay/core/android/arch/Resource;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {p0}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    new-instance v5, Lteam/opay/pay/payment/giftcard/GiftCardViewModel$getGiftCardDetails$1$1;

    .line 13
    .line 14
    invoke-direct {v5, p0, p2, p1, v1}, Lteam/opay/pay/payment/giftcard/GiftCardViewModel$getGiftCardDetails$1$1;-><init>(Lteam/opay/pay/payment/giftcard/GiftCardViewModel;Lteam/opay/core/android/arch/Resource;Lteam/opay/core/api/graphql/GiftCardProviderInfo;Ljr2;)V

    .line 15
    .line 16
    .line 17
    const/4 v6, 0x3

    .line 18
    const/4 v7, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v4, 0x0

    .line 21
    invoke-static/range {v2 .. v7}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    invoke-static {p2}, Lteam/opay/core/android/arch/ResourceKt;->b(Lteam/opay/core/android/arch/Resource;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_4

    .line 30
    .line 31
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GiftCardViewModel;->G()Landroidx/lifecycle/MutableLiveData;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    if-eqz p2, :cond_1

    .line 36
    .line 37
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->e()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/16 p1, -0x3ec

    .line 43
    .line 44
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-eqz p2, :cond_2

    .line 49
    .line 50
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    :cond_2
    if-nez v1, :cond_3

    .line 55
    .line 56
    const-string v1, ""

    .line 57
    .line 58
    :cond_3
    invoke-static {p1, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :cond_4
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 66
    .line 67
    return-object p0
.end method

.method public static final N()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final O()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final Q(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-static {p2}, Lteam/opay/core/android/arch/ResourceKt;->e(Lteam/opay/core/android/arch/Resource;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lteam/opay/pay/cashier/OrderInfo;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v0, v1

    .line 18
    :goto_0
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-static {p2}, Lteam/opay/core/android/arch/ResourceKt;->b(Lteam/opay/core/android/arch/Resource;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_4

    .line 33
    .line 34
    if-eqz p2, :cond_2

    .line 35
    .line 36
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    :cond_2
    if-nez v1, :cond_3

    .line 41
    .line 42
    const-string v1, ""

    .line 43
    .line 44
    :cond_3
    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_4
    invoke-static {p2}, Lteam/opay/core/android/arch/ResourceKt;->d(Lteam/opay/core/android/arch/Resource;)Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-nez p0, :cond_5

    .line 53
    .line 54
    sget p0, Lteam/opay/pay/R$string;->something_went_wrong_header:I

    .line 55
    .line 56
    invoke-static {p0}, Ljmf;->k(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    :cond_5
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 64
    .line 65
    return-object p0
.end method

.method public static final S(Lteam/opay/pay/payment/giftcard/GiftCardViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Lteam/opay/core/api/graphql/GiftCardProviderResult;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v1, v0

    .line 12
    :goto_0
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-static {p0}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    new-instance v5, Lteam/opay/pay/payment/giftcard/GiftCardViewModel$queryGiftCardList$1$1;

    .line 19
    .line 20
    invoke-direct {v5, p0, p1, v0}, Lteam/opay/pay/payment/giftcard/GiftCardViewModel$queryGiftCardList$1$1;-><init>(Lteam/opay/pay/payment/giftcard/GiftCardViewModel;Lteam/opay/core/android/arch/Resource;Ljr2;)V

    .line 21
    .line 22
    .line 23
    const/4 v6, 0x3

    .line 24
    const/4 v7, 0x0

    .line 25
    const/4 v3, 0x0

    .line 26
    const/4 v4, 0x0

    .line 27
    invoke-static/range {v2 .. v7}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 28
    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_1
    invoke-static {p1}, Lteam/opay/core/android/arch/ResourceKt;->b(Lteam/opay/core/android/arch/Resource;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_5

    .line 36
    .line 37
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GiftCardViewModel;->G()Landroidx/lifecycle/MutableLiveData;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->e()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    const/16 v1, -0x3ec

    .line 49
    .line 50
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    if-eqz p1, :cond_3

    .line 55
    .line 56
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    :cond_3
    if-nez v0, :cond_4

    .line 61
    .line 62
    const-string v0, ""

    .line 63
    .line 64
    :cond_4
    invoke-static {v1, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :cond_5
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 72
    .line 73
    return-object p0
.end method

.method public static final U()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static synthetic r(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/payment/giftcard/GiftCardViewModel;->Q(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic s(Lteam/opay/pay/payment/giftcard/GiftCardViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/giftcard/GiftCardViewModel;->S(Lteam/opay/pay/payment/giftcard/GiftCardViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic t(Lteam/opay/pay/payment/giftcard/GiftCardViewModel;Lteam/opay/core/api/graphql/GiftCardProviderInfo;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/payment/giftcard/GiftCardViewModel;->J(Lteam/opay/pay/payment/giftcard/GiftCardViewModel;Lteam/opay/core/api/graphql/GiftCardProviderInfo;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic u()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/payment/giftcard/GiftCardViewModel;->U()Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic v()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/payment/giftcard/GiftCardViewModel;->N()Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic w(Lteam/opay/pay/payment/giftcard/GiftCardViewModel;)Lxt;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/giftcard/GiftCardViewModel;->A(Lteam/opay/pay/payment/giftcard/GiftCardViewModel;)Lxt;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic x()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/payment/giftcard/GiftCardViewModel;->O()Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic y()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/payment/giftcard/GiftCardViewModel;->B()Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic z()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/payment/giftcard/GiftCardViewModel;->C()Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public final E()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/core/api/graphql/GiftCardCountryInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/giftcard/GiftCardViewModel;->h:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final F()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/core/api/graphql/GiftCardCountryInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/giftcard/GiftCardViewModel;->g:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    return-object v0
.end method

.method public final G()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/giftcard/GiftCardViewModel;->i:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    return-object v0
.end method

.method public final H()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lteam/opay/core/api/graphql/GiftCardProductInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/giftcard/GiftCardViewModel;->f:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    return-object v0
.end method

.method public final I(Lteam/opay/core/api/graphql/GiftCardProviderInfo;Lag8;)V
    .locals 5
    .param p1    # Lteam/opay/core/api/graphql/GiftCardProviderInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "owner"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lteam/opay/core/android/arch/RequestBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Lteam/opay/core/android/arch/RequestBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0}, Lteam/opay/core/android/arch/RequestBuilder;->v(Landroidx/lifecycle/AndroidViewModel;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-direct {p0}, Lteam/opay/pay/payment/giftcard/GiftCardViewModel;->D()Lxt;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    new-instance v2, Lteam/opay/core/api/graphql/GiftCardDetailsRequest;

    .line 25
    .line 26
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/GiftCardProviderInfo;->getProviderId()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/GiftCardProviderInfo;->getCategoryId()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-direct {v2, v3, v4}, Lteam/opay/core/api/graphql/GiftCardDetailsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v1, v2}, Lxt;->R(Lteam/opay/core/api/graphql/GiftCardDetailsRequest;)Lretrofit2/Call;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Lteam/opay/core/android/arch/RequestBuilder;->a(Lretrofit2/Call;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lteam/opay/core/android/arch/RequestBuilder;->b()Landroidx/lifecycle/LiveData;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    new-instance v1, Lvq6;

    .line 50
    .line 51
    invoke-direct {v1, p0, p1}, Lvq6;-><init>(Lteam/opay/pay/payment/giftcard/GiftCardViewModel;Lteam/opay/core/api/graphql/GiftCardProviderInfo;)V

    .line 52
    .line 53
    .line 54
    invoke-static {v0, p2, v1}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final K()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/core/api/graphql/GiftCardProviderResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/giftcard/GiftCardViewModel;->c:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    return-object v0
.end method

.method public final L(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljr2;)Ljava/lang/Object;
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljr2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Ljr2<",
            "-",
            "Ljava/util/List<",
            "Lteam/opay/pay/payment/giftcard/QuickSpanItemEntry;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    new-instance p3, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/pay/payment/giftcard/GiftCardViewModel;->K()Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lteam/opay/core/api/graphql/GiftCardProviderResult;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x3

    .line 18
    const/4 v3, 0x1

    .line 19
    const/4 v4, 0x0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0}, Lteam/opay/core/api/graphql/GiftCardProviderResult;->a()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    if-eqz v5, :cond_2

    .line 27
    .line 28
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    const/4 v6, 0x0

    .line 33
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    if-eqz v7, :cond_2

    .line 38
    .line 39
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    check-cast v7, Lteam/opay/core/api/graphql/GiftCardProviderInfo;

    .line 44
    .line 45
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 46
    .line 47
    .line 48
    move-result v8

    .line 49
    if-nez v8, :cond_0

    .line 50
    .line 51
    if-nez v6, :cond_1

    .line 52
    .line 53
    new-instance v6, Lteam/opay/pay/payment/giftcard/QuickSpanItemEntry;

    .line 54
    .line 55
    invoke-direct {v6, v3, v1, v2}, Lteam/opay/pay/payment/giftcard/QuickSpanItemEntry;-><init>(ILjava/lang/Object;I)V

    .line 56
    .line 57
    .line 58
    invoke-interface {p3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    const/4 v6, 0x1

    .line 62
    :cond_1
    new-instance v8, Lteam/opay/pay/payment/giftcard/QuickSpanItemEntry;

    .line 63
    .line 64
    invoke-direct {v8, v4, v7, v3}, Lteam/opay/pay/payment/giftcard/QuickSpanItemEntry;-><init>(ILjava/lang/Object;I)V

    .line 65
    .line 66
    .line 67
    invoke-interface {p3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .line 75
    .line 76
    new-instance v6, Lkotlin/text/Regex;

    .line 77
    .line 78
    const-string v7, "\\d+(.0+)?"

    .line 79
    .line 80
    invoke-direct {v6, v7}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v6, p1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    if-eqz v0, :cond_c

    .line 88
    .line 89
    invoke-virtual {v0}, Lteam/opay/core/api/graphql/GiftCardProviderResult;->b()Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    if-eqz v0, :cond_c

    .line 94
    .line 95
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    move-object v7, v1

    .line 100
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result v8

    .line 104
    if-eqz v8, :cond_c

    .line 105
    .line 106
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v8

    .line 110
    check-cast v8, Lteam/opay/core/api/graphql/GiftCardProviderInfo;

    .line 111
    .line 112
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 113
    .line 114
    .line 115
    move-result v9

    .line 116
    if-nez v9, :cond_4

    .line 117
    .line 118
    const/4 v9, 0x1

    .line 119
    goto :goto_2

    .line 120
    :cond_4
    const/4 v9, 0x0

    .line 121
    :goto_2
    if-nez v9, :cond_9

    .line 122
    .line 123
    if-nez v6, :cond_5

    .line 124
    .line 125
    invoke-virtual {v8}, Lteam/opay/core/api/graphql/GiftCardProviderInfo;->getCategoryId()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v9

    .line 129
    invoke-static {p1, v9}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v9

    .line 133
    goto :goto_5

    .line 134
    :cond_5
    invoke-virtual {v8}, Lteam/opay/core/api/graphql/GiftCardProviderInfo;->getCategoryId()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v9

    .line 138
    const/4 v10, 0x0

    .line 139
    if-eqz v9, :cond_6

    .line 140
    .line 141
    invoke-static {v9}, Lkotlin/text/StringsKt;->w(Ljava/lang/String;)Ljava/lang/Float;

    .line 142
    .line 143
    .line 144
    move-result-object v9

    .line 145
    if-eqz v9, :cond_6

    .line 146
    .line 147
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    .line 148
    .line 149
    .line 150
    move-result v9

    .line 151
    goto :goto_3

    .line 152
    :cond_6
    const/4 v9, 0x0

    .line 153
    :goto_3
    invoke-static {p1}, Lkotlin/text/StringsKt;->w(Ljava/lang/String;)Ljava/lang/Float;

    .line 154
    .line 155
    .line 156
    move-result-object v11

    .line 157
    if-eqz v11, :cond_7

    .line 158
    .line 159
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    .line 160
    .line 161
    .line 162
    move-result v11

    .line 163
    goto :goto_4

    .line 164
    :cond_7
    const/4 v11, 0x0

    .line 165
    :goto_4
    sub-float/2addr v9, v11

    .line 166
    const/high16 v11, 0x3f800000    # 1.0f

    .line 167
    .line 168
    cmpg-float v11, v9, v11

    .line 169
    .line 170
    if-gez v11, :cond_8

    .line 171
    .line 172
    cmpl-float v9, v9, v10

    .line 173
    .line 174
    if-ltz v9, :cond_8

    .line 175
    .line 176
    const/4 v9, 0x1

    .line 177
    goto :goto_5

    .line 178
    :cond_8
    const/4 v9, 0x0

    .line 179
    :cond_9
    :goto_5
    if-eqz v9, :cond_3

    .line 180
    .line 181
    invoke-virtual {v8}, Lteam/opay/core/api/graphql/GiftCardProviderInfo;->getProviderName()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v9

    .line 185
    if-eqz v9, :cond_a

    .line 186
    .line 187
    invoke-static {v9}, Lkotlin/text/StringsKt;->y1(Ljava/lang/CharSequence;)C

    .line 188
    .line 189
    .line 190
    move-result v9

    .line 191
    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v9

    .line 195
    const-string v10, "null cannot be cast to non-null type java.lang.String"

    .line 196
    .line 197
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 201
    .line 202
    invoke-virtual {v9, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v9

    .line 206
    const-string v10, "toUpperCase(...)"

    .line 207
    .line 208
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    goto :goto_6

    .line 212
    :cond_a
    move-object v9, v1

    .line 213
    :goto_6
    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v10

    .line 217
    if-nez v10, :cond_b

    .line 218
    .line 219
    if-eqz v9, :cond_b

    .line 220
    .line 221
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    new-instance v7, Lteam/opay/pay/payment/giftcard/QuickSpanItemEntry;

    .line 225
    .line 226
    invoke-direct {v7, v2, v9, v2}, Lteam/opay/pay/payment/giftcard/QuickSpanItemEntry;-><init>(ILjava/lang/Object;I)V

    .line 227
    .line 228
    .line 229
    invoke-interface {p3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-object v7, v9

    .line 233
    :cond_b
    new-instance v9, Lteam/opay/pay/payment/giftcard/QuickSpanItemEntry;

    .line 234
    .line 235
    const/4 v10, 0x2

    .line 236
    invoke-direct {v9, v10, v8, v2}, Lteam/opay/pay/payment/giftcard/QuickSpanItemEntry;-><init>(ILjava/lang/Object;I)V

    .line 237
    .line 238
    .line 239
    invoke-interface {p3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    goto/16 :goto_1

    .line 243
    .line 244
    :cond_c
    invoke-interface {p2, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    return-object p3
.end method

.method public final M()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lteam/opay/pay/payment/giftcard/QuickSpanItemEntry;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/giftcard/GiftCardViewModel;->e:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    return-object v0
.end method

.method public final P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Lag8;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 13
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Ljava/lang/String;",
            "Lag8;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/pay/cashier/OrderInfo;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p6

    .line 2
    .line 3
    move-object/from16 v1, p7

    .line 4
    .line 5
    move-object/from16 v2, p8

    .line 6
    .line 7
    const-string v3, "providerId"

    .line 8
    .line 9
    move-object v5, p1

    .line 10
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v3, "productId"

    .line 14
    .line 15
    move-object v6, p2

    .line 16
    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v3, "categoryId"

    .line 20
    .line 21
    move-object/from16 v9, p3

    .line 22
    .line 23
    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v3, "amount"

    .line 27
    .line 28
    move-object/from16 v8, p4

    .line 29
    .line 30
    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v3, "country"

    .line 34
    .line 35
    move-object/from16 v7, p5

    .line 36
    .line 37
    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v3, "owner"

    .line 41
    .line 42
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string v3, "success"

    .line 46
    .line 47
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string v3, "error"

    .line 51
    .line 52
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    new-instance v3, Lteam/opay/core/android/arch/RequestBuilder;

    .line 56
    .line 57
    invoke-direct {v3}, Lteam/opay/core/android/arch/RequestBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    move-object v10, p0

    .line 61
    invoke-virtual {v3, p0}, Lteam/opay/core/android/arch/RequestBuilder;->v(Landroidx/lifecycle/AndroidViewModel;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-direct {p0}, Lteam/opay/pay/payment/giftcard/GiftCardViewModel;->D()Lxt;

    .line 66
    .line 67
    .line 68
    move-result-object v11

    .line 69
    new-instance v12, Lteam/opay/core/api/graphql/GiftCardPreOrderRequest;

    .line 70
    .line 71
    move-object v4, v12

    .line 72
    invoke-direct/range {v4 .. v9}, Lteam/opay/core/api/graphql/GiftCardPreOrderRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-interface {v11, v12}, Lxt;->F(Lteam/opay/core/api/graphql/GiftCardPreOrderRequest;)Lretrofit2/Call;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-virtual {v3, v4}, Lteam/opay/core/android/arch/RequestBuilder;->a(Lretrofit2/Call;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v3}, Lteam/opay/core/android/arch/RequestBuilder;->b()Landroidx/lifecycle/LiveData;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    new-instance v4, Lwq6;

    .line 88
    .line 89
    invoke-direct {v4, v1, v2}, Lwq6;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 90
    .line 91
    .line 92
    invoke-static {v3, v0, v4}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public final R(Lag8;)V
    .locals 5
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "owner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/core/android/arch/RequestBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Lteam/opay/core/android/arch/RequestBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Lteam/opay/core/android/arch/RequestBuilder;->v(Landroidx/lifecycle/AndroidViewModel;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-direct {p0}, Lteam/opay/pay/payment/giftcard/GiftCardViewModel;->D()Lxt;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    new-instance v2, Lteam/opay/core/api/graphql/GiftCardListRequest;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v4, 0x1

    .line 23
    invoke-direct {v2, v3, v4, v3}, Lteam/opay/core/api/graphql/GiftCardListRequest;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {v1, v2}, Lxt;->M(Lteam/opay/core/api/graphql/GiftCardListRequest;)Lretrofit2/Call;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lteam/opay/core/android/arch/RequestBuilder;->a(Lretrofit2/Call;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-class v1, Lteam/opay/core/api/graphql/GiftCardProviderResult;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lteam/opay/core/android/arch/RequestBuilder;->c(Ljava/lang/Class;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lteam/opay/core/android/arch/RequestBuilder;->b()Landroidx/lifecycle/LiveData;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    new-instance v1, Luq6;

    .line 45
    .line 46
    invoke-direct {v1, p0}, Luq6;-><init>(Lteam/opay/pay/payment/giftcard/GiftCardViewModel;)V

    .line 47
    .line 48
    .line 49
    invoke-static {v0, p1, v1}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final T(Ljava/lang/String;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    new-instance v4, Lteam/opay/pay/payment/giftcard/GiftCardViewModel$search$1;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-direct {v4, p0, p1, v0}, Lteam/opay/pay/payment/giftcard/GiftCardViewModel$search$1;-><init>(Lteam/opay/pay/payment/giftcard/GiftCardViewModel;Ljava/lang/String;Ljr2;)V

    .line 18
    .line 19
    .line 20
    const/4 v5, 0x2

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final V(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/core/api/graphql/GiftCardCountryInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/payment/giftcard/GiftCardViewModel;->h:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method
