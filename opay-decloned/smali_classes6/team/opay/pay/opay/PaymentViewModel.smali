.class public final Lteam/opay/pay/opay/PaymentViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "PaymentViewModel.kt"

# interfaces
.implements Lteam/opay/core/api/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/opay/PaymentViewModel$Companion;,
        Lteam/opay/pay/opay/PaymentViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00cc\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 z2\u00020\u00012\u00020\u0002:\u0001{B)\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ=\u0010\u0016\u001a\u00020\u00142\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\u0014\u0010\u0015\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0013\u0012\u0004\u0012\u00020\u00140\u0012H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J#\u0010\u001b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00130\u001a0\u00192\u0006\u0010\u0011\u001a\u00020\u0018H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJU\u0010%\u001a\u00020\u00142\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u001d2\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u001f2\u0006\u0010\u000f\u001a\u00020\u000e2\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010\u00102\u0012\u0010$\u001a\u000e\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020\u00140\u0012H\u0002\u00a2\u0006\u0004\u0008%\u0010&J/\u0010)\u001a\u00020#2\u0008\u0010\'\u001a\u0004\u0018\u00010\u001f2\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010\u00102\u0008\u0010(\u001a\u0004\u0018\u00010\u001fH\u0002\u00a2\u0006\u0004\u0008)\u0010*JK\u0010+\u001a\u00020\u00142\u0006\u0010\u000f\u001a\u00020\u000e2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u001d2\u0008\u0010\"\u001a\u0004\u0018\u00010\u00102\u0006\u0010 \u001a\u00020\u001f2\u0012\u0010$\u001a\u000e\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020\u00140\u0012H\u0002\u00a2\u0006\u0004\u0008+\u0010,J\u001d\u00100\u001a\u00020\u00142\u0006\u0010.\u001a\u00020-2\u0006\u0010/\u001a\u00020\u000c\u00a2\u0006\u0004\u00080\u00101J-\u00105\u001a\u00020\u00142\u0006\u00102\u001a\u00020\u001f2\u0006\u00103\u001a\u00020\u001f2\u0006\u00104\u001a\u00020\u001f2\u0006\u0010/\u001a\u00020\u000c\u00a2\u0006\u0004\u00085\u00106J5\u0010<\u001a\u0016\u0012\u0004\u0012\u00020:\u0018\u000109j\n\u0012\u0004\u0012\u00020:\u0018\u0001`;2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0008\u0008\u0002\u00108\u001a\u000207\u00a2\u0006\u0004\u0008<\u0010=J1\u0010?\u001a\u00020\u00142\u0006\u0010\u000f\u001a\u00020>2\u0006\u0010\u0011\u001a\u00020\u00102\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020\u00140\u0012\u00a2\u0006\u0004\u0008?\u0010@J3\u0010C\u001a\u00020\u00142\u0006\u0010B\u001a\u00020A2\u0006\u0010\u0011\u001a\u00020\u00102\u0014\u0010\u0015\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0013\u0012\u0004\u0012\u00020\u00140\u0012\u00a2\u0006\u0004\u0008C\u0010DJ3\u0010E\u001a\u00020\u00142\u0006\u0010B\u001a\u00020A2\u0006\u0010\u0011\u001a\u00020\u00182\u0014\u0010\u0015\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0013\u0012\u0004\u0012\u00020\u00140\u0012\u00a2\u0006\u0004\u0008E\u0010FJ3\u0010G\u001a\u00020\u00142\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00182\u0014\u0010\u0015\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0013\u0012\u0004\u0012\u00020\u00140\u0012\u00a2\u0006\u0004\u0008G\u0010HJ\u0015\u0010J\u001a\u00020\u001f2\u0006\u0010I\u001a\u00020\u0018\u00a2\u0006\u0004\u0008J\u0010KR\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008L\u0010MR\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008N\u0010OR\u0014\u0010\t\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008P\u0010QR\u0014\u0010T\u001a\u00020\u001f8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008R\u0010SR\u001c\u0010Y\u001a\u0008\u0012\u0004\u0012\u00020V0U8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008W\u0010XR\u001d\u0010_\u001a\u0008\u0012\u0004\u0012\u00020V0Z8\u0006\u00a2\u0006\u000c\n\u0004\u0008[\u0010\\\u001a\u0004\u0008]\u0010^R\u001c\u0010a\u001a\u0008\u0012\u0004\u0012\u0002070U8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008`\u0010XR(\u0010g\u001a\u0008\u0012\u0004\u0012\u0002070U8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008b\u0010X\u001a\u0004\u0008c\u0010d\"\u0004\u0008e\u0010fR\u0017\u0010m\u001a\u00020h8\u0006\u00a2\u0006\u000c\n\u0004\u0008i\u0010j\u001a\u0004\u0008k\u0010lR\u0014\u0010q\u001a\u00020n8\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008o\u0010pR\u0014\u0010u\u001a\u00020r8\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008s\u0010tR\u0016\u0010y\u001a\u0004\u0018\u00010v8\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008w\u0010x\u00a8\u0006|"
    }
    d2 = {
        "Lteam/opay/pay/opay/PaymentViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Lteam/opay/core/api/e;",
        "Landroid/app/Application;",
        "application",
        "Lteam/opay/pay/payment/PaymentRepository;",
        "paymentRepository",
        "sessionProvider",
        "Lfv;",
        "api",
        "<init>",
        "(Landroid/app/Application;Lteam/opay/pay/payment/PaymentRepository;Lteam/opay/core/api/e;Lfv;)V",
        "Lag8;",
        "owner",
        "Landroidx/fragment/app/FragmentActivity;",
        "activity",
        "Lteam/opay/pay/cashier/TransferPreOrder;",
        "request",
        "Lkotlin/Function1;",
        "Lteam/opay/pay/cashier/OrderInfo;",
        "",
        "next",
        "d0",
        "(Lag8;Landroidx/fragment/app/FragmentActivity;Lteam/opay/pay/cashier/TransferPreOrder;Lkotlin/jvm/functions/Function1;)V",
        "Lteam/opay/pay/cashier/LifePreOrder;",
        "Lretrofit2/Call;",
        "Lteam/opay/pay/api/HttpResponse;",
        "L",
        "(Lteam/opay/pay/cashier/LifePreOrder;)Lretrofit2/Call;",
        "Lteam/opay/core/android/arch/Resource;",
        "it",
        "",
        "serviceType",
        "serviceId",
        "info",
        "Lteam/opay/pay/opay/PreOrderRetryData;",
        "retry",
        "X",
        "(Lteam/opay/core/android/arch/Resource;Ljava/lang/String;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lteam/opay/pay/cashier/TransferPreOrder;Lkotlin/jvm/functions/Function1;)V",
        "apiCode",
        "businessPreInteraction",
        "N",
        "(Ljava/lang/String;Lteam/opay/pay/cashier/TransferPreOrder;Ljava/lang/String;)Lteam/opay/pay/opay/PreOrderRetryData;",
        "g0",
        "(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/android/arch/Resource;Lteam/opay/pay/cashier/TransferPreOrder;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V",
        "Landroid/widget/EditText;",
        "amountEditText",
        "lifecycleOwner",
        "I",
        "(Landroid/widget/EditText;Lag8;)V",
        "orderId",
        "errCode",
        "errMsg",
        "J",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lag8;)V",
        "",
        "includeAmount",
        "Ljava/util/ArrayList;",
        "Lteam/opay/pay/home/tabs/TransferDetailsTipsData;",
        "Lkotlin/collections/ArrayList;",
        "O",
        "(Lteam/opay/pay/cashier/TransferPreOrder;Z)Ljava/util/ArrayList;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "m0",
        "(Landroidx/appcompat/app/AppCompatActivity;Lteam/opay/pay/cashier/TransferPreOrder;Lkotlin/jvm/functions/Function1;)V",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "n0",
        "(Landroidx/fragment/app/Fragment;Lteam/opay/pay/cashier/TransferPreOrder;Lkotlin/jvm/functions/Function1;)V",
        "R",
        "(Landroidx/fragment/app/Fragment;Lteam/opay/pay/cashier/LifePreOrder;Lkotlin/jvm/functions/Function1;)V",
        "S",
        "(Landroidx/fragment/app/FragmentActivity;Lteam/opay/pay/cashier/LifePreOrder;Lkotlin/jvm/functions/Function1;)V",
        "preOrder",
        "Q",
        "(Lteam/opay/pay/cashier/LifePreOrder;)Ljava/lang/String;",
        "c",
        "Landroid/app/Application;",
        "d",
        "Lteam/opay/pay/payment/PaymentRepository;",
        "e",
        "Lfv;",
        "f",
        "Ljava/lang/String;",
        "TAG",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lteam/opay/pay/opay/PaymentOrder;",
        "g",
        "Landroidx/lifecycle/MutableLiveData;",
        "_paymentOrderData",
        "Landroidx/lifecycle/LiveData;",
        "h",
        "Landroidx/lifecycle/LiveData;",
        "getCurrentPaymentOrder",
        "()Landroidx/lifecycle/LiveData;",
        "currentPaymentOrder",
        "i",
        "_fetchingData",
        "j",
        "M",
        "()Landroidx/lifecycle/MutableLiveData;",
        "setLoadingLiveData",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "loadingLiveData",
        "Lteam/opay/pay/analytics/AnalyticsBackend;",
        "k",
        "Lteam/opay/pay/analytics/AnalyticsBackend;",
        "getAnalytics",
        "()Lteam/opay/pay/analytics/AnalyticsBackend;",
        "analytics",
        "Lteam/opay/core/api/Country;",
        "o",
        "()Lteam/opay/core/api/Country;",
        "country",
        "Lteam/opay/core/api/GraphQL$Currency;",
        "p",
        "()Lteam/opay/core/api/GraphQL$Currency;",
        "currency",
        "Lteam/opay/core/api/GraphQL$User;",
        "m",
        "()Lteam/opay/core/api/GraphQL$User;",
        "user",
        "l",
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
.field public static final l:Lteam/opay/pay/opay/PaymentViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final synthetic b:Lteam/opay/core/api/e;

