.class public final Lteam/opay/pay/coupon/OpayVoucherViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "OpayVoucherViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001d\u0010\r\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\r\u0010\u000eJ7\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\n2\u0018\u0010\u0013\u001a\u0014\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000c0\u0011\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u001d\u0010\u001a\u001a\u00020\u000c2\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u0018\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ#\u0010 \u001a\u00020\u000c2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001c2\u0006\u0010\u001f\u001a\u00020\u0018\u00a2\u0006\u0004\u0008 \u0010!J)\u0010&\u001a\u00020\u000c2\u0008\u0010#\u001a\u0004\u0018\u00010\"2\u0008\u0010$\u001a\u0004\u0018\u00010\"2\u0006\u0010%\u001a\u00020\u001d\u00a2\u0006\u0004\u0008&\u0010\'J+\u0010(\u001a\u00020\u000c2\u0008\u0010#\u001a\u0004\u0018\u00010\"2\u0008\u0010$\u001a\u0004\u0018\u00010\"2\u0006\u0010%\u001a\u00020\u001dH\u0002\u00a2\u0006\u0004\u0008(\u0010\'R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008)\u0010*R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R6\u00104\u001a\u0016\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u001cj\n\u0012\u0004\u0012\u00020\u001d\u0018\u0001`-8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008.\u0010/\u001a\u0004\u00080\u00101\"\u0004\u00082\u00103R6\u00109\u001a\u0016\u0012\u0004\u0012\u000205\u0018\u00010\u001cj\n\u0012\u0004\u0012\u000205\u0018\u0001`-8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00086\u0010/\u001a\u0004\u00087\u00101\"\u0004\u00088\u00103R1\u0010?\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u001cj\n\u0012\u0004\u0012\u00020\u001d\u0018\u0001`-0:8\u0006\u00a2\u0006\u000c\n\u0004\u0008;\u0010<\u001a\u0004\u0008=\u0010>R\u001d\u0010B\u001a\u0008\u0012\u0004\u0012\u00020\u001d0:8\u0006\u00a2\u0006\u000c\n\u0004\u0008@\u0010<\u001a\u0004\u0008A\u0010>R.\u0010D\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u000205\u0018\u00010\u001cj\n\u0012\u0004\u0012\u000205\u0018\u0001`-0:8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008C\u0010<R$\u0010\t\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008E\u0010F\u001a\u0004\u0008G\u0010H\"\u0004\u0008I\u0010JR\u001d\u0010P\u001a\u0008\u0012\u0004\u0012\u00020\u00120K8\u0006\u00a2\u0006\u000c\n\u0004\u0008L\u0010M\u001a\u0004\u0008N\u0010OR\u0018\u0010T\u001a\u0004\u0018\u00010Q8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008R\u0010SR\u001f\u0010W\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0:8\u0006\u00a2\u0006\u000c\n\u0004\u0008U\u0010<\u001a\u0004\u0008V\u0010>R\u0017\u0010]\u001a\u00020X8\u0006\u00a2\u0006\u000c\n\u0004\u0008Y\u0010Z\u001a\u0004\u0008[\u0010\\R\u0014\u0010`\u001a\u00020\"8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008^\u0010_\u00a8\u0006a"
    }
    d2 = {
        "Lteam/opay/pay/coupon/OpayVoucherViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Landroid/app/Application;",
        "app",
        "Lteam/opay/pay/coupon/ObtainCouponRepository;",
        "obtainCouponRepository",
        "<init>",
        "(Landroid/app/Application;Lteam/opay/pay/coupon/ObtainCouponRepository;)V",
        "Lteam/opay/core/api/GraphQL$ServiceType;",
        "serviceType",
        "Lag8;",
        "lifecycleOwner",
        "",
        "M",
        "(Lteam/opay/core/api/GraphQL$ServiceType;Lag8;)V",
        "",
        "id",
        "Lkotlin/Function2;",
        "",
        "callback",
        "G",
        "(Ljava/lang/String;Lag8;Lkotlin/jvm/functions/Function2;)V",
        "Landroid/content/res/Resources;",
        "res",
        "",
        "texSize",
        "I",
        "(Landroid/content/res/Resources;I)V",
        "Ljava/util/ArrayList;",
        "Lteam/opay/pay/api/QueryVoucherItem;",
        "p",
        "width",
        "L",
        "(Ljava/util/ArrayList;I)V",
        "",
        "s",
        "endT",
        "queryVoucherItem",
        "x",
        "(Ljava/lang/Long;Ljava/lang/Long;Lteam/opay/pay/api/QueryVoucherItem;)V",
        "y",
        "b",
        "Landroid/app/Application;",
        "c",
        "Lteam/opay/pay/coupon/ObtainCouponRepository;",
        "Lkotlin/collections/ArrayList;",
        "d",
        "Ljava/util/ArrayList;",
        "E",
        "()Ljava/util/ArrayList;",
        "setUnclaimedVouchers",
        "(Ljava/util/ArrayList;)V",
        "unclaimedVouchers",
        "Lteam/opay/pay/coupon/Voucher;",
        "e",
        "C",
        "setObtainedVouchers",
        "obtainedVouchers",
        "Landroidx/lifecycle/MutableLiveData;",
        "f",
        "Landroidx/lifecycle/MutableLiveData;",
        "F",
        "()Landroidx/lifecycle/MutableLiveData;",
        "unclaimedVouchersResult",
        "g",
        "A",
        "clickUseVoucherEvent",
        "h",
        "obtainedVouchersResult",
        "i",
        "Lteam/opay/core/api/GraphQL$ServiceType;",
        "D",
        "()Lteam/opay/core/api/GraphQL$ServiceType;",
        "P",
        "(Lteam/opay/core/api/GraphQL$ServiceType;)V",
        "Landroidx/lifecycle/MediatorLiveData;",
        "j",
        "Landroidx/lifecycle/MediatorLiveData;",
        "B",
        "()Landroidx/lifecycle/MediatorLiveData;",
        "loadCompleteEvent",
        "Landroid/text/TextPaint;",
        "k",
        "Landroid/text/TextPaint;",
        "mTextPaint",
        "l",
        "z",
        "calculateLineEnd",
        "Ljava/text/SimpleDateFormat;",
        "m",
        "Ljava/text/SimpleDateFormat;",
        "getFormat",
        "()Ljava/text/SimpleDateFormat;",
        "format",
        "n",
        "J",
        "oneDay",
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

.field public final c:Lteam/opay/pay/coupon/ObtainCouponRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lteam/opay/pay/api/QueryVoucherItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lteam/opay/pay/coupon/Voucher;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final f:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/ArrayList<",
            "Lteam/opay/pay/api/QueryVoucherItem;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/api/QueryVoucherItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/ArrayList<",
            "Lteam/opay/pay/coupon/Voucher;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Lteam/opay/core/api/GraphQL$ServiceType;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final j:Landroidx/lifecycle/MediatorLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MediatorLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Landroid/text/TextPaint;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final l:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final m:Ljava/text/SimpleDateFormat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final n:J


# direct methods
.method public constructor <init>(Landroid/app/Application;Lteam/opay/pay/coupon/ObtainCouponRepository;)V
    .locals 3
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/coupon/ObtainCouponRepository;
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
    const-string v0, "obtainCouponRepository"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lteam/opay/pay/coupon/OpayVoucherViewModel;->b:Landroid/app/Application;

    .line 15
    .line 16
    iput-object p2, p0, Lteam/opay/pay/coupon/OpayVoucherViewModel;->c:Lteam/opay/pay/coupon/ObtainCouponRepository;

    .line 17
    .line 18
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 19
    .line 20
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lteam/opay/pay/coupon/OpayVoucherViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 24
    .line 25
    new-instance p2, Landroidx/lifecycle/MutableLiveData;

    .line 26
    .line 27
    invoke-direct {p2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p2, p0, Lteam/opay/pay/coupon/OpayVoucherViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 31
    .line 32
    new-instance p2, Landroidx/lifecycle/MutableLiveData;

    .line 33
    .line 34
    invoke-direct {p2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p2, p0, Lteam/opay/pay/coupon/OpayVoucherViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    .line 38
    .line 39
    new-instance v0, Landroidx/lifecycle/MediatorLiveData;

    .line 40
    .line 41
    invoke-direct {v0}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    .line 42
    .line 43
    .line 44
    new-instance v1, Lfva;

    .line 45
    .line 46
    invoke-direct {v1, p0, v0}, Lfva;-><init>(Lteam/opay/pay/coupon/OpayVoucherViewModel;Landroidx/lifecycle/MediatorLiveData;)V

    .line 47
    .line 48
    .line 49
    new-instance v2, Lteam/opay/pay/coupon/OpayVoucherViewModel$a;

    .line 50
    .line 51
    invoke-direct {v2, v1}, Lteam/opay/pay/coupon/OpayVoucherViewModel$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p1, v2}, Landroidx/lifecycle/MediatorLiveData;->b(Landroidx/lifecycle/LiveData;Lvfa;)V

    .line 55
    .line 56
    .line 57
    new-instance p1, Lgva;

    .line 58
    .line 59
    invoke-direct {p1, p0, v0}, Lgva;-><init>(Lteam/opay/pay/coupon/OpayVoucherViewModel;Landroidx/lifecycle/MediatorLiveData;)V

    .line 60
    .line 61
    .line 62
    new-instance v1, Lteam/opay/pay/coupon/OpayVoucherViewModel$a;

    .line 63
    .line 64
    invoke-direct {v1, p1}, Lteam/opay/pay/coupon/OpayVoucherViewModel$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p2, v1}, Landroidx/lifecycle/MediatorLiveData;->b(Landroidx/lifecycle/LiveData;Lvfa;)V

    .line 68
    .line 69
    .line 70
    iput-object v0, p0, Lteam/opay/pay/coupon/OpayVoucherViewModel;->j:Landroidx/lifecycle/MediatorLiveData;

    .line 71
    .line 72
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 73
    .line 74
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object p1, p0, Lteam/opay/pay/coupon/OpayVoucherViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    .line 78
    .line 79
    new-instance p1, Ljava/text/SimpleDateFormat;

    .line 80
    .line 81
    const-string p2, "MMM dd"

    .line 82
    .line 83
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 84
    .line 85
    invoke-direct {p1, p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 86
    .line 87
    .line 88
    iput-object p1, p0, Lteam/opay/pay/coupon/OpayVoucherViewModel;->m:Ljava/text/SimpleDateFormat;

    .line 89
    .line 90
    const-wide/32 p1, 0x5265c00

    .line 91
    .line 92
    .line 93
    iput-wide p1, p0, Lteam/opay/pay/coupon/OpayVoucherViewModel;->n:J

    .line 94
    .line 95
    return-void
.end method

.method public static final H(Lkotlin/jvm/functions/Function2;Lteam/opay/pay/coupon/OpayVoucherViewModel;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p3, :cond_0

    .line 3
    .line 4
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v1, v0

    .line 10
    :goto_0
    sget-object v2, Lteam/opay/core/android/arch/Status;->SUCCESS:Lteam/opay/core/android/arch/Status;

    .line 11
    .line 12
    if-ne v1, v2, :cond_5

    .line 13
    .line 14
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lteam/opay/pay/api/GetVouchersResult;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {v1}, Lteam/opay/pay/api/GetVouchersResult;->b()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move-object v1, v0

    .line 28
    :goto_1
    const-string v3, "1"

    .line 29
    .line 30
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_5

    .line 35
    .line 36
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 37
    .line 38
    const-string v1, "success"

    .line 39
    .line 40
    invoke-interface {p0, p3, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    iget-object p0, p1, Lteam/opay/pay/coupon/OpayVoucherViewModel;->d:Ljava/util/ArrayList;

    .line 44
    .line 45
    if-eqz p0, :cond_4

    .line 46
    .line 47
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result p3

    .line 55
    if-eqz p3, :cond_3

    .line 56
    .line 57
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p3

    .line 61
    move-object v1, p3

    .line 62
    check-cast v1, Lteam/opay/pay/api/QueryVoucherItem;

    .line 63
    .line 64
    invoke-virtual {v1}, Lteam/opay/pay/api/QueryVoucherItem;->getVoucherBatchId()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_2

    .line 73
    .line 74
    move-object v0, p3

    .line 75
    :cond_3
    check-cast v0, Lteam/opay/pay/api/QueryVoucherItem;

    .line 76
    .line 77
    :cond_4
    if-eqz v0, :cond_c

    .line 78
    .line 79
    iget-object p0, p1, Lteam/opay/pay/coupon/OpayVoucherViewModel;->d:Ljava/util/ArrayList;

    .line 80
    .line 81
    if-eqz p0, :cond_c

    .line 82
    .line 83
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    goto :goto_5

    .line 87
    :cond_5
    if-eqz p3, :cond_6

    .line 88
    .line 89
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    goto :goto_2

    .line 94
    :cond_6
    move-object p1, v0

    .line 95
    :goto_2
    const-string p2, "Failed"

    .line 96
    .line 97
    if-ne p1, v2, :cond_9

    .line 98
    .line 99
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 100
    .line 101
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p3

    .line 105
    check-cast p3, Lteam/opay/pay/api/GetVouchersResult;

    .line 106
    .line 107
    if-eqz p3, :cond_8

    .line 108
    .line 109
    invoke-virtual {p3}, Lteam/opay/pay/api/GetVouchersResult;->a()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p3

    .line 113
    if-nez p3, :cond_7

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_7
    move-object p2, p3

    .line 117
    :cond_8
    :goto_3
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    goto :goto_5

    .line 121
    :cond_9
    if-eqz p3, :cond_a

    .line 122
    .line 123
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    :cond_a
    sget-object p1, Lteam/opay/core/android/arch/Status;->ERROR:Lteam/opay/core/android/arch/Status;

    .line 128
    .line 129
    if-ne v0, p1, :cond_c

    .line 130
    .line 131
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 132
    .line 133
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p3

    .line 137
    if-nez p3, :cond_b

    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_b
    move-object p2, p3

    .line 141
    :goto_4
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    :cond_c
    :goto_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 145
    .line 146
    return-object p0
.end method

.method public static final J(Lteam/opay/pay/coupon/OpayVoucherViewModel;Landroidx/lifecycle/MediatorLiveData;Ljava/util/ArrayList;)Lkotlin/Unit;
    .locals 0

    .line 1
    iput-object p2, p0, Lteam/opay/pay/coupon/OpayVoucherViewModel;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object p0, p0, Lteam/opay/pay/coupon/OpayVoucherViewModel;->e:Ljava/util/ArrayList;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final K(Lteam/opay/pay/coupon/OpayVoucherViewModel;Landroidx/lifecycle/MediatorLiveData;Ljava/util/ArrayList;)Lkotlin/Unit;
    .locals 0

    .line 1
    iput-object p2, p0, Lteam/opay/pay/coupon/OpayVoucherViewModel;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object p0, p0, Lteam/opay/pay/coupon/OpayVoucherViewModel;->d:Ljava/util/ArrayList;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final N(Lteam/opay/pay/coupon/OpayVoucherViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v1, v0

    .line 10
    :goto_0
    sget-object v2, Lteam/opay/core/android/arch/Status;->SUCCESS:Lteam/opay/core/android/arch/Status;

    .line 11
    .line 12
    if-ne v1, v2, :cond_5

    .line 13
    .line 14
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lteam/opay/pay/coupon/VoucherCandidateStatusList;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {v1}, Lteam/opay/pay/coupon/VoucherCandidateStatusList;->getAvailableVoucherList()Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move-object v1, v0

    .line 28
    :goto_1
    if-eqz v1, :cond_5

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
    goto :goto_2

    .line 37
    :cond_2
    iget-object p0, p0, Lteam/opay/pay/coupon/OpayVoucherViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    .line 38
    .line 39
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lteam/opay/pay/coupon/VoucherCandidateStatusList;

    .line 44
    .line 45
    if-eqz p1, :cond_3

    .line 46
    .line 47
    invoke-virtual {p1}, Lteam/opay/pay/coupon/VoucherCandidateStatusList;->getAvailableVoucherList()Ljava/util/ArrayList;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :cond_3
    if-nez v0, :cond_4

    .line 52
    .line 53
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    :cond_4
    const-string p1, "null cannot be cast to non-null type java.util.ArrayList<team.opay.pay.coupon.Voucher>"

    .line 58
    .line 59
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    check-cast v0, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_5
    :goto_2
    if-eqz p1, :cond_6

    .line 69
    .line 70
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    :cond_6
    sget-object p1, Lteam/opay/core/android/arch/Status;->LOADING:Lteam/opay/core/android/arch/Status;

    .line 75
    .line 76
    if-eq v0, p1, :cond_7

    .line 77
    .line 78
    iget-object p0, p0, Lteam/opay/pay/coupon/OpayVoucherViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    .line 79
    .line 80
    new-instance p1, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    :cond_7
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 89
    .line 90
    return-object p0
.end method

.method public static final O(Lteam/opay/pay/coupon/OpayVoucherViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v1, v0

    .line 10
    :goto_0
    sget-object v2, Lteam/opay/core/android/arch/Status;->SUCCESS:Lteam/opay/core/android/arch/Status;

    .line 11
    .line 12
    if-ne v1, v2, :cond_4

    .line 13
    .line 14
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lteam/opay/pay/api/QueryVoucherResult;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Lteam/opay/pay/api/QueryVoucherResult;->getVoucherList()Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-nez p1, :cond_2

    .line 27
    .line 28
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 34
    .line 35
    const/16 v1, 0xa

    .line 36
    .line 37
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 42
    .line 43
    .line 44
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_3

    .line 53
    .line 54
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Lteam/opay/pay/api/QueryVoucherItem;

    .line 59
    .line 60
    invoke-virtual {v2}, Lteam/opay/pay/api/QueryVoucherItem;->getStartTime()Ljava/lang/Long;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v2}, Lteam/opay/pay/api/QueryVoucherItem;->getEndTime()Ljava/lang/Long;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {p0, v3, v4, v2}, Lteam/opay/pay/coupon/OpayVoucherViewModel;->y(Ljava/lang/Long;Ljava/lang/Long;Lteam/opay/pay/api/QueryVoucherItem;)V

    .line 69
    .line 70
    .line 71
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 72
    .line 73
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    iget-object p0, p0, Lteam/opay/pay/coupon/OpayVoucherViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 78
    .line 79
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_4
    if-eqz p1, :cond_5

    .line 84
    .line 85
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    :cond_5
    sget-object p1, Lteam/opay/core/android/arch/Status;->LOADING:Lteam/opay/core/android/arch/Status;

    .line 90
    .line 91
    if-eq v0, p1, :cond_6

    .line 92
    .line 93
    iget-object p0, p0, Lteam/opay/pay/coupon/OpayVoucherViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 94
    .line 95
    new-instance p1, Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    :cond_6
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 104
    .line 105
    return-object p0
.end method

.method public static synthetic r(Lkotlin/jvm/functions/Function2;Lteam/opay/pay/coupon/OpayVoucherViewModel;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/coupon/OpayVoucherViewModel;->H(Lkotlin/jvm/functions/Function2;Lteam/opay/pay/coupon/OpayVoucherViewModel;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic s(Lteam/opay/pay/coupon/OpayVoucherViewModel;Landroidx/lifecycle/MediatorLiveData;Ljava/util/ArrayList;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/coupon/OpayVoucherViewModel;->K(Lteam/opay/pay/coupon/OpayVoucherViewModel;Landroidx/lifecycle/MediatorLiveData;Ljava/util/ArrayList;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic t(Lteam/opay/pay/coupon/OpayVoucherViewModel;Landroidx/lifecycle/MediatorLiveData;Ljava/util/ArrayList;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/coupon/OpayVoucherViewModel;->J(Lteam/opay/pay/coupon/OpayVoucherViewModel;Landroidx/lifecycle/MediatorLiveData;Ljava/util/ArrayList;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic u(Lteam/opay/pay/coupon/OpayVoucherViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/coupon/OpayVoucherViewModel;->O(Lteam/opay/pay/coupon/OpayVoucherViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic v(Lteam/opay/pay/coupon/OpayVoucherViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/coupon/OpayVoucherViewModel;->N(Lteam/opay/pay/coupon/OpayVoucherViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic w(Lteam/opay/pay/coupon/OpayVoucherViewModel;)Landroid/text/TextPaint;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/coupon/OpayVoucherViewModel;->k:Landroid/text/TextPaint;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final A()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/api/QueryVoucherItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/coupon/OpayVoucherViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final B()Landroidx/lifecycle/MediatorLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MediatorLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/coupon/OpayVoucherViewModel;->j:Landroidx/lifecycle/MediatorLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final C()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lteam/opay/pay/coupon/Voucher;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/coupon/OpayVoucherViewModel;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final D()Lteam/opay/core/api/GraphQL$ServiceType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/coupon/OpayVoucherViewModel;->i:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 2
    .line 3
    return-object v0
.end method

.method public final E()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lteam/opay/pay/api/QueryVoucherItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/coupon/OpayVoucherViewModel;->d:Ljava/util/ArrayList;

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
            "Ljava/util/ArrayList<",
            "Lteam/opay/pay/api/QueryVoucherItem;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/coupon/OpayVoucherViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final G(Ljava/lang/String;Lag8;Lkotlin/jvm/functions/Function2;)V
    .locals 11
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lag8;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "id"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "lifecycleOwner"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "callback"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lteam/opay/pay/coupon/OpayVoucherViewModel;->c:Lteam/opay/pay/coupon/ObtainCouponRepository;

    .line 17
    .line 18
    new-instance v10, Lteam/opay/pay/api/GetVouchersBody;

    .line 19
    .line 20
    const/16 v8, 0x20

    .line 21
    .line 22
    const/4 v9, 0x0

    .line 23
    const-string v2, "2"

    .line 24
    .line 25
    const-string v3, "9999999"

    .line 26
    .line 27
    const-string v4, "2"

    .line 28
    .line 29
    const-string v5, "11"

    .line 30
    .line 31
    const/4 v7, 0x0

    .line 32
    move-object v1, v10

    .line 33
    move-object v6, p1

    .line 34
    invoke-direct/range {v1 .. v9}, Lteam/opay/pay/api/GetVouchersBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v10}, Lteam/opay/pay/coupon/ObtainCouponRepository;->f(Lteam/opay/pay/api/GetVouchersBody;)Landroidx/lifecycle/LiveData;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    new-instance v1, Ljva;

    .line 42
    .line 43
    invoke-direct {v1, p3, p0, p1}, Ljva;-><init>(Lkotlin/jvm/functions/Function2;Lteam/opay/pay/coupon/OpayVoucherViewModel;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v0, p2, v1}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final I(Landroid/content/res/Resources;I)V
    .locals 2
    .param p1    # Landroid/content/res/Resources;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "res"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/text/TextPaint;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lteam/opay/pay/coupon/OpayVoucherViewModel;->k:Landroid/text/TextPaint;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 19
    .line 20
    iput p1, v0, Landroid/text/TextPaint;->density:F

    .line 21
    .line 22
    iget-object p1, p0, Lteam/opay/pay/coupon/OpayVoucherViewModel;->k:Landroid/text/TextPaint;

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    int-to-float p2, p2

    .line 27
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public final L(Ljava/util/ArrayList;I)V
    .locals 7
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lteam/opay/pay/api/QueryVoucherItem;",
            ">;I)V"
        }
    .end annotation

    .line 1
    const-string v0, "p"

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
    new-instance v4, Lteam/opay/pay/coupon/OpayVoucherViewModel$loadTextLine$1;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-direct {v4, p1, p0, p2, v0}, Lteam/opay/pay/coupon/OpayVoucherViewModel$loadTextLine$1;-><init>(Ljava/util/ArrayList;Lteam/opay/pay/coupon/OpayVoucherViewModel;ILjr2;)V

    .line 14
    .line 15
    .line 16
    const/4 v5, 0x3

    .line 17
    const/4 v6, 0x0

    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final M(Lteam/opay/core/api/GraphQL$ServiceType;Lag8;)V
    .locals 8
    .param p1    # Lteam/opay/core/api/GraphQL$ServiceType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "serviceType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "lifecycleOwner"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lteam/opay/pay/coupon/OpayVoucherViewModel;->e:Ljava/util/ArrayList;

    .line 13
    .line 14
    iput-object v0, p0, Lteam/opay/pay/coupon/OpayVoucherViewModel;->d:Ljava/util/ArrayList;

    .line 15
    .line 16
    iget-object v0, p0, Lteam/opay/pay/coupon/OpayVoucherViewModel;->c:Lteam/opay/pay/coupon/ObtainCouponRepository;

    .line 17
    .line 18
    new-instance v7, Lteam/opay/pay/coupon/VoucherGrabRequest;

    .line 19
    .line 20
    invoke-virtual {p1}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const/4 v5, 0x6

    .line 25
    const/4 v6, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    const/4 v4, 0x0

    .line 28
    move-object v1, v7

    .line 29
    invoke-direct/range {v1 .. v6}, Lteam/opay/pay/coupon/VoucherGrabRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v7}, Lteam/opay/pay/coupon/ObtainCouponRepository;->h(Lteam/opay/pay/coupon/VoucherGrabRequest;)Landroidx/lifecycle/LiveData;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v1, Lhva;

    .line 37
    .line 38
    invoke-direct {v1, p0}, Lhva;-><init>(Lteam/opay/pay/coupon/OpayVoucherViewModel;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v0, p2, v1}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lteam/opay/pay/coupon/OpayVoucherViewModel;->c:Lteam/opay/pay/coupon/ObtainCouponRepository;

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Lteam/opay/pay/coupon/ObtainCouponRepository;->i(Lteam/opay/core/api/GraphQL$ServiceType;)Landroidx/lifecycle/LiveData;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    new-instance v0, Liva;

    .line 51
    .line 52
    invoke-direct {v0, p0}, Liva;-><init>(Lteam/opay/pay/coupon/OpayVoucherViewModel;)V

    .line 53
    .line 54
    .line 55
    invoke-static {p1, p2, v0}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final P(Lteam/opay/core/api/GraphQL$ServiceType;)V
    .locals 0
    .param p1    # Lteam/opay/core/api/GraphQL$ServiceType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/coupon/OpayVoucherViewModel;->i:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 2
    .line 3
    return-void
.end method

.method public final x(Ljava/lang/Long;Ljava/lang/Long;Lteam/opay/pay/api/QueryVoucherItem;)V
    .locals 10
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lteam/opay/pay/api/QueryVoucherItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "queryVoucherItem"

    .line 4
    .line 5
    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 13
    .line 14
    .line 15
    move-result-wide v4

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-wide v4, v2

    .line 18
    :goto_0
    const/16 p1, 0x3e8

    .line 19
    .line 20
    int-to-long v6, p1

    .line 21
    mul-long v4, v4, v6

    .line 22
    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 26
    .line 27
    .line 28
    move-result-wide p1

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move-wide p1, v2

    .line 31
    :goto_1
    mul-long p1, p1, v6

    .line 32
    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide v6

    .line 37
    cmp-long v8, v6, v4

    .line 38
    .line 39
    if-gez v8, :cond_2

    .line 40
    .line 41
    iget-object p1, p0, Lteam/opay/pay/coupon/OpayVoucherViewModel;->m:Ljava/text/SimpleDateFormat;

    .line 42
    .line 43
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p1, p2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    sget p2, Lteam/opay/pay/R$string;->osdk_valid_on_time:I

    .line 52
    .line 53
    new-array v1, v1, [Ljava/lang/Object;

    .line 54
    .line 55
    aput-object p1, v1, v0

    .line 56
    .line 57
    invoke-static {p2, v1}, Ljmf;->l(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const/16 p2, 0x65

    .line 62
    .line 63
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-static {p1, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    goto/16 :goto_3

    .line 72
    .line 73
    :cond_2
    const/16 v4, 0x66

    .line 74
    .line 75
    cmp-long v5, p1, v2

    .line 76
    .line 77
    if-lez v5, :cond_6

    .line 78
    .line 79
    new-instance v2, Ljava/util/Date;

    .line 80
    .line 81
    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    .line 85
    .line 86
    .line 87
    move-result-wide v2

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 89
    .line 90
    .line 91
    move-result-wide v5

    .line 92
    sub-long/2addr v2, v5

    .line 93
    const-wide/16 v5, 0x1

    .line 94
    .line 95
    cmp-long v7, v5, v2

    .line 96
    .line 97
    if-gtz v7, :cond_3

    .line 98
    .line 99
    iget-wide v5, p0, Lteam/opay/pay/coupon/OpayVoucherViewModel;->n:J

    .line 100
    .line 101
    cmp-long v7, v2, v5

    .line 102
    .line 103
    if-gez v7, :cond_3

    .line 104
    .line 105
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 106
    .line 107
    const-string v3, "HH:mm:ss"

    .line 108
    .line 109
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 114
    .line 115
    .line 116
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {v2, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    sget p2, Lteam/opay/pay/R$string;->osdk_expire_one_day:I

    .line 125
    .line 126
    new-array v1, v1, [Ljava/lang/Object;

    .line 127
    .line 128
    aput-object p1, v1, v0

    .line 129
    .line 130
    invoke-static {p2, v1}, Ljmf;->l(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    const/16 p2, 0x68

    .line 135
    .line 136
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    invoke-static {p1, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    goto/16 :goto_3

    .line 145
    .line 146
    :cond_3
    iget-wide v5, p0, Lteam/opay/pay/coupon/OpayVoucherViewModel;->n:J

    .line 147
    .line 148
    cmp-long v7, v2, v5

    .line 149
    .line 150
    if-ltz v7, :cond_5

    .line 151
    .line 152
    const/4 v7, 0x3

    .line 153
    int-to-long v7, v7

    .line 154
    mul-long v7, v7, v5

    .line 155
    .line 156
    cmp-long v9, v2, v7

    .line 157
    .line 158
    if-gez v9, :cond_5

    .line 159
    .line 160
    long-to-float p1, v2

    .line 161
    long-to-float p2, v5

    .line 162
    div-float/2addr p1, p2

    .line 163
    float-to-double p1, p1

    .line 164
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    .line 165
    .line 166
    .line 167
    move-result-wide p1

    .line 168
    double-to-float p1, p1

    .line 169
    float-to-int p1, p1

    .line 170
    if-ne p1, v1, :cond_4

    .line 171
    .line 172
    const-string p2, ""

    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_4
    const-string p2, "s"

    .line 176
    .line 177
    :goto_2
    sget v2, Lteam/opay/pay/R$string;->osdk_expire_three_day:I

    .line 178
    .line 179
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    const/4 v3, 0x2

    .line 184
    new-array v3, v3, [Ljava/lang/Object;

    .line 185
    .line 186
    aput-object p1, v3, v0

    .line 187
    .line 188
    aput-object p2, v3, v1

    .line 189
    .line 190
    invoke-static {v2, v3}, Ljmf;->l(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    const/16 p2, 0x67

    .line 195
    .line 196
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 197
    .line 198
    .line 199
    move-result-object p2

    .line 200
    invoke-static {p1, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    goto :goto_3

    .line 205
    :cond_5
    iget-object v2, p0, Lteam/opay/pay/coupon/OpayVoucherViewModel;->m:Ljava/text/SimpleDateFormat;

    .line 206
    .line 207
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-virtual {v2, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    sget p2, Lteam/opay/pay/R$string;->osdk_expire_more_three_day:I

    .line 216
    .line 217
    new-array v1, v1, [Ljava/lang/Object;

    .line 218
    .line 219
    aput-object p1, v1, v0

    .line 220
    .line 221
    invoke-static {p2, v1}, Ljmf;->l(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 226
    .line 227
    .line 228
    move-result-object p2

    .line 229
    invoke-static {p1, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    goto :goto_3

    .line 234
    :cond_6
    iget-object v2, p0, Lteam/opay/pay/coupon/OpayVoucherViewModel;->m:Ljava/text/SimpleDateFormat;

    .line 235
    .line 236
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    invoke-virtual {v2, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    sget p2, Lteam/opay/pay/R$string;->osdk_expire_more_three_day:I

    .line 245
    .line 246
    new-array v1, v1, [Ljava/lang/Object;

    .line 247
    .line 248
    aput-object p1, v1, v0

    .line 249
    .line 250
    invoke-static {p2, v1}, Ljmf;->l(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 255
    .line 256
    .line 257
    move-result-object p2

    .line 258
    invoke-static {p1, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    :goto_3
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object p2

    .line 266
    check-cast p2, Ljava/lang/String;

    .line 267
    .line 268
    invoke-virtual {p3, p2}, Lteam/opay/pay/api/QueryVoucherItem;->setTimeStr(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    check-cast p1, Ljava/lang/Number;

    .line 276
    .line 277
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 278
    .line 279
    .line 280
    move-result p1

    .line 281
    invoke-virtual {p3, p1}, Lteam/opay/pay/api/QueryVoucherItem;->setTimeType(I)V

    .line 282
    .line 283
    .line 284
    return-void
.end method

.method public final y(Ljava/lang/Long;Ljava/lang/Long;Lteam/opay/pay/api/QueryVoucherItem;)V
    .locals 6

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-wide v2, v0

    .line 11
    :goto_0
    const/16 p1, 0x3e8

    .line 12
    .line 13
    int-to-long v4, p1

    .line 14
    mul-long v2, v2, v4

    .line 15
    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    :cond_1
    mul-long v0, v0, v4

    .line 23
    .line 24
    iget-object p1, p0, Lteam/opay/pay/coupon/OpayVoucherViewModel;->m:Ljava/text/SimpleDateFormat;

    .line 25
    .line 26
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {p1, p2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object p2, p0, Lteam/opay/pay/coupon/OpayVoucherViewModel;->m:Ljava/text/SimpleDateFormat;

    .line 35
    .line 36
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p2, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string p1, " - "

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p3, p1}, Lteam/opay/pay/api/QueryVoucherItem;->setTimeStr(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const/16 p1, 0x66

    .line 68
    .line 69
    invoke-virtual {p3, p1}, Lteam/opay/pay/api/QueryVoucherItem;->setTimeType(I)V

    .line 70
    .line 71
    .line 72
    const/4 p1, -0x1

    .line 73
    invoke-virtual {p3, p1}, Lteam/opay/pay/api/QueryVoucherItem;->setMaxLine(I)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final z()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/coupon/OpayVoucherViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method
