.class public final Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "RewardsFlashViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$Companion;,
        Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\t\n\u0002\u0010\r\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008&\u0008\u0007\u0018\u0000 r2\u00020\u0001:\u0001sB\u001b\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J!\u0010\u000b\u001a\u0004\u0018\u00010\t2\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ3\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f2\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u000f2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u001f\u0010\u001a\u001a\u00020\u00142\u0008\u0010\u0017\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0019\u001a\u00020\u0018\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ)\u0010\u001d\u001a\u00020\u00142\u000e\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00082\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ)\u0010\u001f\u001a\u00020\u00142\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00082\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0004\u0008\u001f\u0010\u001eJ\u0013\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u00a2\u0006\u0004\u0008 \u0010!J\u000f\u0010\"\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\"\u0010#J\u001d\u0010$\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\u0018\u00a2\u0006\u0004\u0008$\u0010%R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R\u0014\u0010+\u001a\u00020(8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008)\u0010*R1\u00102\u001a\u001c\u0012\u0018\u0012\u0016\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0012\u0006\u0012\u0004\u0018\u00010\u000f0-0,8\u0006\u00a2\u0006\u000c\n\u0004\u0008.\u0010/\u001a\u0004\u00080\u00101R\u001d\u00105\u001a\u0008\u0012\u0004\u0012\u00020\u00140,8\u0006\u00a2\u0006\u000c\n\u0004\u00083\u0010/\u001a\u0004\u00084\u00101R)\u00109\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u000206\u0012\u0004\u0012\u00020\u000f0-0,8\u0006\u00a2\u0006\u000c\n\u0004\u00087\u0010/\u001a\u0004\u00088\u00101R\u001d\u0010<\u001a\u0008\u0012\u0004\u0012\u00020\u000f0,8\u0006\u00a2\u0006\u000c\n\u0004\u0008:\u0010/\u001a\u0004\u0008;\u00101R\u001d\u0010?\u001a\u0008\u0012\u0004\u0012\u00020\u00120,8\u0006\u00a2\u0006\u000c\n\u0004\u0008=\u0010/\u001a\u0004\u0008>\u00101R)\u0010D\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020@\u0012\u0004\u0012\u00020A0-0,8\u0006\u00a2\u0006\u000c\n\u0004\u0008B\u0010/\u001a\u0004\u0008C\u00101R\u001d\u0010G\u001a\u0008\u0012\u0004\u0012\u00020\u00140,8\u0006\u00a2\u0006\u000c\n\u0004\u0008E\u0010/\u001a\u0004\u0008F\u00101R\u001d\u0010J\u001a\u0008\u0012\u0004\u0012\u00020\u00140,8\u0006\u00a2\u0006\u000c\n\u0004\u0008H\u0010/\u001a\u0004\u0008I\u00101R\u001d\u0010M\u001a\u0008\u0012\u0004\u0012\u00020\u00140,8\u0006\u00a2\u0006\u000c\n\u0004\u0008K\u0010/\u001a\u0004\u0008L\u00101R\u001d\u0010S\u001a\u0008\u0012\u0004\u0012\u0002060N8\u0006\u00a2\u0006\u000c\n\u0004\u0008O\u0010P\u001a\u0004\u0008Q\u0010RR\u0018\u0010V\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008T\u0010UR\u001e\u0010Y\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008W\u0010XR$\u0010^\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008Z\u0010U\u001a\u0004\u0008[\u0010#\"\u0004\u0008\\\u0010]R$\u0010e\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008_\u0010`\u001a\u0004\u0008a\u0010b\"\u0004\u0008c\u0010dR(\u0010j\u001a\u0008\u0012\u0004\u0012\u00020\u00180,8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008f\u0010/\u001a\u0004\u0008g\u00101\"\u0004\u0008h\u0010iR\"\u0010q\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008k\u0010l\u001a\u0004\u0008m\u0010n\"\u0004\u0008o\u0010p\u00a8\u0006t"
    }
    d2 = {
        "Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Landroid/app/Application;",
        "app",
        "Lcom/opay/team/newhome/reward/flash/FlashSaleRemindDao;",
        "flashSaleRemindDao",
        "<init>",
        "(Landroid/app/Application;Lcom/opay/team/newhome/reward/flash/FlashSaleRemindDao;)V",
        "",
        "Lcom/opay/team/newhome/reward/FlashSaleGroup;",
        "list",
        "A",
        "(Ljava/util/List;)Lcom/opay/team/newhome/reward/FlashSaleGroup;",
        "Lag8;",
        "lifecycleOwner",
        "",
        "serviceType",
        "sessionNo",
        "",
        "isViewAll",
        "",
        "y",
        "(Lag8;Ljava/lang/String;Ljava/lang/String;Z)V",
        "group",
        "Lteam/opay/pay/payment/data/DataMarketingProduct;",
        "product",
        "V",
        "(Lcom/opay/team/newhome/reward/FlashSaleGroup;Lteam/opay/pay/payment/data/DataMarketingProduct;)V",
        "sessionGroups",
        "R",
        "(Ljava/util/List;Ljava/lang/String;)V",
        "W",
        "H",
        "()Ljava/util/List;",
        "O",
        "()Lcom/opay/team/newhome/reward/FlashSaleGroup;",
        "w",
        "(Lag8;Lteam/opay/pay/payment/data/DataMarketingProduct;)V",
        "b",
        "Lcom/opay/team/newhome/reward/flash/FlashSaleRemindDao;",
        "Lusc;",
        "c",
        "Lusc;",
        "api",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lkotlin/Pair;",
        "d",
        "Landroidx/lifecycle/MutableLiveData;",
        "I",
        "()Landroidx/lifecycle/MutableLiveData;",
        "flashSuccessEvent",
        "e",
        "M",
        "refreshCurrentEvent",
        "",
        "f",
        "F",
        "errorEvent",
        "g",
        "P",
        "toastErrorEvent",
        "h",
        "K",
        "loadingEvent",
        "",
        "",
        "i",
        "Q",
        "updateTimeEvent",
        "j",
        "G",
        "fetchFlashSaleEvent",
        "k",
        "J",
        "initDataFinishEvent",
        "l",
        "B",
        "addCalendarEvent",
        "Lteam/opay/pay/util/SingleLiveEvent;",
        "m",
        "Lteam/opay/pay/util/SingleLiveEvent;",
        "N",
        "()Lteam/opay/pay/util/SingleLiveEvent;",
        "scrollToSelectPositionEvent",
        "n",
        "Lcom/opay/team/newhome/reward/FlashSaleGroup;",
        "selectedSession",
        "o",
        "Ljava/util/List;",
        "saleList",
        "p",
        "E",
        "T",
        "(Lcom/opay/team/newhome/reward/FlashSaleGroup;)V",
        "clickSaleGroup",
        "q",
        "Lteam/opay/pay/payment/data/DataMarketingProduct;",
        "D",
        "()Lteam/opay/pay/payment/data/DataMarketingProduct;",
        "S",
        "(Lteam/opay/pay/payment/data/DataMarketingProduct;)V",
        "clickProduct",
        "r",
        "C",
        "setCheckProductSuccessEvent",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "checkProductSuccessEvent",
        "s",
        "Z",
        "L",
        "()Z",
        "U",
        "(Z)V",
        "needRefreash",
        "t",
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
.field public static final t:Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final b:Lcom/opay/team/newhome/reward/flash/FlashSaleRemindDao;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final c:Lusc;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Pair<",
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/reward/FlashSaleGroup;",
            ">;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Landroidx/lifecycle/MutableLiveData;
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

.field public final f:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
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
            "Ljava/lang/String;",
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
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Landroidx/lifecycle/MutableLiveData;
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

.field public final k:Landroidx/lifecycle/MutableLiveData;
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

.field public final m:Lteam/opay/pay/util/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public n:Lcom/opay/team/newhome/reward/FlashSaleGroup;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/reward/FlashSaleGroup;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public p:Lcom/opay/team/newhome/reward/FlashSaleGroup;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public q:Lteam/opay/pay/payment/data/DataMarketingProduct;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public r:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/payment/data/DataMarketingProduct;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->t:Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lcom/opay/team/newhome/reward/flash/FlashSaleRemindDao;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/opay/team/newhome/reward/flash/FlashSaleRemindDao;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    iput-object p2, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->b:Lcom/opay/team/newhome/reward/flash/FlashSaleRemindDao;

    .line 10
    .line 11
    sget-object p2, Lcom/opay/team/home/api/HomeApiService;->a:Lcom/opay/team/home/api/HomeApiService;

    .line 12
    .line 13
    invoke-virtual {p2, p1}, Lcom/opay/team/home/api/HomeApiService;->g(Landroid/content/Context;)Lusc;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->c:Lusc;

    .line 18
    .line 19
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 20
    .line 21
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    .line 25
    .line 26
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 27
    .line 28
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 32
    .line 33
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 34
    .line 35
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 39
    .line 40
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 41
    .line 42
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 46
    .line 47
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 48
    .line 49
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    .line 53
    .line 54
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 55
    .line 56
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    .line 60
    .line 61
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 62
    .line 63
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object p1, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    .line 67
    .line 68
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 69
    .line 70
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object p1, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    .line 74
    .line 75
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 76
    .line 77
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object p1, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    .line 81
    .line 82
    new-instance p1, Lteam/opay/pay/util/SingleLiveEvent;

    .line 83
    .line 84
    invoke-direct {p1}, Lteam/opay/pay/util/SingleLiveEvent;-><init>()V

    .line 85
    .line 86
    .line 87
    iput-object p1, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->m:Lteam/opay/pay/util/SingleLiveEvent;

    .line 88
    .line 89
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 90
    .line 91
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 92
    .line 93
    .line 94
    iput-object p1, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->r:Landroidx/lifecycle/MutableLiveData;

    .line 95
    .line 96
    return-void
.end method

.method public static synthetic r(Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;Lteam/opay/pay/payment/data/DataMarketingProduct;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->x(Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;Lteam/opay/pay/payment/data/DataMarketingProduct;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic s(Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->z(Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic t(Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;)Lcom/opay/team/newhome/reward/flash/FlashSaleRemindDao;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->b:Lcom/opay/team/newhome/reward/flash/FlashSaleRemindDao;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic u(Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->o:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic v(Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;)Lcom/opay/team/newhome/reward/FlashSaleGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->n:Lcom/opay/team/newhome/reward/FlashSaleGroup;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final x(Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;Lteam/opay/pay/payment/data/DataMarketingProduct;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->f()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sget-object v1, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$a;->a:[I

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    aget v0, v1, v0

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    if-eq v0, v1, :cond_4

    .line 33
    .line 34
    const/4 p1, 0x2

    .line 35
    if-eq v0, p1, :cond_1

    .line 36
    .line 37
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object p1, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 42
    .line 43
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    const-string v0, ""

    .line 50
    .line 51
    :cond_2
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    const-string v0, "10009"

    .line 59
    .line 60
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-nez p1, :cond_3

    .line 65
    .line 66
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const-string v0, "10008"

    .line 71
    .line 72
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-nez p1, :cond_3

    .line 77
    .line 78
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const-string p2, "10010"

    .line 83
    .line 84
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-eqz p1, :cond_5

    .line 89
    .line 90
    :cond_3
    iget-object p0, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    .line 91
    .line 92
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 93
    .line 94
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_4
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 103
    .line 104
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    if-eqz p2, :cond_5

    .line 109
    .line 110
    iget-object p0, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->r:Landroidx/lifecycle/MutableLiveData;

    .line 111
    .line 112
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    :cond_5
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 116
    .line 117
    return-object p0
.end method

.method public static final z(Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 10

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->f()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sget-object v1, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$a;->a:[I

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    aget v0, v1, v0

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    if-eq v0, v1, :cond_3

    .line 33
    .line 34
    const/4 p1, 0x2

    .line 35
    if-eq v0, p1, :cond_1

    .line 36
    .line 37
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object p0, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 42
    .line 43
    new-instance p1, Lkotlin/Pair;

    .line 44
    .line 45
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->e()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    if-nez p2, :cond_2

    .line 58
    .line 59
    const-string p2, ""

    .line 60
    .line 61
    :cond_2
    invoke-direct {p1, v0, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    move-object v3, v0

    .line 73
    check-cast v3, Ljava/util/List;

    .line 74
    .line 75
    if-eqz v3, :cond_4

    .line 76
    .line 77
    invoke-static {p0}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    new-instance v8, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$fetchFlashSale$1$1$1;

    .line 86
    .line 87
    const/4 v6, 0x0

    .line 88
    move-object v1, v8

    .line 89
    move-object v2, p0

    .line 90
    move-object v4, p1

    .line 91
    move-object v5, p2

    .line 92
    invoke-direct/range {v1 .. v6}, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$fetchFlashSale$1$1$1;-><init>(Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;Ljava/util/List;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;Ljr2;)V

    .line 93
    .line 94
    .line 95
    const/4 p0, 0x2

    .line 96
    const/4 v9, 0x0

    .line 97
    move-object v4, v0

    .line 98
    move-object v5, v7

    .line 99
    move-object v7, v8

    .line 100
    move v8, p0

    .line 101
    invoke-static/range {v4 .. v9}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 102
    .line 103
    .line 104
    :cond_4
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 105
    .line 106
    return-object p0
.end method


# virtual methods
.method public final A(Ljava/util/List;)Lcom/opay/team/newhome/reward/FlashSaleGroup;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/reward/FlashSaleGroup;",
            ">;)",
            "Lcom/opay/team/newhome/reward/FlashSaleGroup;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    sget-object v1, Li56;->a:Li56;

    .line 6
    .line 7
    invoke-virtual {v1}, Li56;->e()Ljava/util/Date;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    move-object v2, v0

    .line 16
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_5

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Lcom/opay/team/newhome/reward/FlashSaleGroup;

    .line 27
    .line 28
    sget-object v4, Li56;->a:Li56;

    .line 29
    .line 30
    invoke-virtual {v3}, Lcom/opay/team/newhome/reward/FlashSaleGroup;->getStartTimeStamp()Ljava/lang/Long;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-virtual {v4, v5}, Li56;->g(Ljava/lang/Long;)Ljava/util/Date;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-virtual {v3}, Lcom/opay/team/newhome/reward/FlashSaleGroup;->getEndTimeStamp()Ljava/lang/Long;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    invoke-virtual {v4, v6}, Li56;->g(Ljava/lang/Long;)Ljava/util/Date;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    invoke-interface {v1, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    if-ltz v7, :cond_3

    .line 51
    .line 52
    invoke-interface {v1, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    if-gtz v6, :cond_3

    .line 57
    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/opay/team/newhome/reward/FlashSaleGroup;->getStartTimeStamp()Ljava/lang/Long;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    invoke-virtual {v4, v6}, Li56;->g(Ljava/lang/Long;)Ljava/util/Date;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {v5, v4}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-lez v4, :cond_1

    .line 73
    .line 74
    :cond_2
    move-object v0, v3

    .line 75
    goto :goto_0

    .line 76
    :cond_3
    invoke-virtual {v1, v5}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    if-gez v6, :cond_1

    .line 81
    .line 82
    if-eqz v2, :cond_4

    .line 83
    .line 84
    invoke-virtual {v2}, Lcom/opay/team/newhome/reward/FlashSaleGroup;->getStartTimeStamp()Ljava/lang/Long;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    invoke-virtual {v4, v6}, Li56;->g(Ljava/lang/Long;)Ljava/util/Date;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-virtual {v5, v4}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-gez v4, :cond_1

    .line 97
    .line 98
    :cond_4
    move-object v2, v3

    .line 99
    goto :goto_0

    .line 100
    :cond_5
    if-nez v0, :cond_6

    .line 101
    .line 102
    move-object v0, v2

    .line 103
    :cond_6
    return-object v0
.end method

.method public final B()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final C()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/payment/data/DataMarketingProduct;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->r:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final D()Lteam/opay/pay/payment/data/DataMarketingProduct;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->q:Lteam/opay/pay/payment/data/DataMarketingProduct;

    .line 2
    .line 3
    return-object v0
.end method

.method public final E()Lcom/opay/team/newhome/reward/FlashSaleGroup;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->p:Lcom/opay/team/newhome/reward/FlashSaleGroup;

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
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final G()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final H()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/reward/FlashSaleGroup;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->o:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public final I()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Pair<",
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/reward/FlashSaleGroup;",
            ">;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final J()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final K()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final L()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->s:Z

    .line 2
    .line 3
    return v0
.end method

.method public final M()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final N()Lteam/opay/pay/util/SingleLiveEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->m:Lteam/opay/pay/util/SingleLiveEvent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final O()Lcom/opay/team/newhome/reward/FlashSaleGroup;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->n:Lcom/opay/team/newhome/reward/FlashSaleGroup;

    .line 2
    .line 3
    return-object v0
.end method

.method public final P()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Q()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final R(Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/reward/FlashSaleGroup;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->W(Ljava/util/List;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v3, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$initData$1;

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    invoke-direct {v3, p0, p1}, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$initData$1;-><init>(Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;Ljr2;)V

    .line 16
    .line 17
    .line 18
    const/4 v4, 0x2

    .line 19
    const/4 v5, 0x0

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-static/range {v0 .. v5}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final S(Lteam/opay/pay/payment/data/DataMarketingProduct;)V
    .locals 0
    .param p1    # Lteam/opay/pay/payment/data/DataMarketingProduct;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->q:Lteam/opay/pay/payment/data/DataMarketingProduct;

    .line 2
    .line 3
    return-void
.end method

.method public final T(Lcom/opay/team/newhome/reward/FlashSaleGroup;)V
    .locals 0
    .param p1    # Lcom/opay/team/newhome/reward/FlashSaleGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->p:Lcom/opay/team/newhome/reward/FlashSaleGroup;

    .line 2
    .line 3
    return-void
.end method

.method public final U(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->s:Z

    .line 2
    .line 3
    return-void
.end method

.method public final V(Lcom/opay/team/newhome/reward/FlashSaleGroup;Lteam/opay/pay/payment/data/DataMarketingProduct;)V
    .locals 17
    .param p1    # Lcom/opay/team/newhome/reward/FlashSaleGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/payment/data/DataMarketingProduct;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    const-string v1, "product"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/opay/team/newhome/reward/flash/FlashSaleRemindData;

    .line 9
    .line 10
    sget-object v2, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 11
    .line 12
    invoke-virtual {v2}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Lteam/opay/core/account/AccountInfoManager;->u()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    const/4 v10, 0x0

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-virtual/range {p1 .. p1}, Lcom/opay/team/newhome/reward/FlashSaleGroup;->getSessionNo()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move-object v2, v10

    .line 29
    :goto_0
    if-nez v2, :cond_1

    .line 30
    .line 31
    const-string v2, ""

    .line 32
    .line 33
    :cond_1
    move-object v5, v2

    .line 34
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/payment/data/DataMarketingProduct;->getProductId()Ljava/lang/Long;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 41
    .line 42
    .line 43
    move-result-wide v2

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    const-wide/16 v2, 0x0

    .line 46
    .line 47
    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/payment/data/DataMarketingProduct;->getDailyEndTimeStamp()Ljava/lang/Long;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    if-eqz v2, :cond_3

    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 58
    .line 59
    .line 60
    move-result-wide v2

    .line 61
    goto :goto_2

    .line 62
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 63
    .line 64
    .line 65
    move-result-wide v2

    .line 66
    :goto_2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    const/4 v8, 0x1

    .line 71
    const/4 v9, 0x0

    .line 72
    const/4 v3, 0x0

    .line 73
    move-object v2, v1

    .line 74
    invoke-direct/range {v2 .. v9}, Lcom/opay/team/newhome/reward/flash/FlashSaleRemindData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 75
    .line 76
    .line 77
    invoke-static/range {p0 .. p0}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 78
    .line 79
    .line 80
    move-result-object v11

    .line 81
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 82
    .line 83
    .line 84
    move-result-object v12

    .line 85
    new-instance v14, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$updateRemind$1;

    .line 86
    .line 87
    move-object/from16 v2, p0

    .line 88
    .line 89
    invoke-direct {v14, v2, v1, v0, v10}, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$updateRemind$1;-><init>(Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;Lcom/opay/team/newhome/reward/flash/FlashSaleRemindData;Lteam/opay/pay/payment/data/DataMarketingProduct;Ljr2;)V

    .line 90
    .line 91
    .line 92
    const/4 v15, 0x2

    .line 93
    const/16 v16, 0x0

    .line 94
    .line 95
    const/4 v13, 0x0

    .line 96
    invoke-static/range {v11 .. v16}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public final W(Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/reward/FlashSaleGroup;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p2, :cond_3

    .line 4
    .line 5
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    if-eqz p1, :cond_9

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const/4 v3, 0x0

    .line 19
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_9

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    add-int/lit8 v5, v3, 0x1

    .line 30
    .line 31
    if-gez v3, :cond_1

    .line 32
    .line 33
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 34
    .line 35
    .line 36
    :cond_1
    check-cast v4, Lcom/opay/team/newhome/reward/FlashSaleGroup;

    .line 37
    .line 38
    invoke-virtual {v4}, Lcom/opay/team/newhome/reward/FlashSaleGroup;->getSessionNo()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    invoke-virtual {v4, v0}, Lcom/opay/team/newhome/reward/FlashSaleGroup;->setSelected(Z)V

    .line 49
    .line 50
    .line 51
    iput-object v4, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->n:Lcom/opay/team/newhome/reward/FlashSaleGroup;

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    invoke-virtual {v4, v1}, Lcom/opay/team/newhome/reward/FlashSaleGroup;->setSelected(Z)V

    .line 55
    .line 56
    .line 57
    :goto_1
    move v3, v5

    .line 58
    goto :goto_0

    .line 59
    :cond_3
    :goto_2
    invoke-virtual {p0, p1}, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->A(Ljava/util/List;)Lcom/opay/team/newhome/reward/FlashSaleGroup;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    if-nez p2, :cond_5

    .line 64
    .line 65
    if-eqz p1, :cond_4

    .line 66
    .line 67
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->v0(Ljava/util/List;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    check-cast p2, Lcom/opay/team/newhome/reward/FlashSaleGroup;

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_4
    const/4 p2, 0x0

    .line 75
    :cond_5
    :goto_3
    if-eqz p1, :cond_7

    .line 76
    .line 77
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    const/4 v3, 0x0

    .line 82
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    if-eqz v4, :cond_7

    .line 87
    .line 88
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    add-int/lit8 v5, v3, 0x1

    .line 93
    .line 94
    if-gez v3, :cond_6

    .line 95
    .line 96
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 97
    .line 98
    .line 99
    :cond_6
    check-cast v4, Lcom/opay/team/newhome/reward/FlashSaleGroup;

    .line 100
    .line 101
    invoke-virtual {v4, v1}, Lcom/opay/team/newhome/reward/FlashSaleGroup;->setSelected(Z)V

    .line 102
    .line 103
    .line 104
    move v3, v5

    .line 105
    goto :goto_4

    .line 106
    :cond_7
    if-eqz p2, :cond_8

    .line 107
    .line 108
    invoke-virtual {p2, v0}, Lcom/opay/team/newhome/reward/FlashSaleGroup;->setSelected(Z)V

    .line 109
    .line 110
    .line 111
    :cond_8
    iput-object p2, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->n:Lcom/opay/team/newhome/reward/FlashSaleGroup;

    .line 112
    .line 113
    :cond_9
    iput-object p1, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->o:Ljava/util/List;

    .line 114
    .line 115
    return-void
.end method

.method public final w(Lag8;Lteam/opay/pay/payment/data/DataMarketingProduct;)V
    .locals 3
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/payment/data/DataMarketingProduct;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "lifecycleOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "product"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->c:Lusc;

    .line 12
    .line 13
    new-instance v1, Lcom/opay/team/newhome/reward/checkProductReq;

    .line 14
    .line 15
    invoke-virtual {p2}, Lteam/opay/pay/payment/data/DataMarketingProduct;->getActivityNo()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    const-string v2, ""

    .line 22
    .line 23
    :cond_0
    invoke-direct {v1, v2}, Lcom/opay/team/newhome/reward/checkProductReq;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, v1}, Lusc;->g(Lcom/opay/team/newhome/reward/checkProductReq;)Lretrofit2/Call;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0, p0}, Lkpc;->a(Lretrofit2/Call;Landroidx/lifecycle/AndroidViewModel;)Landroidx/lifecycle/LiveData;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v1, Lmuc;

    .line 35
    .line 36
    invoke-direct {v1, p0, p2}, Lmuc;-><init>(Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;Lteam/opay/pay/payment/data/DataMarketingProduct;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0, p1, v1}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final y(Lag8;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "lifecycleOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "serviceType"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->c:Lusc;

    .line 12
    .line 13
    new-instance v1, Lcom/opay/team/newhome/reward/RewardsFlashSaleReq;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-direct {v1, p2, v2, p4}, Lcom/opay/team/newhome/reward/RewardsFlashSaleReq;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1}, Lusc;->j(Lcom/opay/team/newhome/reward/RewardsFlashSaleReq;)Lretrofit2/Call;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-static {p2, p0}, Lkpc;->a(Lretrofit2/Call;Landroidx/lifecycle/AndroidViewModel;)Landroidx/lifecycle/LiveData;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    new-instance p4, Lnuc;

    .line 28
    .line 29
    invoke-direct {p4, p0, p3}, Lnuc;-><init>(Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {p2, p1, p4}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