.field public final c:Landroid/app/Application;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lteam/opay/pay/payment/PaymentRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lfv;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/opay/PaymentOrder;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/pay/opay/PaymentOrder;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Lteam/opay/pay/analytics/AnalyticsBackend;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/opay/PaymentViewModel$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/opay/PaymentViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/opay/PaymentViewModel;->l:Lteam/opay/pay/opay/PaymentViewModel$Companion;

    .line 8
    .line 9
    const-string v0, "05049"

    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lteam/opay/pay/opay/PaymentViewModel;->m:Ljava/util/List;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lteam/opay/pay/payment/PaymentRepository;Lteam/opay/core/api/e;Lfv;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/payment/PaymentRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/core/api/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lfv;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "application"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "paymentRepository"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "sessionProvider"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "api"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 22
    .line 23
    .line 24
    iput-object p3, p0, Lteam/opay/pay/opay/PaymentViewModel;->b:Lteam/opay/core/api/e;

    .line 25
    .line 26
    iput-object p1, p0, Lteam/opay/pay/opay/PaymentViewModel;->c:Landroid/app/Application;

    .line 27
    .line 28
    iput-object p2, p0, Lteam/opay/pay/opay/PaymentViewModel;->d:Lteam/opay/pay/payment/PaymentRepository;

    .line 29
    .line 30
    iput-object p4, p0, Lteam/opay/pay/opay/PaymentViewModel;->e:Lfv;

    .line 31
    .line 32
    const-string p1, "PaymentViewModel"

    .line 33
    .line 34
    iput-object p1, p0, Lteam/opay/pay/opay/PaymentViewModel;->f:Ljava/lang/String;

    .line 35
    .line 36
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 37
    .line 38
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lteam/opay/pay/opay/PaymentViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 42
    .line 43
    iput-object p1, p0, Lteam/opay/pay/opay/PaymentViewModel;->h:Landroidx/lifecycle/LiveData;

    .line 44
    .line 45
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 46
    .line 47
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Lteam/opay/pay/opay/PaymentViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    .line 51
    .line 52
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 53
    .line 54
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Lteam/opay/pay/opay/PaymentViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    .line 58
    .line 59
    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->q()Landroid/app/Application;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Lteam/opay/pay/android/OpayApplication;

    .line 64
    .line 65
    invoke-virtual {p1}, Lteam/opay/pay/android/OpayApplication;->getAnalytics()Lteam/opay/pay/analytics/AnalyticsBackend;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iput-object p1, p0, Lteam/opay/pay/opay/PaymentViewModel;->k:Lteam/opay/pay/analytics/AnalyticsBackend;

    .line 70
    .line 71
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/cashier/TransferPreOrder;Lteam/opay/pay/opay/PaymentViewModel;Lag8;Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;Lteam/opay/pay/opay/PreOrderRetryData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lteam/opay/pay/opay/PaymentViewModel;->f0(Lteam/opay/pay/cashier/TransferPreOrder;Lteam/opay/pay/opay/PaymentViewModel;Lag8;Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;Lteam/opay/pay/opay/PreOrderRetryData;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic B(Lkotlin/jvm/functions/Function1;Lteam/opay/pay/opay/PaymentViewModel;Lteam/opay/core/android/arch/Resource;Lteam/opay/pay/cashier/TransferPreOrder;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/opay/PaymentViewModel;->i0(Lkotlin/jvm/functions/Function1;Lteam/opay/pay/opay/PaymentViewModel;Lteam/opay/core/android/arch/Resource;Lteam/opay/pay/cashier/TransferPreOrder;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic C(Landroidx/fragment/app/FragmentActivity;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/opay/PaymentViewModel;->c0(Landroidx/fragment/app/FragmentActivity;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic D(Lkotlin/jvm/functions/Function1;Lteam/opay/pay/opay/PaymentViewModel;Lteam/opay/core/android/arch/Resource;Lteam/opay/pay/cashier/TransferPreOrder;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/opay/PaymentViewModel;->j0(Lkotlin/jvm/functions/Function1;Lteam/opay/pay/opay/PaymentViewModel;Lteam/opay/core/android/arch/Resource;Lteam/opay/pay/cashier/TransferPreOrder;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic E(Lkotlin/jvm/functions/Function1;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/opay/PaymentViewModel;->a0(Lkotlin/jvm/functions/Function1;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic F(Lkotlin/jvm/functions/Function1;Lteam/opay/pay/cashier/OrderInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/opay/PaymentViewModel;->o0(Lkotlin/jvm/functions/Function1;Lteam/opay/pay/cashier/OrderInfo;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic G(Lteam/opay/pay/cashier/LifePreOrder;Lteam/opay/pay/opay/PaymentViewModel;Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function1;Lteam/opay/pay/opay/PreOrderRetryData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lteam/opay/pay/opay/PaymentViewModel;->W(Lteam/opay/pay/cashier/LifePreOrder;Lteam/opay/pay/opay/PaymentViewModel;Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function1;Lteam/opay/pay/opay/PreOrderRetryData;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic H(Lteam/opay/pay/cashier/LifePreOrder;Lteam/opay/pay/opay/PaymentViewModel;Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;Lteam/opay/pay/opay/PreOrderRetryData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lteam/opay/pay/opay/PaymentViewModel;->U(Lteam/opay/pay/cashier/LifePreOrder;Lteam/opay/pay/opay/PaymentViewModel;Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;Lteam/opay/pay/opay/PreOrderRetryData;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final K(Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic P(Lteam/opay/pay/opay/PaymentViewModel;Lteam/opay/pay/cashier/TransferPreOrder;ZILjava/lang/Object;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/opay/PaymentViewModel;->O(Lteam/opay/pay/cashier/TransferPreOrder;Z)Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final T(Lteam/opay/pay/opay/PaymentViewModel;Lkotlin/jvm/functions/Function1;Lteam/opay/pay/cashier/LifePreOrder;Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 11

    .line 1
    iget-object v0, p0, Lteam/opay/pay/opay/PaymentViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    invoke-virtual {p4}, Lteam/opay/core/android/arch/Resource;->f()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-ne v3, v2, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    if-eqz p4, :cond_1

    .line 22
    .line 23
    invoke-virtual {p4}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v0, 0x0

    .line 29
    :goto_0
    if-nez v0, :cond_2

    .line 30
    .line 31
    const/4 v0, -0x1

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    sget-object v1, Lteam/opay/pay/opay/PaymentViewModel$a;->a:[I

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    aget v0, v1, v0

    .line 40
    .line 41
    :goto_1
    if-eq v0, v2, :cond_4

    .line 42
    .line 43
    const/4 v1, 0x2

    .line 44
    if-eq v0, v1, :cond_3

    .line 45
    .line 46
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_3
    invoke-virtual {p2}, Lteam/opay/pay/cashier/LifePreOrder;->getServiceType()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {p2}, Lteam/opay/pay/cashier/LifePreOrder;->getProviderId()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    new-instance v8, Lhib;

    .line 59
    .line 60
    invoke-direct {v8, p2, p0, p3, p1}, Lhib;-><init>(Lteam/opay/pay/cashier/LifePreOrder;Lteam/opay/pay/opay/PaymentViewModel;Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;)V

    .line 61
    .line 62
    .line 63
    const/16 v9, 0x10

    .line 64
    .line 65
    const/4 v10, 0x0

    .line 66
    const/4 v7, 0x0

    .line 67
    move-object v2, p0

    .line 68
    move-object v3, p4

    .line 69
    move-object v6, p3

    .line 70
    invoke-static/range {v2 .. v10}, Lteam/opay/pay/opay/PaymentViewModel;->Y(Lteam/opay/pay/opay/PaymentViewModel;Lteam/opay/core/android/arch/Resource;Ljava/lang/String;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lteam/opay/pay/cashier/TransferPreOrder;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_4
    invoke-virtual {p4}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 82
    .line 83
    return-object p0
.end method

.method public static final U(Lteam/opay/pay/cashier/LifePreOrder;Lteam/opay/pay/opay/PaymentViewModel;Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;Lteam/opay/pay/opay/PreOrderRetryData;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p4, "true"

    .line 7
    .line 8
    invoke-virtual {p0, p4}, Lteam/opay/pay/cashier/LifePreOrder;->setPendingAlert(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2, p0, p3}, Lteam/opay/pay/opay/PaymentViewModel;->S(Landroidx/fragment/app/FragmentActivity;Lteam/opay/pay/cashier/LifePreOrder;Lkotlin/jvm/functions/Function1;)V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0
.end method

.method public static final V(Lteam/opay/pay/opay/PaymentViewModel;Lkotlin/jvm/functions/Function1;Lteam/opay/pay/cashier/LifePreOrder;Landroidx/fragment/app/Fragment;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 11

    .line 1
    iget-object v0, p0, Lteam/opay/pay/opay/PaymentViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    invoke-virtual {p4}, Lteam/opay/core/android/arch/Resource;->f()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-ne v3, v2, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    if-eqz p4, :cond_1

    .line 22
    .line 23
    invoke-virtual {p4}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v0, 0x0

    .line 29
    :goto_0
    if-nez v0, :cond_2

    .line 30
    .line 31
    const/4 v0, -0x1

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    sget-object v1, Lteam/opay/pay/opay/PaymentViewModel$a;->a:[I

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    aget v0, v1, v0

    .line 40
    .line 41
    :goto_1
    if-eq v0, v2, :cond_4

    .line 42
    .line 43
    const/4 v1, 0x2

    .line 44
    if-eq v0, v1, :cond_3

    .line 45
    .line 46
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_3
    invoke-virtual {p2}, Lteam/opay/pay/cashier/LifePreOrder;->getServiceType()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {p2}, Lteam/opay/pay/cashier/LifePreOrder;->getProviderId()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    const-string v0, "requireActivity(...)"

    .line 63
    .line 64
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    new-instance v8, Liib;

    .line 68
    .line 69
    invoke-direct {v8, p2, p0, p3, p1}, Liib;-><init>(Lteam/opay/pay/cashier/LifePreOrder;Lteam/opay/pay/opay/PaymentViewModel;Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function1;)V

    .line 70
    .line 71
    .line 72
    const/16 v9, 0x10

    .line 73
    .line 74
    const/4 v10, 0x0

    .line 75
    const/4 v7, 0x0

    .line 76
    move-object v2, p0

    .line 77
    move-object v3, p4

    .line 78
    invoke-static/range {v2 .. v10}, Lteam/opay/pay/opay/PaymentViewModel;->Y(Lteam/opay/pay/opay/PaymentViewModel;Lteam/opay/core/android/arch/Resource;Ljava/lang/String;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lteam/opay/pay/cashier/TransferPreOrder;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_4
    invoke-virtual {p4}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 90
    .line 91
    return-object p0
.end method

.method public static final W(Lteam/opay/pay/cashier/LifePreOrder;Lteam/opay/pay/opay/PaymentViewModel;Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function1;Lteam/opay/pay/opay/PreOrderRetryData;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p4, "true"

    .line 7
    .line 8
    invoke-virtual {p0, p4}, Lteam/opay/pay/cashier/LifePreOrder;->setPendingAlert(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2, p0, p3}, Lteam/opay/pay/opay/PaymentViewModel;->R(Landroidx/fragment/app/Fragment;Lteam/opay/pay/cashier/LifePreOrder;Lkotlin/jvm/functions/Function1;)V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0
.end method

.method public static synthetic Y(Lteam/opay/pay/opay/PaymentViewModel;Lteam/opay/core/android/arch/Resource;Ljava/lang/String;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lteam/opay/pay/cashier/TransferPreOrder;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 7

    .line 1
    and-int/lit8 p7, p7, 0x10

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    const/4 p5, 0x0

    .line 6
    :cond_0
    move-object v5, p5

    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move-object v2, p2

    .line 10
    move-object v3, p3

    .line 11
    move-object v4, p4

    .line 12
    move-object v6, p6

    .line 13
    invoke-virtual/range {v0 .. v6}, Lteam/opay/pay/opay/PaymentViewModel;->X(Lteam/opay/core/android/arch/Resource;Ljava/lang/String;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lteam/opay/pay/cashier/TransferPreOrder;Lkotlin/jvm/functions/Function1;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static final Z(Lteam/opay/core/android/arch/Resource;Lkotlin/jvm/functions/Function1;Lteam/opay/pay/opay/PaymentViewModel;Lteam/opay/pay/cashier/TransferPreOrder;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "030009"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v0, "first"

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v0, "duplicate"

    .line 17
    .line 18
    :goto_0
    invoke-virtual {p0}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p2, p0, p3, v0}, Lteam/opay/pay/opay/PaymentViewModel;->N(Ljava/lang/String;Lteam/opay/pay/cashier/TransferPreOrder;Ljava/lang/String;)Lteam/opay/pay/opay/PreOrderRetryData;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 30
    .line 31
    return-object p0
.end method

.method public static final a0(Lkotlin/jvm/functions/Function1;Z)Lkotlin/Unit;
    .locals 8

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Lteam/opay/pay/opay/PreOrderRetryData;

    .line 4
    .line 5
    const/16 v6, 0xf

    .line 6
    .line 7
    const/4 v7, 0x0

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x1

    .line 13
    move-object v0, p1

    .line 14
    invoke-direct/range {v0 .. v7}, Lteam/opay/pay/opay/PreOrderRetryData;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    return-object p0
.end method

.method public static final b0(Landroidx/fragment/app/FragmentActivity;Z)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {p0}, Lkmf;->I(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lx7b;->a:Lx7b;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    new-array p1, p1, [Lkotlin/Pair;

    .line 8
    .line 9
    const-string v0, "unfreeze_button_click"

    .line 10
    .line 11
    invoke-virtual {p0, v0, p1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0
.end method

.method public static final c0(Landroidx/fragment/app/FragmentActivity;Z)Lkotlin/Unit;
    .locals 6

    .line 1
    const/16 v4, 0xc

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    const-string v1, "KYC_COMPLIANCE"

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    move-object v0, p0

    .line 9
    invoke-static/range {v0 .. v5}, Lkmf;->A(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final e0(Lteam/opay/pay/opay/PaymentViewModel;Lkotlin/jvm/functions/Function1;Lteam/opay/pay/cashier/TransferPreOrder;Landroidx/fragment/app/FragmentActivity;Lag8;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 10

    .line 1
    iget-object v0, p0, Lteam/opay/pay/opay/PaymentViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz p5, :cond_0

    .line 6
    .line 7
    invoke-virtual {p5}, Lteam/opay/core/android/arch/Resource;->f()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-ne v3, v2, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    if-eqz p5, :cond_1

    .line 22
    .line 23
    invoke-virtual {p5}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v0, 0x0

    .line 29
    :goto_0
    if-nez v0, :cond_2

    .line 30
    .line 31
    const/4 v0, -0x1

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    sget-object v1, Lteam/opay/pay/opay/PaymentViewModel$a;->a:[I

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    aget v0, v1, v0

    .line 40
    .line 41
    :goto_1
    if-eq v0, v2, :cond_4

    .line 42
    .line 43
    const/4 v1, 0x2

    .line 44
    if-eq v0, v1, :cond_3

    .line 45
    .line 46
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_3
    invoke-virtual {p2}, Lteam/opay/pay/cashier/TransferPreOrder;->getServiceType()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    invoke-virtual {p2}, Lteam/opay/pay/cashier/TransferPreOrder;->getServiceType()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    new-instance v9, Llib;

    .line 59
    .line 60
    move-object v0, v9

    .line 61
    move-object v1, p2

    .line 62
    move-object v2, p0

    .line 63
    move-object v3, p4

    .line 64
    move-object v4, p3

    .line 65
    move-object v5, p1

    .line 66
    invoke-direct/range {v0 .. v5}, Llib;-><init>(Lteam/opay/pay/cashier/TransferPreOrder;Lteam/opay/pay/opay/PaymentViewModel;Lag8;Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;)V

    .line 67
    .line 68
    .line 69
    move-object v0, p0

    .line 70
    move-object v1, p5

    .line 71
    move-object v2, v7

    .line 72
    move-object v3, v8

    .line 73
    move-object v5, p2

    .line 74
    move-object v6, v9

    .line 75
    invoke-virtual/range {v0 .. v6}, Lteam/opay/pay/opay/PaymentViewModel;->X(Lteam/opay/core/android/arch/Resource;Ljava/lang/String;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lteam/opay/pay/cashier/TransferPreOrder;Lkotlin/jvm/functions/Function1;)V

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_4
    invoke-virtual {p5}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    :goto_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 87
    .line 88
    return-object v0
.end method

.method public static final f0(Lteam/opay/pay/cashier/TransferPreOrder;Lteam/opay/pay/opay/PaymentViewModel;Lag8;Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;Lteam/opay/pay/opay/PreOrderRetryData;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "repeat"

    .line 2
    .line 3
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/pay/cashier/TransferPreOrder;->getTransferCheckRequest()Lteam/opay/pay/cashier/TransferCheckRequest;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p5}, Lteam/opay/pay/opay/PreOrderRetryData;->d()Ljava/lang/Boolean;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :goto_0
    invoke-virtual {v0, v1}, Lteam/opay/pay/cashier/TransferCheckRequest;->i(Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lteam/opay/pay/cashier/TransferPreOrder;->getTransferCheckRequest()Lteam/opay/pay/cashier/TransferCheckRequest;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p5}, Lteam/opay/pay/opay/PreOrderRetryData;->a()Ljava/lang/Boolean;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Lteam/opay/pay/cashier/TransferCheckRequest;->f(Ljava/lang/Boolean;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lteam/opay/pay/cashier/TransferPreOrder;->getTransferCheckRequest()Lteam/opay/pay/cashier/TransferCheckRequest;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p5}, Lteam/opay/pay/opay/PreOrderRetryData;->c()Ljava/lang/Boolean;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Lteam/opay/pay/cashier/TransferCheckRequest;->h(Ljava/lang/Boolean;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lteam/opay/pay/cashier/TransferPreOrder;->getTransferCheckRequest()Lteam/opay/pay/cashier/TransferCheckRequest;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p5}, Lteam/opay/pay/opay/PreOrderRetryData;->b()Ljava/lang/Boolean;

    .line 52
    .line 53
    .line 54
    move-result-object p5

    .line 55
    invoke-virtual {v0, p5}, Lteam/opay/pay/cashier/TransferCheckRequest;->g(Ljava/lang/Boolean;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p2, p3, p0, p4}, Lteam/opay/pay/opay/PaymentViewModel;->d0(Lag8;Landroidx/fragment/app/FragmentActivity;Lteam/opay/pay/cashier/TransferPreOrder;Lkotlin/jvm/functions/Function1;)V

    .line 59
    .line 60
    .line 61
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 62
    .line 63
    return-object p0
.end method

.method public static final h0(Lkotlin/jvm/functions/Function1;Lteam/opay/pay/opay/PaymentViewModel;Lteam/opay/core/android/arch/Resource;Lteam/opay/pay/cashier/TransferPreOrder;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const-string v0, "large"

    .line 6
    .line 7
    invoke-virtual {p1, p2, p3, v0}, Lteam/opay/pay/opay/PaymentViewModel;->N(Ljava/lang/String;Lteam/opay/pay/cashier/TransferPreOrder;Ljava/lang/String;)Lteam/opay/pay/opay/PreOrderRetryData;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0
.end method

.method public static final i0(Lkotlin/jvm/functions/Function1;Lteam/opay/pay/opay/PaymentViewModel;Lteam/opay/core/android/arch/Resource;Lteam/opay/pay/cashier/TransferPreOrder;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const-string v0, "large"

    .line 6
    .line 7
    invoke-virtual {p1, p2, p3, v0}, Lteam/opay/pay/opay/PaymentViewModel;->N(Ljava/lang/String;Lteam/opay/pay/cashier/TransferPreOrder;Ljava/lang/String;)Lteam/opay/pay/opay/PreOrderRetryData;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0
.end method

.method public static final j0(Lkotlin/jvm/functions/Function1;Lteam/opay/pay/opay/PaymentViewModel;Lteam/opay/core/android/arch/Resource;Lteam/opay/pay/cashier/TransferPreOrder;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const-string v0, "name"

    .line 6
    .line 7
    invoke-virtual {p1, p2, p3, v0}, Lteam/opay/pay/opay/PaymentViewModel;->N(Ljava/lang/String;Lteam/opay/pay/cashier/TransferPreOrder;Ljava/lang/String;)Lteam/opay/pay/opay/PreOrderRetryData;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0
.end method

.method public static final k0(Lkotlin/jvm/functions/Function1;Lteam/opay/pay/opay/PaymentViewModel;Lteam/opay/core/android/arch/Resource;Lteam/opay/pay/cashier/TransferPreOrder;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const-string v0, "large"

    .line 6
    .line 7
    invoke-virtual {p1, p2, p3, v0}, Lteam/opay/pay/opay/PaymentViewModel;->N(Ljava/lang/String;Lteam/opay/pay/cashier/TransferPreOrder;Ljava/lang/String;)Lteam/opay/pay/opay/PreOrderRetryData;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0
.end method

.method public static final l0(Lkotlin/jvm/functions/Function1;Lteam/opay/pay/opay/PaymentViewModel;Lteam/opay/core/android/arch/Resource;Lteam/opay/pay/cashier/TransferPreOrder;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const-string v0, "large"

    .line 6
    .line 7
    invoke-virtual {p1, p2, p3, v0}, Lteam/opay/pay/opay/PaymentViewModel;->N(Ljava/lang/String;Lteam/opay/pay/cashier/TransferPreOrder;Ljava/lang/String;)Lteam/opay/pay/opay/PreOrderRetryData;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0
.end method

.method public static final o0(Lkotlin/jvm/functions/Function1;Lteam/opay/pay/cashier/OrderInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/pay/cashier/OrderInfo;->getOrderNo()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    if-nez p1, :cond_1

    .line 10
    .line 11
    const-string p1, ""

    .line 12
    .line 13
    :cond_1
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p0
.end method

.method public static synthetic r(Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/opay/PaymentViewModel;->K(Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic s(Lteam/opay/pay/opay/PaymentViewModel;Lkotlin/jvm/functions/Function1;Lteam/opay/pay/cashier/TransferPreOrder;Landroidx/fragment/app/FragmentActivity;Lag8;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lteam/opay/pay/opay/PaymentViewModel;->e0(Lteam/opay/pay/opay/PaymentViewModel;Lkotlin/jvm/functions/Function1;Lteam/opay/pay/cashier/TransferPreOrder;Landroidx/fragment/app/FragmentActivity;Lag8;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic t(Lteam/opay/core/android/arch/Resource;Lkotlin/jvm/functions/Function1;Lteam/opay/pay/opay/PaymentViewModel;Lteam/opay/pay/cashier/TransferPreOrder;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/opay/PaymentViewModel;->Z(Lteam/opay/core/android/arch/Resource;Lkotlin/jvm/functions/Function1;Lteam/opay/pay/opay/PaymentViewModel;Lteam/opay/pay/cashier/TransferPreOrder;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic u(Lteam/opay/pay/opay/PaymentViewModel;Lkotlin/jvm/functions/Function1;Lteam/opay/pay/cashier/LifePreOrder;Landroidx/fragment/app/Fragment;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lteam/opay/pay/opay/PaymentViewModel;->V(Lteam/opay/pay/opay/PaymentViewModel;Lkotlin/jvm/functions/Function1;Lteam/opay/pay/cashier/LifePreOrder;Landroidx/fragment/app/Fragment;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic v(Lteam/opay/pay/opay/PaymentViewModel;Lkotlin/jvm/functions/Function1;Lteam/opay/pay/cashier/LifePreOrder;Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lteam/opay/pay/opay/PaymentViewModel;->T(Lteam/opay/pay/opay/PaymentViewModel;Lkotlin/jvm/functions/Function1;Lteam/opay/pay/cashier/LifePreOrder;Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic w(Lkotlin/jvm/functions/Function1;Lteam/opay/pay/opay/PaymentViewModel;Lteam/opay/core/android/arch/Resource;Lteam/opay/pay/cashier/TransferPreOrder;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/opay/PaymentViewModel;->k0(Lkotlin/jvm/functions/Function1;Lteam/opay/pay/opay/PaymentViewModel;Lteam/opay/core/android/arch/Resource;Lteam/opay/pay/cashier/TransferPreOrder;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic x(Lkotlin/jvm/functions/Function1;Lteam/opay/pay/opay/PaymentViewModel;Lteam/opay/core/android/arch/Resource;Lteam/opay/pay/cashier/TransferPreOrder;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/opay/PaymentViewModel;->h0(Lkotlin/jvm/functions/Function1;Lteam/opay/pay/opay/PaymentViewModel;Lteam/opay/core/android/arch/Resource;Lteam/opay/pay/cashier/TransferPreOrder;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic y(Landroidx/fragment/app/FragmentActivity;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/opay/PaymentViewModel;->b0(Landroidx/fragment/app/FragmentActivity;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic z(Lkotlin/jvm/functions/Function1;Lteam/opay/pay/opay/PaymentViewModel;Lteam/opay/core/android/arch/Resource;Lteam/opay/pay/cashier/TransferPreOrder;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/opay/PaymentViewModel;->l0(Lkotlin/jvm/functions/Function1;Lteam/opay/pay/opay/PaymentViewModel;Lteam/opay/core/android/arch/Resource;Lteam/opay/pay/cashier/TransferPreOrder;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final I(Landroid/widget/EditText;Lag8;)V
    .locals 2
    .param p1    # Landroid/widget/EditText;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "amountEditText"

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
    sget-object v0, Lteam/opay/pay/util/FlowBus;->a:Lteam/opay/pay/util/FlowBus;

    .line 12
    .line 13
    new-instance v1, Lteam/opay/pay/opay/PaymentViewModel$b;

    .line 14
    .line 15
    invoke-direct {v1, p1}, Lteam/opay/pay/opay/PaymentViewModel$b;-><init>(Landroid/widget/EditText;)V

    .line 16
    .line 17
    .line 18
    const-string p1, "change_amount_from_tips_dialog"

    .line 19
    .line 20
    invoke-virtual {v0, p2, p1, v1}, Lteam/opay/pay/util/FlowBus;->b(Lag8;Ljava/lang/Object;La66;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lag8;)V
    .locals 10
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
    .param p4    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "orderId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "errCode"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "errMsg"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "lifecycleOwner"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lteam/opay/core/android/arch/RequestBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Lteam/opay/core/android/arch/RequestBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p0}, Lteam/opay/core/android/arch/RequestBuilder;->v(Landroidx/lifecycle/AndroidViewModel;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sget-object v1, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 31
    .line 32
    iget-object v2, p0, Lteam/opay/pay/opay/PaymentViewModel;->c:Landroid/app/Application;

    .line 33
    .line 34
    const-class v3, Lgv;

    .line 35
    .line 36
    invoke-virtual {v1, v2, v3}, Lteam/opay/core/api/GraphQL;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lgv;

    .line 41
    .line 42
    new-instance v9, Lteam/opay/pay/cashier/newpayment/CloseOrderReqV1;

    .line 43
    .line 44
    const/16 v7, 0x8

    .line 45
    .line 46
    const/4 v8, 0x0

    .line 47
    const/4 v6, 0x0

    .line 48
    move-object v2, v9

    .line 49
    move-object v3, p1

    .line 50
    move-object v4, p2

    .line 51
    move-object v5, p3

    .line 52
    invoke-direct/range {v2 .. v8}, Lteam/opay/pay/cashier/newpayment/CloseOrderReqV1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v1, v9}, Lgv;->f(Lteam/opay/pay/cashier/newpayment/CloseOrderReqV1;)Lretrofit2/Call;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {v0, p1}, Lteam/opay/core/android/arch/RequestBuilder;->a(Lretrofit2/Call;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Lteam/opay/core/android/arch/RequestBuilder;->b()Landroidx/lifecycle/LiveData;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    new-instance p2, Lkib;

    .line 68
    .line 69
    invoke-direct {p2}, Lkib;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-static {p1, p4, p2}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public final L(Lteam/opay/pay/cashier/LifePreOrder;)Lretrofit2/Call;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/cashier/LifePreOrder;",
            ")",
            "Lretrofit2/Call<",
            "Lteam/opay/pay/api/HttpResponse<",
            "Lteam/opay/pay/cashier/OrderInfo;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lteam/opay/pay/cashier/LifePreOrder;->getServiceType()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->TV:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 6
    .line 7
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lteam/opay/pay/opay/PaymentViewModel;->e:Lfv;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Lfv;->k(Lteam/opay/pay/cashier/LifePreOrder;)Lretrofit2/Call;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->AIRTIME:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 25
    .line 26
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lteam/opay/pay/opay/PaymentViewModel;->e:Lfv;

    .line 37
    .line 38
    invoke-interface {v0, p1}, Lfv;->E1(Lteam/opay/pay/cashier/LifePreOrder;)Lretrofit2/Call;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->DATA:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 44
    .line 45
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    iget-object v0, p0, Lteam/opay/pay/opay/PaymentViewModel;->e:Lfv;

    .line 56
    .line 57
    invoke-interface {v0, p1}, Lfv;->y0(Lteam/opay/pay/cashier/LifePreOrder;)Lretrofit2/Call;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->BETTING:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 63
    .line 64
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    iget-object v0, p0, Lteam/opay/pay/opay/PaymentViewModel;->e:Lfv;

    .line 75
    .line 76
    invoke-interface {v0, p1}, Lfv;->y(Lteam/opay/pay/cashier/LifePreOrder;)Lretrofit2/Call;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    goto :goto_0

    .line 81
    :cond_3
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->ELECTRICITY:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 82
    .line 83
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_4

    .line 92
    .line 93
    iget-object v0, p0, Lteam/opay/pay/opay/PaymentViewModel;->e:Lfv;

    .line 94
    .line 95
    invoke-interface {v0, p1}, Lfv;->z1(Lteam/opay/pay/cashier/LifePreOrder;)Lretrofit2/Call;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    goto :goto_0

    .line 100
    :cond_4
    iget-object v0, p0, Lteam/opay/pay/opay/PaymentViewModel;->e:Lfv;

    .line 101
    .line 102
    invoke-interface {v0, p1}, Lfv;->n(Lteam/opay/pay/cashier/LifePreOrder;)Lretrofit2/Call;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    :goto_0
    return-object p1
.end method

.method public final M()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/opay/PaymentViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final N(Ljava/lang/String;Lteam/opay/pay/cashier/TransferPreOrder;Ljava/lang/String;)Lteam/opay/pay/opay/PreOrderRetryData;
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/cashier/TransferPreOrder;->getTransferCheckRequest()Lteam/opay/pay/cashier/TransferCheckRequest;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    invoke-virtual {v4}, Lteam/opay/pay/cashier/TransferCheckRequest;->d()Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v4, v3

    .line 26
    :goto_0
    const-string v5, "030009"

    .line 27
    .line 28
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    const/4 v7, 0x1

    .line 33
    const/4 v8, 0x0

    .line 34
    if-eqz v6, :cond_1

    .line 35
    .line 36
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 37
    .line 38
    const/4 v6, 0x0

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    if-eqz v1, :cond_2

    .line 41
    .line 42
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/cashier/TransferPreOrder;->getTransferCheckRequest()Lteam/opay/pay/cashier/TransferCheckRequest;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    if-eqz v6, :cond_2

    .line 47
    .line 48
    invoke-virtual {v6}, Lteam/opay/pay/cashier/TransferCheckRequest;->a()Ljava/lang/Boolean;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    if-eqz v6, :cond_2

    .line 53
    .line 54
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    const/4 v6, 0x1

    .line 60
    :goto_1
    if-eqz v1, :cond_3

    .line 61
    .line 62
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/cashier/TransferPreOrder;->getRiskMap()Ljava/util/Map;

    .line 63
    .line 64
    .line 65
    move-result-object v9

    .line 66
    if-nez v9, :cond_4

    .line 67
    .line 68
    :cond_3
    new-instance v9, Ljava/util/LinkedHashMap;

    .line 69
    .line 70
    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 71
    .line 72
    .line 73
    :cond_4
    const-string v10, "businessPreInteraction"

    .line 74
    .line 75
    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v11

    .line 79
    if-eqz v2, :cond_8

    .line 80
    .line 81
    move-object v12, v11

    .line 82
    check-cast v12, Ljava/lang/String;

    .line 83
    .line 84
    if-eqz v12, :cond_5

    .line 85
    .line 86
    const/4 v13, 0x2

    .line 87
    invoke-static {v12, v2, v8, v13, v3}, Lkotlin/text/StringsKt;->d0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-ne v3, v7, :cond_5

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_5
    move-object v3, v11

    .line 95
    check-cast v3, Ljava/lang/CharSequence;

    .line 96
    .line 97
    if-eqz v3, :cond_7

    .line 98
    .line 99
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-nez v3, :cond_6

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v11, ","

    .line 115
    .line 116
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    :cond_7
    :goto_2
    invoke-interface {v9, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    :cond_8
    :goto_3
    if-eqz v1, :cond_9

    .line 130
    .line 131
    invoke-virtual {v1, v9}, Lteam/opay/pay/cashier/TransferPreOrder;->setRiskMap(Ljava/util/Map;)V

    .line 132
    .line 133
    .line 134
    :cond_9
    const-string v2, "030010"

    .line 135
    .line 136
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    if-eqz v2, :cond_a

    .line 141
    .line 142
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 143
    .line 144
    :goto_4
    const/4 v2, 0x0

    .line 145
    goto :goto_5

    .line 146
    :cond_a
    if-eqz v1, :cond_b

    .line 147
    .line 148
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/cashier/TransferPreOrder;->getJumpCheckWhenFirstShown()Z

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-ne v2, v7, :cond_b

    .line 153
    .line 154
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    if-eqz v2, :cond_b

    .line 159
    .line 160
    goto :goto_4

    .line 161
    :cond_b
    if-eqz v1, :cond_c

    .line 162
    .line 163
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/cashier/TransferPreOrder;->getTransferCheckRequest()Lteam/opay/pay/cashier/TransferCheckRequest;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    if-eqz v2, :cond_c

    .line 168
    .line 169
    invoke-virtual {v2}, Lteam/opay/pay/cashier/TransferCheckRequest;->b()Ljava/lang/Boolean;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    if-eqz v2, :cond_c

    .line 174
    .line 175
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    goto :goto_5

    .line 180
    :cond_c
    const/4 v2, 0x1

    .line 181
    :goto_5
    const-string v3, "030011"

    .line 182
    .line 183
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    if-eqz v3, :cond_d

    .line 188
    .line 189
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 190
    .line 191
    :goto_6
    move-object v9, v4

    .line 192
    const/4 v7, 0x0

    .line 193
    goto :goto_7

    .line 194
    :cond_d
    if-eqz v1, :cond_e

    .line 195
    .line 196
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/cashier/TransferPreOrder;->getJumpCheckWhenFirstShown()Z

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    if-ne v3, v7, :cond_e

    .line 201
    .line 202
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    if-eqz v0, :cond_e

    .line 207
    .line 208
    goto :goto_6

    .line 209
    :cond_e
    if-eqz v1, :cond_f

    .line 210
    .line 211
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/cashier/TransferPreOrder;->getTransferCheckRequest()Lteam/opay/pay/cashier/TransferCheckRequest;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    if-eqz v0, :cond_f

    .line 216
    .line 217
    invoke-virtual {v0}, Lteam/opay/pay/cashier/TransferCheckRequest;->c()Ljava/lang/Boolean;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    if-eqz v0, :cond_f

    .line 222
    .line 223
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 224
    .line 225
    .line 226
    move-result v7

    .line 227
    :cond_f
    move-object v9, v4

    .line 228
    :goto_7
    new-instance v0, Lteam/opay/pay/opay/PreOrderRetryData;

    .line 229
    .line 230
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 231
    .line 232
    .line 233
    move-result-object v10

    .line 234
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 235
    .line 236
    .line 237
    move-result-object v11

    .line 238
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 239
    .line 240
    .line 241
    move-result-object v12

    .line 242
    const/16 v14, 0x10

    .line 243
    .line 244
    const/4 v15, 0x0

    .line 245
    const/4 v13, 0x0

    .line 246
    move-object v8, v0

    .line 247
    invoke-direct/range {v8 .. v15}, Lteam/opay/pay/opay/PreOrderRetryData;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 248
    .line 249
    .line 250
    return-object v0
.end method

.method public final O(Lteam/opay/pay/cashier/TransferPreOrder;Z)Ljava/util/ArrayList;
    .locals 15
    .param p1    # Lteam/opay/pay/cashier/TransferPreOrder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/cashier/TransferPreOrder;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lteam/opay/pay/home/tabs/TransferDetailsTipsData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object v0, v1

    .line 11
    :goto_0
    if-eqz v0, :cond_5

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    goto/16 :goto_2

    .line 16
    .line 17
    :cond_1
    new-instance v8, Lteam/opay/pay/home/tabs/TransferDetailsTipsData;

    .line 18
    .line 19
    sget v2, Lteam/opay/pay/R$string;->name:I

    .line 20
    .line 21
    invoke-static {v2}, Ljmf;->k(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/cashier/TransferPreOrder;->getRecipientAccountName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    const/4 v6, 0x4

    .line 30
    const/4 v7, 0x0

    .line 31
    const/4 v5, 0x0

    .line 32
    move-object v2, v8

    .line 33
    invoke-direct/range {v2 .. v7}, Lteam/opay/pay/home/tabs/TransferDetailsTipsData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    new-instance v2, Lteam/opay/pay/home/tabs/TransferDetailsTipsData;

    .line 40
    .line 41
    sget v3, Lteam/opay/pay/R$string;->osdk_account_number_dot:I

    .line 42
    .line 43
    invoke-static {v3}, Ljmf;->k(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v10

    .line 47
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/cashier/TransferPreOrder;->getRecipientAccountNo()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-static {v3}, Loj2;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v11

    .line 55
    const/4 v13, 0x4

    .line 56
    const/4 v14, 0x0

    .line 57
    const/4 v12, 0x0

    .line 58
    move-object v9, v2

    .line 59
    invoke-direct/range {v9 .. v14}, Lteam/opay/pay/home/tabs/TransferDetailsTipsData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/cashier/TransferPreOrder;->getRecipientBankName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-lez v2, :cond_2

    .line 74
    .line 75
    new-instance v2, Lteam/opay/pay/home/tabs/TransferDetailsTipsData;

    .line 76
    .line 77
    sget v3, Lteam/opay/pay/R$string;->bank:I

    .line 78
    .line 79
    invoke-static {v3}, Ljmf;->k(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/cashier/TransferPreOrder;->getRecipientBankName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    const/4 v7, 0x4

    .line 88
    const/4 v8, 0x0

    .line 89
    const/4 v6, 0x0

    .line 90
    move-object v3, v2

    .line 91
    invoke-direct/range {v3 .. v8}, Lteam/opay/pay/home/tabs/TransferDetailsTipsData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/cashier/TransferPreOrder;->getServiceType()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    sget-object v3, Lteam/opay/core/api/GraphQL$ServiceType;->COINS_SEND:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 103
    .line 104
    invoke-virtual {v3}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-eqz v2, :cond_3

    .line 113
    .line 114
    new-instance v2, Lteam/opay/pay/home/tabs/TransferDetailsTipsData;

    .line 115
    .line 116
    sget v3, Lteam/opay/pay/R$string;->bank:I

    .line 117
    .line 118
    invoke-static {v3}, Ljmf;->k(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    sget v3, Lteam/opay/pay/R$string;->osdk_opay:I

    .line 123
    .line 124
    invoke-static {v3}, Ljmf;->k(I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    const/4 v7, 0x4

    .line 129
    const/4 v8, 0x0

    .line 130
    const/4 v6, 0x0

    .line 131
    move-object v3, v2

    .line 132
    invoke-direct/range {v3 .. v8}, Lteam/opay/pay/home/tabs/TransferDetailsTipsData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    .line 139
    .line 140
    new-instance v2, Lteam/opay/pay/home/tabs/TransferDetailsTipsData;

    .line 141
    .line 142
    sget v3, Lteam/opay/pay/R$string;->amount:I

    .line 143
    .line 144
    invoke-static {v3}, Ljmf;->k(I)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/cashier/TransferPreOrder;->getAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    const/4 v5, 0x1

    .line 153
    invoke-static {v4, v1, v5, v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->toText$default(Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/cashier/TransferPreOrder;->getAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    invoke-virtual {v4}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    invoke-direct {v2, v3, v1, v4}, Lteam/opay/pay/home/tabs/TransferDetailsTipsData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    :cond_4
    :goto_2
    move-object v1, v0

    .line 172
    :cond_5
    return-object v1
.end method

.method public final Q(Lteam/opay/pay/cashier/LifePreOrder;)Ljava/lang/String;
    .locals 2
    .param p1    # Lteam/opay/pay/cashier/LifePreOrder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "preOrder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lteam/opay/pay/cashier/LifePreOrder;->voucherPackage()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const-string v1, ""

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return-object v1

    .line 15
    :cond_0
    invoke-virtual {p1}, Lteam/opay/pay/cashier/LifePreOrder;->getServiceType()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    sget-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->AIRTIME:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 20
    .line 21
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    const-string v1, "airtime_combined_payment"

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    sget-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->DATA:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 35
    .line 36
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    const-string v1, "data_combined_payment"

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    sget-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->TV:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 50
    .line 51
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    const-string v1, "tv_combined_payment"

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    sget-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->BETTING:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 65
    .line 66
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    const-string v1, "betting_combined_payment"

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_4
    sget-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->ELECTRICITY:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 80
    .line 81
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_5

    .line 90
    .line 91
    const-string v1, "electricity_combined_payment"

    .line 92
    .line 93
    :cond_5
    :goto_0
    return-object v1
.end method

.method public final R(Landroidx/fragment/app/Fragment;Lteam/opay/pay/cashier/LifePreOrder;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/cashier/LifePreOrder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Lteam/opay/pay/cashier/LifePreOrder;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/pay/cashier/OrderInfo;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "fragment"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "request"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "next"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lteam/opay/core/android/arch/RequestBuilder;

    .line 17
    .line 18
    invoke-direct {v0}, Lteam/opay/core/android/arch/RequestBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0}, Lteam/opay/core/android/arch/RequestBuilder;->v(Landroidx/lifecycle/AndroidViewModel;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0, p2}, Lteam/opay/pay/opay/PaymentViewModel;->L(Lteam/opay/pay/cashier/LifePreOrder;)Lretrofit2/Call;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lteam/opay/core/android/arch/RequestBuilder;->a(Lretrofit2/Call;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lteam/opay/core/android/arch/RequestBuilder;->b()Landroidx/lifecycle/LiveData;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v1, Lgib;

    .line 38
    .line 39
    invoke-direct {v1, p0, p3, p2, p1}, Lgib;-><init>(Lteam/opay/pay/opay/PaymentViewModel;Lkotlin/jvm/functions/Function1;Lteam/opay/pay/cashier/LifePreOrder;Landroidx/fragment/app/Fragment;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v0, p1, v1}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final S(Landroidx/fragment/app/FragmentActivity;Lteam/opay/pay/cashier/LifePreOrder;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/cashier/LifePreOrder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Lteam/opay/pay/cashier/LifePreOrder;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/pay/cashier/OrderInfo;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "request"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "next"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lteam/opay/core/android/arch/RequestBuilder;

    .line 17
    .line 18
    invoke-direct {v0}, Lteam/opay/core/android/arch/RequestBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0}, Lteam/opay/core/android/arch/RequestBuilder;->v(Landroidx/lifecycle/AndroidViewModel;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0, p2}, Lteam/opay/pay/opay/PaymentViewModel;->L(Lteam/opay/pay/cashier/LifePreOrder;)Lretrofit2/Call;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lteam/opay/core/android/arch/RequestBuilder;->a(Lretrofit2/Call;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lteam/opay/core/android/arch/RequestBuilder;->b()Landroidx/lifecycle/LiveData;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v1, Lyhb;

    .line 38
    .line 39
    invoke-direct {v1, p0, p3, p2, p1}, Lyhb;-><init>(Lteam/opay/pay/opay/PaymentViewModel;Lkotlin/jvm/functions/Function1;Lteam/opay/pay/cashier/LifePreOrder;Landroidx/fragment/app/FragmentActivity;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v0, p1, v1}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final X(Lteam/opay/core/android/arch/Resource;Ljava/lang/String;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lteam/opay/pay/cashier/TransferPreOrder;Lkotlin/jvm/functions/Function1;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/pay/cashier/OrderInfo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroidx/fragment/app/FragmentActivity;",
            "Lteam/opay/pay/cashier/TransferPreOrder;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/pay/opay/PreOrderRetryData;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v4, p2

    .line 4
    .line 5
    move-object/from16 v5, p4

    .line 6
    .line 7
    move-object/from16 v3, p5

    .line 8
    .line 9
    move-object/from16 v15, p6

    .line 10
    .line 11
    sget-object v0, Ltfb;->a:Ltfb;

    .line 12
    .line 13
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "errorMsg"

    .line 18
    .line 19
    invoke-static {v2, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "error_type"

    .line 24
    .line 25
    const-string v7, "Preorder"

    .line 26
    .line 27
    invoke-static {v2, v7}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const-string v7, "errorCode"

    .line 32
    .line 33
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    invoke-static {v7, v8}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    const-string v8, "service_type"

    .line 42
    .line 43
    invoke-static {v8, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    const-string v9, "service_id"

    .line 48
    .line 49
    move-object/from16 v10, p3

    .line 50
    .line 51
    invoke-static {v9, v10}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 52
    .line 53
    .line 54
    move-result-object v9

    .line 55
    const/4 v10, 0x5

    .line 56
    new-array v10, v10, [Lkotlin/Pair;

    .line 57
    .line 58
    const/4 v11, 0x0

    .line 59
    aput-object v1, v10, v11

    .line 60
    .line 61
    const/4 v1, 0x1

    .line 62
    aput-object v2, v10, v1

    .line 63
    .line 64
    const/4 v2, 0x2

    .line 65
    aput-object v7, v10, v2

    .line 66
    .line 67
    const/4 v2, 0x3

    .line 68
    aput-object v8, v10, v2

    .line 69
    .line 70
    const/4 v2, 0x4

    .line 71
    aput-object v9, v10, v2

    .line 72
    .line 73
    const-string v2, "pay_error_show"

    .line 74
    .line 75
    invoke-virtual {v0, v2, v10}, Ltfb;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->e()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    const/16 v2, -0x3ec

    .line 83
    .line 84
    const-string v7, ""

    .line 85
    .line 86
    if-ne v0, v2, :cond_1

    .line 87
    .line 88
    sget-object v0, Lteam/opay/pay/kyc/ConnectionFailedDialog;->m:Lteam/opay/pay/kyc/ConnectionFailedDialog$Companion;

    .line 89
    .line 90
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    if-nez v1, :cond_0

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_0
    move-object v7, v1

    .line 98
    :goto_0
    invoke-virtual {v0, v5, v4, v7}, Lteam/opay/pay/kyc/ConnectionFailedDialog$Companion;->a(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    goto/16 :goto_e

    .line 102
    .line 103
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    const-string v2, "61000"

    .line 108
    .line 109
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-nez v0, :cond_2

    .line 114
    .line 115
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    const-string v2, "61001"

    .line 120
    .line 121
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-nez v0, :cond_2

    .line 126
    .line 127
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    const-string v2, "61002"

    .line 132
    .line 133
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-nez v0, :cond_2

    .line 138
    .line 139
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    const-string v2, "61003"

    .line 144
    .line 145
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-nez v0, :cond_2

    .line 150
    .line 151
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    const-string v2, "61004"

    .line 156
    .line 157
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-eqz v0, :cond_3

    .line 162
    .line 163
    :cond_2
    move-object/from16 v2, p1

    .line 164
    .line 165
    goto/16 :goto_a

    .line 166
    .line 167
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    const-string v2, "030010"

    .line 172
    .line 173
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    if-eqz v0, :cond_4

    .line 178
    .line 179
    move-object/from16 v0, p0

    .line 180
    .line 181
    move-object/from16 v1, p4

    .line 182
    .line 183
    move-object/from16 v2, p1

    .line 184
    .line 185
    move-object/from16 v3, p5

    .line 186
    .line 187
    move-object/from16 v4, p2

    .line 188
    .line 189
    move-object/from16 v5, p6

    .line 190
    .line 191
    invoke-virtual/range {v0 .. v5}, Lteam/opay/pay/opay/PaymentViewModel;->g0(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/android/arch/Resource;Lteam/opay/pay/cashier/TransferPreOrder;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 192
    .line 193
    .line 194
    goto/16 :goto_e

    .line 195
    .line 196
    :cond_4
    sget-object v0, Lteam/opay/pay/home/tabs/TransferAlertTipDialog;->q:Lteam/opay/pay/home/tabs/TransferAlertTipDialog$Companion;

    .line 197
    .line 198
    invoke-virtual {v0}, Lteam/opay/pay/home/tabs/TransferAlertTipDialog$Companion;->a()Ljava/util/List;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v8

    .line 206
    invoke-static {v2, v8}, Lkotlin/collections/CollectionsKt;->X(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    if-eqz v2, :cond_7

    .line 211
    .line 212
    new-instance v2, Lteam/opay/pay/home/tabs/TransferAlertData;

    .line 213
    .line 214
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v8

    .line 218
    if-nez v8, :cond_5

    .line 219
    .line 220
    move-object v9, v7

    .line 221
    goto :goto_1

    .line 222
    :cond_5
    move-object v9, v8

    .line 223
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v8

    .line 227
    if-nez v8, :cond_6

    .line 228
    .line 229
    move-object v10, v7

    .line 230
    goto :goto_2

    .line 231
    :cond_6
    move-object v10, v8

    .line 232
    :goto_2
    invoke-virtual {v6, v3, v1}, Lteam/opay/pay/opay/PaymentViewModel;->O(Lteam/opay/pay/cashier/TransferPreOrder;Z)Ljava/util/ArrayList;

    .line 233
    .line 234
    .line 235
    move-result-object v11

    .line 236
    const/16 v1, 0x70

    .line 237
    .line 238
    const/16 v16, 0x0

    .line 239
    .line 240
    const/4 v12, 0x0

    .line 241
    const/4 v13, 0x0

    .line 242
    const/4 v14, 0x0

    .line 243
    move-object v7, v2

    .line 244
    move-object/from16 v8, p2

    .line 245
    .line 246
    move-object v4, v15

    .line 247
    move v15, v1

    .line 248
    invoke-direct/range {v7 .. v16}, Lteam/opay/pay/home/tabs/TransferAlertData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lteam/opay/core/api/GraphQL$CurrencyAmount;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0, v2}, Lteam/opay/pay/home/tabs/TransferAlertTipDialog$Companion;->b(Lteam/opay/pay/home/tabs/TransferAlertData;)Lteam/opay/pay/home/tabs/TransferAlertTipDialog;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    new-instance v1, Lmib;

    .line 256
    .line 257
    move-object/from16 v2, p1

    .line 258
    .line 259
    invoke-direct {v1, v2, v4, v6, v3}, Lmib;-><init>(Lteam/opay/core/android/arch/Resource;Lkotlin/jvm/functions/Function1;Lteam/opay/pay/opay/PaymentViewModel;Lteam/opay/pay/cashier/TransferPreOrder;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0, v1}, Lteam/opay/pay/home/tabs/TransferAlertTipDialog;->a0(Lkotlin/jvm/functions/Function0;)V

    .line 263
    .line 264
    .line 265
    invoke-static {v5, v0}, Lteam/opay/pay/base/FragmentKt;->F(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseSheetFragmentV2;)V

    .line 266
    .line 267
    .line 268
    goto/16 :goto_e

    .line 269
    .line 270
    :cond_7
    move-object/from16 v2, p1

    .line 271
    .line 272
    move-object v4, v15

    .line 273
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    const-string v1, "130010"

    .line 278
    .line 279
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result v0

    .line 283
    const-string v1, "getString(...)"

    .line 284
    .line 285
    if-eqz v0, :cond_9

    .line 286
    .line 287
    sget-object v0, Lteam/opay/pay/settings/CommonTwoButtonDialogFragment;->l:Lteam/opay/pay/settings/CommonTwoButtonDialogFragment$Companion;

    .line 288
    .line 289
    new-instance v3, Lteam/opay/pay/settings/CommonTwoButtonDialogFragmentInfo;

    .line 290
    .line 291
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    if-nez v2, :cond_8

    .line 296
    .line 297
    move-object v10, v7

    .line 298
    goto :goto_3

    .line 299
    :cond_8
    move-object v10, v2

    .line 300
    :goto_3
    sget v2, Lteam/opay/pay/R$string;->osdk_ad_continue:I

    .line 301
    .line 302
    invoke-virtual {v5, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v11

    .line 306
    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    sget v2, Lteam/opay/pay/R$string;->cancel:I

    .line 310
    .line 311
    invoke-virtual {v5, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v12

    .line 315
    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    const/16 v17, 0xf0

    .line 319
    .line 320
    const/16 v18, 0x0

    .line 321
    .line 322
    const-string v9, ""

    .line 323
    .line 324
    const/4 v13, 0x0

    .line 325
    const/4 v14, 0x0

    .line 326
    const/4 v15, 0x0

    .line 327
    const/16 v16, 0x0

    .line 328
    .line 329
    move-object v8, v3

    .line 330
    invoke-direct/range {v8 .. v18}, Lteam/opay/pay/settings/CommonTwoButtonDialogFragmentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZFLjava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v0, v3}, Lteam/opay/pay/settings/CommonTwoButtonDialogFragment$Companion;->a(Lteam/opay/pay/settings/CommonTwoButtonDialogFragmentInfo;)Lteam/opay/pay/settings/CommonTwoButtonDialogFragment;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    new-instance v1, Lnib;

    .line 338
    .line 339
    invoke-direct {v1, v4}, Lnib;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v0, v1}, Lteam/opay/pay/settings/CommonTwoButtonDialogFragment;->Q(Lkotlin/jvm/functions/Function1;)V

    .line 343
    .line 344
    .line 345
    invoke-static {v5, v0}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 346
    .line 347
    .line 348
    goto/16 :goto_e

    .line 349
    .line 350
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    const-string v3, "130011"

    .line 355
    .line 356
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    move-result v0

    .line 360
    if-eqz v0, :cond_a

    .line 361
    .line 362
    sget-object v0, Lteam/opay/pay/wallet/OneButtonDialog;->p:Lteam/opay/pay/wallet/OneButtonDialog$Companion;

    .line 363
    .line 364
    sget v3, Lteam/opay/pay/R$string;->osdk_okay:I

    .line 365
    .line 366
    invoke-virtual {v5, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v11

    .line 370
    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    sget v2, Lteam/opay/pay/R$string;->bad_gateway_error:I

    .line 378
    .line 379
    invoke-virtual {v5, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v2

    .line 383
    invoke-static {v1, v2}, Loj2;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    move-object v10, v1

    .line 388
    check-cast v10, Ljava/lang/String;

    .line 389
    .line 390
    new-instance v1, Lteam/opay/pay/wallet/OneButtonDialogData;

    .line 391
    .line 392
    const/16 v16, 0xf3

    .line 393
    .line 394
    const/16 v17, 0x0

    .line 395
    .line 396
    const/4 v8, 0x0

    .line 397
    const/4 v9, 0x0

    .line 398
    const/4 v12, 0x0

    .line 399
    const/4 v13, 0x0

    .line 400
    const/4 v14, 0x0

    .line 401
    const/4 v15, 0x0

    .line 402
    move-object v7, v1

    .line 403
    invoke-direct/range {v7 .. v17}, Lteam/opay/pay/wallet/OneButtonDialogData;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v0, v1}, Lteam/opay/pay/wallet/OneButtonDialog$Companion;->a(Lteam/opay/pay/wallet/OneButtonDialogData;)Lteam/opay/pay/wallet/OneButtonDialog;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    invoke-static {v5, v0}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 411
    .line 412
    .line 413
    goto/16 :goto_e

    .line 414
    .line 415
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    const-string v3, "130006"

    .line 420
    .line 421
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 422
    .line 423
    .line 424
    move-result v0

    .line 425
    if-eqz v0, :cond_c

    .line 426
    .line 427
    sget-object v8, Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog;->k:Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog$Companion;

    .line 428
    .line 429
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    if-nez v0, :cond_b

    .line 434
    .line 435
    move-object v9, v7

    .line 436
    goto :goto_4

    .line 437
    :cond_b
    move-object v9, v0

    .line 438
    :goto_4
    const/16 v14, 0x1c

    .line 439
    .line 440
    const/4 v15, 0x0

    .line 441
    const/4 v10, 0x1

    .line 442
    const/4 v11, 0x0

    .line 443
    const/4 v12, 0x0

    .line 444
    const/4 v13, 0x0

    .line 445
    invoke-static/range {v8 .. v15}, Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog$Companion;->b(Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog$Companion;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    invoke-static {v5, v0}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 450
    .line 451
    .line 452
    goto/16 :goto_e

    .line 453
    .line 454
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    const-string v3, "80001"

    .line 459
    .line 460
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 461
    .line 462
    .line 463
    move-result v0

    .line 464
    if-eqz v0, :cond_10

    .line 465
    .line 466
    sget-object v0, Lteam/opay/pay/opay/KycUpgradeButtonConfig;->Companion:Lteam/opay/pay/opay/KycUpgradeButtonConfig$Companion;

    .line 467
    .line 468
    invoke-virtual {v0}, Lteam/opay/pay/opay/KycUpgradeButtonConfig$Companion;->a()Lteam/opay/pay/opay/KycUpgradeButtonConfig;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    sget-object v8, Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog;->k:Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog$Companion;

    .line 473
    .line 474
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v1

    .line 478
    if-nez v1, :cond_d

    .line 479
    .line 480
    move-object v9, v7

    .line 481
    goto :goto_5

    .line 482
    :cond_d
    move-object v9, v1

    .line 483
    :goto_5
    if-eqz v0, :cond_f

    .line 484
    .line 485
    invoke-virtual {v0}, Lteam/opay/pay/opay/KycUpgradeButtonConfig;->getKyc0AC()Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v0

    .line 489
    if-nez v0, :cond_e

    .line 490
    .line 491
    goto :goto_7

    .line 492
    :cond_e
    :goto_6
    move-object v12, v0

    .line 493
    goto :goto_8

    .line 494
    :cond_f
    :goto_7
    sget v0, Lteam/opay/pay/R$string;->osdk_provide_information:I

    .line 495
    .line 496
    invoke-static {v0}, Ljmf;->k(I)Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v0

    .line 500
    goto :goto_6

    .line 501
    :goto_8
    const/16 v14, 0x14

    .line 502
    .line 503
    const/4 v15, 0x0

    .line 504
    const/4 v10, 0x1

    .line 505
    const/4 v11, 0x0

    .line 506
    const/4 v13, 0x0

    .line 507
    invoke-static/range {v8 .. v15}, Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog$Companion;->b(Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog$Companion;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog;

    .line 508
    .line 509
    .line 510
    move-result-object v0

    .line 511
    invoke-static {v5, v0}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 512
    .line 513
    .line 514
    goto/16 :goto_e

    .line 515
    .line 516
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object v0

    .line 520
    const-string v3, "130007"

    .line 521
    .line 522
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 523
    .line 524
    .line 525
    move-result v0

    .line 526
    if-eqz v0, :cond_12

    .line 527
    .line 528
    sget-object v8, Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog;->k:Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog$Companion;

    .line 529
    .line 530
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    if-nez v0, :cond_11

    .line 535
    .line 536
    move-object v9, v7

    .line 537
    goto :goto_9

    .line 538
    :cond_11
    move-object v9, v0

    .line 539
    :goto_9
    const/16 v14, 0x1c

    .line 540
    .line 541
    const/4 v15, 0x0

    .line 542
    const/4 v10, 0x0

    .line 543
    const/4 v11, 0x0

    .line 544
    const/4 v12, 0x0

    .line 545
    const/4 v13, 0x0

    .line 546
    invoke-static/range {v8 .. v15}, Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog$Companion;->b(Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog$Companion;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog;

    .line 547
    .line 548
    .line 549
    move-result-object v0

    .line 550
    invoke-static {v5, v0}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 551
    .line 552
    .line 553
    goto/16 :goto_e

    .line 554
    .line 555
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    const-string v3, "ILLEGAL_ACCOUNT_STATE"

    .line 560
    .line 561
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 562
    .line 563
    .line 564
    move-result v0

    .line 565
    if-eqz v0, :cond_13

    .line 566
    .line 567
    sget-object v0, Lteam/opay/pay/wallet/OneButtonDialog;->p:Lteam/opay/pay/wallet/OneButtonDialog$Companion;

    .line 568
    .line 569
    new-instance v3, Lteam/opay/pay/wallet/OneButtonDialogData;

    .line 570
    .line 571
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v2

    .line 575
    sget v4, Lteam/opay/pay/R$string;->bad_gateway_error:I

    .line 576
    .line 577
    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object v4

    .line 581
    invoke-static {v2, v4}, Loj2;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    .line 583
    .line 584
    move-result-object v2

    .line 585
    move-object v10, v2

    .line 586
    check-cast v10, Ljava/lang/CharSequence;

    .line 587
    .line 588
    sget v2, Lteam/opay/pay/R$string;->osdk_go:I

    .line 589
    .line 590
    invoke-virtual {v5, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v11

    .line 594
    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 595
    .line 596
    .line 597
    const/16 v16, 0xf3

    .line 598
    .line 599
    const/16 v17, 0x0

    .line 600
    .line 601
    const/4 v8, 0x0

    .line 602
    const/4 v9, 0x0

    .line 603
    const/4 v12, 0x0

    .line 604
    const/4 v13, 0x0

    .line 605
    const/4 v14, 0x0

    .line 606
    const/4 v15, 0x0

    .line 607
    move-object v7, v3

    .line 608
    invoke-direct/range {v7 .. v17}, Lteam/opay/pay/wallet/OneButtonDialogData;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 609
    .line 610
    .line 611
    invoke-virtual {v0, v3}, Lteam/opay/pay/wallet/OneButtonDialog$Companion;->a(Lteam/opay/pay/wallet/OneButtonDialogData;)Lteam/opay/pay/wallet/OneButtonDialog;

    .line 612
    .line 613
    .line 614
    move-result-object v0

    .line 615
    new-instance v1, Loib;

    .line 616
    .line 617
    invoke-direct {v1, v5}, Loib;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 618
    .line 619
    .line 620
    invoke-virtual {v0, v1}, Lteam/opay/pay/wallet/OneButtonDialog;->S(Lkotlin/jvm/functions/Function1;)V

    .line 621
    .line 622
    .line 623
    invoke-static {v5, v0}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 624
    .line 625
    .line 626
    goto/16 :goto_e

    .line 627
    .line 628
    :cond_13
    sget-object v0, Lteam/opay/pay/opay/PaymentViewModel;->m:Ljava/util/List;

    .line 629
    .line 630
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 631
    .line 632
    .line 633
    move-result-object v1

    .line 634
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->X(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 635
    .line 636
    .line 637
    move-result v0

    .line 638
    if-eqz v0, :cond_14

    .line 639
    .line 640
    sget-object v0, Lteam/opay/pay/wallet/OneButtonDialog;->p:Lteam/opay/pay/wallet/OneButtonDialog$Companion;

    .line 641
    .line 642
    sget v8, Lteam/opay/pay/R$mipmap;->osdk_ic_kyc_warning:I

    .line 643
    .line 644
    sget v1, Lteam/opay/pay/R$string;->osdk_activate_your_account:I

    .line 645
    .line 646
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 647
    .line 648
    .line 649
    move-result-object v9

    .line 650
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 651
    .line 652
    .line 653
    move-result-object v1

    .line 654
    sget v2, Lteam/opay/pay/R$string;->bad_gateway_error:I

    .line 655
    .line 656
    invoke-virtual {v5, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 657
    .line 658
    .line 659
    move-result-object v2

    .line 660
    invoke-static {v1, v2}, Loj2;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    .line 662
    .line 663
    move-result-object v1

    .line 664
    move-object v10, v1

    .line 665
    check-cast v10, Ljava/lang/String;

    .line 666
    .line 667
    sget v1, Lteam/opay/pay/R$string;->osdk_activate_now:I

    .line 668
    .line 669
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v11

    .line 673
    new-instance v1, Lteam/opay/pay/wallet/OneButtonDialogData;

    .line 674
    .line 675
    const/16 v16, 0xe0

    .line 676
    .line 677
    const/16 v17, 0x0

    .line 678
    .line 679
    const/4 v12, 0x1

    .line 680
    const/4 v13, 0x0

    .line 681
    const/4 v14, 0x0

    .line 682
    const/4 v15, 0x0

    .line 683
    move-object v7, v1

    .line 684
    invoke-direct/range {v7 .. v17}, Lteam/opay/pay/wallet/OneButtonDialogData;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 685
    .line 686
    .line 687
    invoke-virtual {v0, v1}, Lteam/opay/pay/wallet/OneButtonDialog$Companion;->a(Lteam/opay/pay/wallet/OneButtonDialogData;)Lteam/opay/pay/wallet/OneButtonDialog;

    .line 688
    .line 689
    .line 690
    move-result-object v0

    .line 691
    new-instance v1, Lzhb;

    .line 692
    .line 693
    invoke-direct {v1, v5}, Lzhb;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 694
    .line 695
    .line 696
    invoke-virtual {v0, v1}, Lteam/opay/pay/wallet/OneButtonDialog;->S(Lkotlin/jvm/functions/Function1;)V

    .line 697
    .line 698
    .line 699
    invoke-static {v5, v0}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 700
    .line 701
    .line 702
    goto/16 :goto_e

    .line 703
    .line 704
    :cond_14
    sget-object v0, Lteam/opay/pay/wallet/OneButtonDialog;->p:Lteam/opay/pay/wallet/OneButtonDialog$Companion;

    .line 705
    .line 706
    new-instance v1, Lteam/opay/pay/wallet/OneButtonDialogData;

    .line 707
    .line 708
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 709
    .line 710
    .line 711
    move-result-object v2

    .line 712
    sget v3, Lteam/opay/pay/R$string;->bad_gateway_error:I

    .line 713
    .line 714
    invoke-virtual {v5, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 715
    .line 716
    .line 717
    move-result-object v3

    .line 718
    invoke-static {v2, v3}, Loj2;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    .line 720
    .line 721
    move-result-object v2

    .line 722
    move-object v10, v2

    .line 723
    check-cast v10, Ljava/lang/CharSequence;

    .line 724
    .line 725
    sget v2, Lteam/opay/pay/R$string;->got_it_label:I

    .line 726
    .line 727
    invoke-static {v2}, Ljmf;->k(I)Ljava/lang/String;

    .line 728
    .line 729
    .line 730
    move-result-object v11

    .line 731
    const/16 v16, 0xf3

    .line 732
    .line 733
    const/16 v17, 0x0

    .line 734
    .line 735
    const/4 v8, 0x0

    .line 736
    const/4 v9, 0x0

    .line 737
    const/4 v12, 0x0

    .line 738
    const/4 v13, 0x0

    .line 739
    const/4 v14, 0x0

    .line 740
    const/4 v15, 0x0

    .line 741
    move-object v7, v1

    .line 742
    invoke-direct/range {v7 .. v17}, Lteam/opay/pay/wallet/OneButtonDialogData;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 743
    .line 744
    .line 745
    invoke-virtual {v0, v1}, Lteam/opay/pay/wallet/OneButtonDialog$Companion;->a(Lteam/opay/pay/wallet/OneButtonDialogData;)Lteam/opay/pay/wallet/OneButtonDialog;

    .line 746
    .line 747
    .line 748
    move-result-object v0

    .line 749
    invoke-static {v5, v0}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 750
    .line 751
    .line 752
    goto :goto_e

    .line 753
    :goto_a
    sget-object v8, Lteam/opay/pay/home/tabs/TransferLimitTipDialog;->x:Lteam/opay/pay/home/tabs/TransferLimitTipDialog$Companion;

    .line 754
    .line 755
    new-instance v9, Lteam/opay/pay/home/tabs/LimitTipData;

    .line 756
    .line 757
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 758
    .line 759
    .line 760
    move-result-object v0

    .line 761
    if-nez v0, :cond_15

    .line 762
    .line 763
    move-object v3, v7

    .line 764
    goto :goto_b

    .line 765
    :cond_15
    move-object v3, v0

    .line 766
    :goto_b
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 767
    .line 768
    .line 769
    move-result-object v0

    .line 770
    if-nez v0, :cond_16

    .line 771
    .line 772
    move-object v10, v7

    .line 773
    goto :goto_c

    .line 774
    :cond_16
    move-object v10, v0

    .line 775
    :goto_c
    sget-object v0, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 776
    .line 777
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 778
    .line 779
    .line 780
    move-result-object v0

    .line 781
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager;->v()Ljava/lang/String;

    .line 782
    .line 783
    .line 784
    move-result-object v0

    .line 785
    if-nez v0, :cond_17

    .line 786
    .line 787
    goto :goto_d

    .line 788
    :cond_17
    move-object v7, v0

    .line 789
    :goto_d
    const/4 v11, 0x0

    .line 790
    move-object v0, v9

    .line 791
    move-object/from16 v1, p2

    .line 792
    .line 793
    move-object v2, v3

    .line 794
    move-object v3, v10

    .line 795
    move-object v4, v7

    .line 796
    move-object v7, v5

    .line 797
    move v5, v11

    .line 798
    invoke-direct/range {v0 .. v5}, Lteam/opay/pay/home/tabs/LimitTipData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 799
    .line 800
    .line 801
    invoke-virtual {v8, v9}, Lteam/opay/pay/home/tabs/TransferLimitTipDialog$Companion;->a(Lteam/opay/pay/home/tabs/LimitTipData;)Lteam/opay/pay/home/tabs/TransferLimitTipDialog;

    .line 802
    .line 803
    .line 804
    move-result-object v0

    .line 805
    invoke-static {v7, v0}, Lteam/opay/pay/base/FragmentKt;->F(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseSheetFragmentV2;)V

    .line 806
    .line 807
    .line 808
    :goto_e
    return-void
.end method

.method public final d0(Lag8;Landroidx/fragment/app/FragmentActivity;Lteam/opay/pay/cashier/TransferPreOrder;Lkotlin/jvm/functions/Function1;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lag8;",
            "Landroidx/fragment/app/FragmentActivity;",
            "Lteam/opay/pay/cashier/TransferPreOrder;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/pay/cashier/OrderInfo;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Lteam/opay/pay/cashier/TransferPreOrder;->getServiceType()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->BANK:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 6
    .line 7
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lteam/opay/pay/opay/PaymentViewModel;->d:Lteam/opay/pay/payment/PaymentRepository;

    .line 18
    .line 19
    invoke-virtual {v0, p3}, Lteam/opay/pay/payment/PaymentRepository;->g(Lteam/opay/pay/cashier/TransferPreOrder;)Landroidx/lifecycle/LiveData;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->COINS_SEND:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 25
    .line 26
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lteam/opay/pay/opay/PaymentViewModel;->d:Lteam/opay/pay/payment/PaymentRepository;

    .line 37
    .line 38
    invoke-virtual {v0, p3}, Lteam/opay/pay/payment/PaymentRepository;->f(Lteam/opay/pay/cashier/TransferPreOrder;)Landroidx/lifecycle/LiveData;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->CASH_IN:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 44
    .line 45
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    iget-object v0, p0, Lteam/opay/pay/opay/PaymentViewModel;->d:Lteam/opay/pay/payment/PaymentRepository;

    .line 56
    .line 57
    invoke-virtual {v0, p3}, Lteam/opay/pay/payment/PaymentRepository;->i(Lteam/opay/pay/cashier/TransferPreOrder;)Landroidx/lifecycle/LiveData;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->CASH_OUT:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 63
    .line 64
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    iget-object v0, p0, Lteam/opay/pay/opay/PaymentViewModel;->d:Lteam/opay/pay/payment/PaymentRepository;

    .line 75
    .line 76
    invoke-virtual {v0, p3}, Lteam/opay/pay/payment/PaymentRepository;->j(Lteam/opay/pay/cashier/TransferPreOrder;)Landroidx/lifecycle/LiveData;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    goto :goto_0

    .line 81
    :cond_3
    iget-object v0, p0, Lteam/opay/pay/opay/PaymentViewModel;->d:Lteam/opay/pay/payment/PaymentRepository;

    .line 82
    .line 83
    invoke-virtual {v0, p3}, Lteam/opay/pay/payment/PaymentRepository;->l(Lteam/opay/pay/cashier/TransferPreOrder;)Landroidx/lifecycle/LiveData;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    :goto_0
    new-instance v7, Ljib;

    .line 88
    .line 89
    move-object v1, v7

    .line 90
    move-object v2, p0

    .line 91
    move-object v3, p4

    .line 92
    move-object v4, p3

    .line 93
    move-object v5, p2

    .line 94
    move-object v6, p1

    .line 95
    invoke-direct/range {v1 .. v6}, Ljib;-><init>(Lteam/opay/pay/opay/PaymentViewModel;Lkotlin/jvm/functions/Function1;Lteam/opay/pay/cashier/TransferPreOrder;Landroidx/fragment/app/FragmentActivity;Lag8;)V

    .line 96
    .line 97
    .line 98
    invoke-static {v0, p1, v7}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public final g0(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/android/arch/Resource;Lteam/opay/pay/cashier/TransferPreOrder;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/pay/cashier/OrderInfo;",
            ">;",
            "Lteam/opay/pay/cashier/TransferPreOrder;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/pay/opay/PreOrderRetryData;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v5, p4

    .line 10
    .line 11
    move-object/from16 v14, p5

    .line 12
    .line 13
    sget-object v4, Lteam/opay/core/api/GraphQL$ServiceType;->COINS_SEND:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 14
    .line 15
    invoke-virtual {v4}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v6

    .line 19
    sget-object v7, Lteam/opay/core/api/GraphQL$ServiceType;->BANK:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 20
    .line 21
    invoke-virtual {v7}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    filled-new-array {v6, v7}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->n([Ljava/lang/Object;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    const/4 v7, 0x0

    .line 38
    const-string v8, ""

    .line 39
    .line 40
    const/4 v9, 0x0

    .line 41
    if-eqz v6, :cond_14

    .line 42
    .line 43
    sget-object v6, Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher;->Companion:Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher$Companion;

    .line 44
    .line 45
    invoke-virtual {v6}, Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher$Companion;->a()Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-virtual {v4}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v10

    .line 53
    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v10

    .line 57
    if-eqz v10, :cond_1

    .line 58
    .line 59
    if-eqz v6, :cond_0

    .line 60
    .line 61
    invoke-virtual {v6}, Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher;->getAaCheckAmount()I

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    goto :goto_0

    .line 70
    :cond_0
    move-object v6, v9

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    if-eqz v6, :cond_0

    .line 73
    .line 74
    invoke-virtual {v6}, Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher;->getAcCheckAmount()I

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    :goto_0
    if-eqz v3, :cond_2

    .line 83
    .line 84
    invoke-virtual/range {p3 .. p3}, Lteam/opay/pay/cashier/TransferPreOrder;->getTimeChecked()Ljava/lang/Boolean;

    .line 85
    .line 86
    .line 87
    move-result-object v10

    .line 88
    goto :goto_1

    .line 89
    :cond_2
    move-object v10, v9

    .line 90
    :goto_1
    if-nez v10, :cond_6

    .line 91
    .line 92
    sget-object v15, Lteam/opay/pay/home/tabs/TransferAlertTipDialog;->q:Lteam/opay/pay/home/tabs/TransferAlertTipDialog$Companion;

    .line 93
    .line 94
    new-instance v13, Lteam/opay/pay/home/tabs/TransferAlertData;

    .line 95
    .line 96
    invoke-virtual/range {p2 .. p2}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    if-nez v4, :cond_3

    .line 101
    .line 102
    move-object v6, v8

    .line 103
    goto :goto_2

    .line 104
    :cond_3
    move-object v6, v4

    .line 105
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    if-nez v4, :cond_4

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_4
    move-object v8, v4

    .line 113
    :goto_3
    invoke-virtual {v0, v3, v7}, Lteam/opay/pay/opay/PaymentViewModel;->O(Lteam/opay/pay/cashier/TransferPreOrder;Z)Ljava/util/ArrayList;

    .line 114
    .line 115
    .line 116
    move-result-object v10

    .line 117
    if-eqz v3, :cond_5

    .line 118
    .line 119
    invoke-virtual/range {p3 .. p3}, Lteam/opay/pay/cashier/TransferPreOrder;->getAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    move-object v9, v4

    .line 124
    :cond_5
    const/16 v12, 0x20

    .line 125
    .line 126
    const/16 v16, 0x0

    .line 127
    .line 128
    const/4 v11, 0x0

    .line 129
    const-string v17, "large_amount_transfer"

    .line 130
    .line 131
    move-object v4, v13

    .line 132
    move-object/from16 v5, p4

    .line 133
    .line 134
    move-object v7, v8

    .line 135
    move-object v8, v10

    .line 136
    move v10, v11

    .line 137
    move-object/from16 v11, v17

    .line 138
    .line 139
    move-object v1, v13

    .line 140
    move-object/from16 v13, v16

    .line 141
    .line 142
    invoke-direct/range {v4 .. v13}, Lteam/opay/pay/home/tabs/TransferAlertData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lteam/opay/core/api/GraphQL$CurrencyAmount;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v15, v1}, Lteam/opay/pay/home/tabs/TransferAlertTipDialog$Companion;->b(Lteam/opay/pay/home/tabs/TransferAlertData;)Lteam/opay/pay/home/tabs/TransferAlertTipDialog;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    new-instance v4, Laib;

    .line 150
    .line 151
    invoke-direct {v4, v14, v0, v2, v3}, Laib;-><init>(Lkotlin/jvm/functions/Function1;Lteam/opay/pay/opay/PaymentViewModel;Lteam/opay/core/android/arch/Resource;Lteam/opay/pay/cashier/TransferPreOrder;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v4}, Lteam/opay/pay/home/tabs/TransferAlertTipDialog;->a0(Lkotlin/jvm/functions/Function0;)V

    .line 155
    .line 156
    .line 157
    move-object/from16 v15, p1

    .line 158
    .line 159
    invoke-static {v15, v1}, Lteam/opay/pay/base/FragmentKt;->F(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseSheetFragmentV2;)V

    .line 160
    .line 161
    .line 162
    goto/16 :goto_13

    .line 163
    .line 164
    :cond_6
    move-object v15, v1

    .line 165
    invoke-virtual/range {p3 .. p3}, Lteam/opay/pay/cashier/TransferPreOrder;->getTimeChecked()Ljava/lang/Boolean;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 170
    .line 171
    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    const/4 v10, 0x1

    .line 176
    if-eqz v1, :cond_a

    .line 177
    .line 178
    sget-object v1, Lteam/opay/pay/home/tabs/TransferAlertTipDialog;->q:Lteam/opay/pay/home/tabs/TransferAlertTipDialog$Companion;

    .line 179
    .line 180
    new-instance v13, Lteam/opay/pay/home/tabs/TransferAlertData;

    .line 181
    .line 182
    invoke-virtual/range {p3 .. p3}, Lteam/opay/pay/cashier/TransferPreOrder;->getFirstTransferText()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v16

    .line 186
    if-eqz v16, :cond_8

    .line 187
    .line 188
    invoke-virtual/range {p3 .. p3}, Lteam/opay/pay/cashier/TransferPreOrder;->getAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    invoke-static {v4, v9, v10, v9}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->toText$default(Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v18

    .line 196
    const/16 v20, 0x4

    .line 197
    .line 198
    const/16 v21, 0x0

    .line 199
    .line 200
    const-string v17, "%s"

    .line 201
    .line 202
    const/16 v19, 0x0

    .line 203
    .line 204
    invoke-static/range {v16 .. v21}, Lkotlin/text/StringsKt;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    if-nez v4, :cond_7

    .line 209
    .line 210
    goto :goto_4

    .line 211
    :cond_7
    move-object v6, v4

    .line 212
    goto :goto_5

    .line 213
    :cond_8
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    if-nez v4, :cond_7

    .line 218
    .line 219
    move-object v6, v8

    .line 220
    :goto_5
    invoke-virtual/range {p2 .. p2}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    if-nez v4, :cond_9

    .line 225
    .line 226
    move-object v7, v8

    .line 227
    goto :goto_6

    .line 228
    :cond_9
    move-object v7, v4

    .line 229
    :goto_6
    invoke-virtual/range {p3 .. p3}, Lteam/opay/pay/cashier/TransferPreOrder;->getAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 230
    .line 231
    .line 232
    move-result-object v9

    .line 233
    const/16 v12, 0x28

    .line 234
    .line 235
    const/16 v16, 0x0

    .line 236
    .line 237
    const/4 v8, 0x0

    .line 238
    const/4 v10, 0x0

    .line 239
    const-string v11, "large_amount_transfer_s"

    .line 240
    .line 241
    move-object v4, v13

    .line 242
    move-object/from16 v5, p4

    .line 243
    .line 244
    move-object v15, v13

    .line 245
    move-object/from16 v13, v16

    .line 246
    .line 247
    invoke-direct/range {v4 .. v13}, Lteam/opay/pay/home/tabs/TransferAlertData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lteam/opay/core/api/GraphQL$CurrencyAmount;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v1, v15}, Lteam/opay/pay/home/tabs/TransferAlertTipDialog$Companion;->b(Lteam/opay/pay/home/tabs/TransferAlertData;)Lteam/opay/pay/home/tabs/TransferAlertTipDialog;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    new-instance v4, Lbib;

    .line 255
    .line 256
    invoke-direct {v4, v14, v0, v2, v3}, Lbib;-><init>(Lkotlin/jvm/functions/Function1;Lteam/opay/pay/opay/PaymentViewModel;Lteam/opay/core/android/arch/Resource;Lteam/opay/pay/cashier/TransferPreOrder;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1, v4}, Lteam/opay/pay/home/tabs/TransferAlertTipDialog;->a0(Lkotlin/jvm/functions/Function0;)V

    .line 260
    .line 261
    .line 262
    move-object/from16 v15, p1

    .line 263
    .line 264
    invoke-static {v15, v1}, Lteam/opay/pay/base/FragmentKt;->F(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseSheetFragmentV2;)V

    .line 265
    .line 266
    .line 267
    goto/16 :goto_13

    .line 268
    .line 269
    :cond_a
    invoke-virtual/range {p3 .. p3}, Lteam/opay/pay/cashier/TransferPreOrder;->getAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->toBigDecimal()Ljava/math/BigDecimal;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    if-eqz v6, :cond_b

    .line 278
    .line 279
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 280
    .line 281
    .line 282
    move-result v6

    .line 283
    int-to-long v11, v6

    .line 284
    invoke-static {v11, v12}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 285
    .line 286
    .line 287
    move-result-object v6

    .line 288
    const-string v11, "valueOf(...)"

    .line 289
    .line 290
    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    goto :goto_7

    .line 294
    :cond_b
    move-object v6, v9

    .line 295
    :goto_7
    invoke-virtual {v1, v6}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    if-ne v1, v10, :cond_10

    .line 300
    .line 301
    sget-object v16, Lteam/opay/pay/home/tabs/TransferCheckNameDialogFragment;->s:Lteam/opay/pay/home/tabs/TransferCheckNameDialogFragment$Companion;

    .line 302
    .line 303
    invoke-virtual/range {p3 .. p3}, Lteam/opay/pay/cashier/TransferPreOrder;->getUserIcon()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    if-nez v1, :cond_c

    .line 308
    .line 309
    move-object/from16 v17, v8

    .line 310
    .line 311
    goto :goto_8

    .line 312
    :cond_c
    move-object/from16 v17, v1

    .line 313
    .line 314
    :goto_8
    invoke-virtual {v4}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    move-result v1

    .line 322
    if-eqz v1, :cond_d

    .line 323
    .line 324
    invoke-virtual/range {p3 .. p3}, Lteam/opay/pay/cashier/TransferPreOrder;->getRecipientAccountNo()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    invoke-static {v1}, Loj2;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    :goto_9
    move-object/from16 v18, v1

    .line 333
    .line 334
    goto :goto_a

    .line 335
    :cond_d
    invoke-virtual/range {p3 .. p3}, Lteam/opay/pay/cashier/TransferPreOrder;->getRecipientAccountNo()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    goto :goto_9

    .line 340
    :goto_a
    invoke-virtual/range {p3 .. p3}, Lteam/opay/pay/cashier/TransferPreOrder;->getRecipientAccountName()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v19

    .line 344
    invoke-virtual {v4}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    move-result v1

    .line 352
    if-eqz v1, :cond_e

    .line 353
    .line 354
    const-string v1, "OPay"

    .line 355
    .line 356
    :goto_b
    move-object/from16 v20, v1

    .line 357
    .line 358
    goto :goto_c

    .line 359
    :cond_e
    invoke-virtual/range {p3 .. p3}, Lteam/opay/pay/cashier/TransferPreOrder;->getRecipientBankName()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    goto :goto_b

    .line 364
    :goto_c
    invoke-virtual/range {p3 .. p3}, Lteam/opay/pay/cashier/TransferPreOrder;->getErrorNamesDialogContent()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    if-nez v1, :cond_f

    .line 369
    .line 370
    move-object/from16 v21, v8

    .line 371
    .line 372
    goto :goto_d

    .line 373
    :cond_f
    move-object/from16 v21, v1

    .line 374
    .line 375
    :goto_d
    invoke-virtual/range {p3 .. p3}, Lteam/opay/pay/cashier/TransferPreOrder;->getErrorNamesDialogCheckErrorTips()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v23

    .line 379
    invoke-virtual/range {p3 .. p3}, Lteam/opay/pay/cashier/TransferPreOrder;->getServiceType()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v22

    .line 383
    invoke-virtual/range {v16 .. v23}, Lteam/opay/pay/home/tabs/TransferCheckNameDialogFragment$Companion;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lteam/opay/pay/home/tabs/TransferCheckNameDialogFragment;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    new-instance v4, Lcib;

    .line 388
    .line 389
    invoke-direct {v4, v14, v0, v2, v3}, Lcib;-><init>(Lkotlin/jvm/functions/Function1;Lteam/opay/pay/opay/PaymentViewModel;Lteam/opay/core/android/arch/Resource;Lteam/opay/pay/cashier/TransferPreOrder;)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v1, v4}, Lteam/opay/pay/home/tabs/TransferCheckNameDialogFragment;->Y(Lkotlin/jvm/functions/Function0;)V

    .line 393
    .line 394
    .line 395
    invoke-static {v15, v1}, Lteam/opay/pay/base/FragmentKt;->x(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/DialogFragment;)V

    .line 396
    .line 397
    .line 398
    goto/16 :goto_13

    .line 399
    .line 400
    :cond_10
    sget-object v1, Lteam/opay/pay/home/tabs/TransferAlertTipDialog;->q:Lteam/opay/pay/home/tabs/TransferAlertTipDialog$Companion;

    .line 401
    .line 402
    new-instance v13, Lteam/opay/pay/home/tabs/TransferAlertData;

    .line 403
    .line 404
    invoke-virtual/range {p3 .. p3}, Lteam/opay/pay/cashier/TransferPreOrder;->getFirstTransferTextConfirmAmount()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v16

    .line 408
    if-eqz v16, :cond_12

    .line 409
    .line 410
    invoke-virtual/range {p3 .. p3}, Lteam/opay/pay/cashier/TransferPreOrder;->getAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 411
    .line 412
    .line 413
    move-result-object v4

    .line 414
    invoke-static {v4, v9, v10, v9}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->toText$default(Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v18

    .line 418
    const/16 v20, 0x4

    .line 419
    .line 420
    const/16 v21, 0x0

    .line 421
    .line 422
    const-string v17, "%s"

    .line 423
    .line 424
    const/16 v19, 0x0

    .line 425
    .line 426
    invoke-static/range {v16 .. v21}, Lkotlin/text/StringsKt;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v4

    .line 430
    if-nez v4, :cond_11

    .line 431
    .line 432
    goto :goto_e

    .line 433
    :cond_11
    move-object v6, v4

    .line 434
    goto :goto_f

    .line 435
    :cond_12
    :goto_e
    invoke-virtual/range {p2 .. p2}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v4

    .line 439
    if-nez v4, :cond_11

    .line 440
    .line 441
    move-object v6, v8

    .line 442
    :goto_f
    invoke-virtual/range {p2 .. p2}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v4

    .line 446
    if-nez v4, :cond_13

    .line 447
    .line 448
    goto :goto_10

    .line 449
    :cond_13
    move-object v8, v4

    .line 450
    :goto_10
    invoke-virtual {v0, v3, v7}, Lteam/opay/pay/opay/PaymentViewModel;->O(Lteam/opay/pay/cashier/TransferPreOrder;Z)Ljava/util/ArrayList;

    .line 451
    .line 452
    .line 453
    move-result-object v9

    .line 454
    invoke-virtual/range {p3 .. p3}, Lteam/opay/pay/cashier/TransferPreOrder;->getAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 455
    .line 456
    .line 457
    move-result-object v10

    .line 458
    const/16 v12, 0x20

    .line 459
    .line 460
    const/16 v16, 0x0

    .line 461
    .line 462
    const/4 v11, 0x0

    .line 463
    const-string v17, "large_amount_transfer_l"

    .line 464
    .line 465
    move-object v4, v13

    .line 466
    move-object/from16 v5, p4

    .line 467
    .line 468
    move-object v7, v8

    .line 469
    move-object v8, v9

    .line 470
    move-object v9, v10

    .line 471
    move v10, v11

    .line 472
    move-object/from16 v11, v17

    .line 473
    .line 474
    move-object v15, v13

    .line 475
    move-object/from16 v13, v16

    .line 476
    .line 477
    invoke-direct/range {v4 .. v13}, Lteam/opay/pay/home/tabs/TransferAlertData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lteam/opay/core/api/GraphQL$CurrencyAmount;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v1, v15}, Lteam/opay/pay/home/tabs/TransferAlertTipDialog$Companion;->b(Lteam/opay/pay/home/tabs/TransferAlertData;)Lteam/opay/pay/home/tabs/TransferAlertTipDialog;

    .line 481
    .line 482
    .line 483
    move-result-object v1

    .line 484
    new-instance v4, Ldib;

    .line 485
    .line 486
    invoke-direct {v4, v14, v0, v2, v3}, Ldib;-><init>(Lkotlin/jvm/functions/Function1;Lteam/opay/pay/opay/PaymentViewModel;Lteam/opay/core/android/arch/Resource;Lteam/opay/pay/cashier/TransferPreOrder;)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {v1, v4}, Lteam/opay/pay/home/tabs/TransferAlertTipDialog;->a0(Lkotlin/jvm/functions/Function0;)V

    .line 490
    .line 491
    .line 492
    move-object/from16 v15, p1

    .line 493
    .line 494
    invoke-static {v15, v1}, Lteam/opay/pay/base/FragmentKt;->F(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseSheetFragmentV2;)V

    .line 495
    .line 496
    .line 497
    goto :goto_13

    .line 498
    :cond_14
    move-object v15, v1

    .line 499
    sget-object v1, Lteam/opay/pay/home/tabs/TransferAlertTipDialog;->q:Lteam/opay/pay/home/tabs/TransferAlertTipDialog$Companion;

    .line 500
    .line 501
    new-instance v13, Lteam/opay/pay/home/tabs/TransferAlertData;

    .line 502
    .line 503
    invoke-virtual/range {p2 .. p2}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v4

    .line 507
    if-nez v4, :cond_15

    .line 508
    .line 509
    move-object v6, v8

    .line 510
    goto :goto_11

    .line 511
    :cond_15
    move-object v6, v4

    .line 512
    :goto_11
    invoke-virtual/range {p2 .. p2}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v4

    .line 516
    if-nez v4, :cond_16

    .line 517
    .line 518
    goto :goto_12

    .line 519
    :cond_16
    move-object v8, v4

    .line 520
    :goto_12
    invoke-virtual {v0, v3, v7}, Lteam/opay/pay/opay/PaymentViewModel;->O(Lteam/opay/pay/cashier/TransferPreOrder;Z)Ljava/util/ArrayList;

    .line 521
    .line 522
    .line 523
    move-result-object v10

    .line 524
    if-eqz v3, :cond_17

    .line 525
    .line 526
    invoke-virtual/range {p3 .. p3}, Lteam/opay/pay/cashier/TransferPreOrder;->getAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 527
    .line 528
    .line 529
    move-result-object v4

    .line 530
    move-object v9, v4

    .line 531
    :cond_17
    const/16 v12, 0x60

    .line 532
    .line 533
    const/16 v16, 0x0

    .line 534
    .line 535
    const/4 v11, 0x0

    .line 536
    const/16 v17, 0x0

    .line 537
    .line 538
    move-object v4, v13

    .line 539
    move-object/from16 v5, p4

    .line 540
    .line 541
    move-object v7, v8

    .line 542
    move-object v8, v10

    .line 543
    move v10, v11

    .line 544
    move-object/from16 v11, v17

    .line 545
    .line 546
    move-object v15, v13

    .line 547
    move-object/from16 v13, v16

    .line 548
    .line 549
    invoke-direct/range {v4 .. v13}, Lteam/opay/pay/home/tabs/TransferAlertData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lteam/opay/core/api/GraphQL$CurrencyAmount;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 550
    .line 551
    .line 552
    invoke-virtual {v1, v15}, Lteam/opay/pay/home/tabs/TransferAlertTipDialog$Companion;->b(Lteam/opay/pay/home/tabs/TransferAlertData;)Lteam/opay/pay/home/tabs/TransferAlertTipDialog;

    .line 553
    .line 554
    .line 555
    move-result-object v1

    .line 556
    new-instance v4, Leib;

    .line 557
    .line 558
    invoke-direct {v4, v14, v0, v2, v3}, Leib;-><init>(Lkotlin/jvm/functions/Function1;Lteam/opay/pay/opay/PaymentViewModel;Lteam/opay/core/android/arch/Resource;Lteam/opay/pay/cashier/TransferPreOrder;)V

    .line 559
    .line 560
    .line 561
    invoke-virtual {v1, v4}, Lteam/opay/pay/home/tabs/TransferAlertTipDialog;->a0(Lkotlin/jvm/functions/Function0;)V

    .line 562
    .line 563
    .line 564
    move-object/from16 v2, p1

    .line 565
    .line 566
    invoke-static {v2, v1}, Lteam/opay/pay/base/FragmentKt;->F(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseSheetFragmentV2;)V

    .line 567
    .line 568
    .line 569
    :goto_13
    return-void
.end method

.method public m()Lteam/opay/core/api/GraphQL$User;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/opay/PaymentViewModel;->b:Lteam/opay/core/api/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lteam/opay/core/api/e;->m()Lteam/opay/core/api/GraphQL$User;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final m0(Landroidx/appcompat/app/AppCompatActivity;Lteam/opay/pay/cashier/TransferPreOrder;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Landroidx/appcompat/app/AppCompatActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/cashier/TransferPreOrder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/appcompat/app/AppCompatActivity;",
            "Lteam/opay/pay/cashier/TransferPreOrder;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "request"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "next"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lfib;

    .line 17
    .line 18
    invoke-direct {v0, p3}, Lfib;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1, p1, p2, v0}, Lteam/opay/pay/opay/PaymentViewModel;->d0(Lag8;Landroidx/fragment/app/FragmentActivity;Lteam/opay/pay/cashier/TransferPreOrder;Lkotlin/jvm/functions/Function1;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final n0(Landroidx/fragment/app/Fragment;Lteam/opay/pay/cashier/TransferPreOrder;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/cashier/TransferPreOrder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Lteam/opay/pay/cashier/TransferPreOrder;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/pay/cashier/OrderInfo;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "fragment"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "request"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "next"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "requireActivity(...)"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1, v0, p2, p3}, Lteam/opay/pay/opay/PaymentViewModel;->d0(Lag8;Landroidx/fragment/app/FragmentActivity;Lteam/opay/pay/cashier/TransferPreOrder;Lkotlin/jvm/functions/Function1;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public o()Lteam/opay/core/api/Country;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/opay/PaymentViewModel;->b:Lteam/opay/core/api/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lteam/opay/core/api/e;->o()Lteam/opay/core/api/Country;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public p()Lteam/opay/core/api/GraphQL$Currency;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/opay/PaymentViewModel;->b:Lteam/opay/core/api/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lteam/opay/core/api/e;->p()Lteam/opay/core/api/GraphQL$Currency;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
