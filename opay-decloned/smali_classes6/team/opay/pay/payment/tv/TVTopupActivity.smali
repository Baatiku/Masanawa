.class public final Lteam/opay/pay/payment/tv/TVTopupActivity;
.super Lteam/opay/pay/payment/tv/Hilt_TVTopupActivity;
.source "TVTopupActivity.kt"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$i;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InflateParams"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/payment/tv/TVTopupActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008$\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 \u0097\u00012\u00020\u00012\u00020\u0002:\u0002\u0098\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0019\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0004J\u000f\u0010\u000b\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0004J\u000f\u0010\u000c\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\u0004J\u0017\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0004J\u0017\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0019\u0010\u0019\u001a\u00020\u00072\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u0004J\u000f\u0010\u001c\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u0004J\u000f\u0010\u001d\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u0004J!\u0010 \u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008 \u0010!J\u000f\u0010\"\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\"\u0010\u0004J\u000f\u0010#\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008#\u0010\u0004J\u000f\u0010$\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008$\u0010\u0004J\u0017\u0010&\u001a\u00020\u00072\u0006\u0010%\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008&\u0010\u001aJ\u000f\u0010\'\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\'\u0010\u0004J\u0017\u0010)\u001a\u00020\u00072\u0006\u0010(\u001a\u00020\u0014H\u0002\u00a2\u0006\u0004\u0008)\u0010*J\u000f\u0010+\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008+\u0010\u0004J\u000f\u0010,\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008,\u0010\u0004J\u000f\u0010-\u001a\u00020\u0014H\u0002\u00a2\u0006\u0004\u0008-\u0010.J\u000f\u0010/\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008/\u0010\u0004J\u000f\u00100\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u00080\u00101J\u000f\u00102\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u00082\u0010\u0004J\u000f\u00103\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u00083\u0010\u0004J\u000f\u00104\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u00084\u0010\u0004J\u0017\u00106\u001a\u00020\u00072\u0006\u00105\u001a\u00020\u0014H\u0002\u00a2\u0006\u0004\u00086\u0010*J\u0017\u00108\u001a\u00020\u00072\u0006\u00107\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u00088\u0010\tJ\u0019\u0010:\u001a\u00020\u00072\u0008\u00109\u001a\u0004\u0018\u00010\u0017H\u0002\u00a2\u0006\u0004\u0008:\u0010\u001aJ\u000f\u0010;\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008;\u0010\u0004J\u0017\u0010>\u001a\u00020\u00072\u0006\u0010=\u001a\u00020<H\u0002\u00a2\u0006\u0004\u0008>\u0010?J\u000f\u0010@\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008@\u0010\u0004J\u000f\u0010A\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008A\u0010\u0004J\u000f\u0010B\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008B\u0010\u0004J\u000f\u0010C\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008C\u0010\u0004J\u000f\u0010D\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008D\u0010\u0004J\u0019\u0010G\u001a\u00020\u00072\u0008\u0010F\u001a\u0004\u0018\u00010EH\u0014\u00a2\u0006\u0004\u0008G\u0010HJ\u0019\u0010I\u001a\u00020\u00072\u0008\u0010F\u001a\u0004\u0018\u00010EH\u0014\u00a2\u0006\u0004\u0008I\u0010HJ\u000f\u0010J\u001a\u00020\u0007H\u0014\u00a2\u0006\u0004\u0008J\u0010\u0004J\'\u0010N\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u00142\u0006\u0010L\u001a\u00020K2\u0006\u0010M\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008N\u0010OJ\u0017\u0010P\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008P\u0010*J\u0017\u0010R\u001a\u00020\u00072\u0006\u0010Q\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008R\u0010*J)\u0010W\u001a\u00020\u00072\u0006\u0010S\u001a\u00020\u00142\u0006\u0010T\u001a\u00020\u00142\u0008\u0010V\u001a\u0004\u0018\u00010UH\u0014\u00a2\u0006\u0004\u0008W\u0010XJ\u000f\u0010Y\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008Y\u0010\u0004J\u0019\u0010[\u001a\u00020\u00072\u0008\u0010Z\u001a\u0004\u0018\u00010UH\u0014\u00a2\u0006\u0004\u0008[\u0010\\R\u001b\u0010b\u001a\u00020]8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008^\u0010_\u001a\u0004\u0008`\u0010aR\u001b\u0010g\u001a\u00020c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008d\u0010_\u001a\u0004\u0008e\u0010fR\u001b\u0010l\u001a\u00020h8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008i\u0010_\u001a\u0004\u0008j\u0010kR\u001b\u0010q\u001a\u00020m8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008n\u0010_\u001a\u0004\u0008o\u0010pR\u001b\u0010v\u001a\u00020r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008s\u0010_\u001a\u0004\u0008t\u0010uR\u001b\u0010{\u001a\u00020w8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008x\u0010_\u001a\u0004\u0008y\u0010zR\u001c\u0010\u0080\u0001\u001a\u00020|8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008}\u0010_\u001a\u0004\u0008~\u0010\u007fR\u001c\u0010\u0084\u0001\u001a\u0005\u0018\u00010\u0081\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0082\u0001\u0010\u0083\u0001R\u0019\u0010\u0087\u0001\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0085\u0001\u0010\u0086\u0001R\u0019\u0010\u0089\u0001\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0088\u0001\u0010\u0086\u0001R\u001c\u0010\u008d\u0001\u001a\u0005\u0018\u00010\u008a\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008b\u0001\u0010\u008c\u0001R\u0019\u0010\u008f\u0001\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008e\u0001\u0010\u0086\u0001R\u0019\u0010\u0091\u0001\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0090\u0001\u0010\u0086\u0001R!\u0010\u0096\u0001\u001a\u000c\u0012\u0005\u0012\u00030\u0093\u0001\u0018\u00010\u0092\u00018BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u0094\u0001\u0010\u0095\u0001\u00a8\u0006\u0099\u0001"
    }
    d2 = {
        "Lteam/opay/pay/payment/tv/TVTopupActivity;",
        "Lteam/opay/pay/android/BaseShowAdActivity;",
        "Landroidx/viewpager/widget/ViewPager$i;",
        "<init>",
        "()V",
        "",
        "first",
        "",
        "M1",
        "(Z)V",
        "i1",
        "initView",
        "j1",
        "Lteam/opay/pay/cashier/LifePreOrder;",
        "preOrderParam",
        "K1",
        "(Lteam/opay/pay/cashier/LifePreOrder;)V",
        "A0",
        "Lteam/opay/pay/api/QueryVoucherItem;",
        "voucher",
        "",
        "K0",
        "(Lteam/opay/pay/api/QueryVoucherItem;)I",
        "",
        "payAmount",
        "O1",
        "(Ljava/lang/String;)V",
        "E0",
        "h1",
        "H1",
        "position",
        "record",
        "T1",
        "(IZ)V",
        "Q0",
        "k2",
        "R1",
        "inputText",
        "g2",
        "Z1",
        "index",
        "S1",
        "(I)V",
        "W1",
        "P0",
        "I1",
        "()I",
        "j2",
        "d1",
        "()Z",
        "e1",
        "g1",
        "X1",
        "selectPosition",
        "V1",
        "have",
        "D0",
        "d",
        "a2",
        "b2",
        "Lteam/opay/pay/payment/tv/TvProduct;",
        "clickPro",
        "c2",
        "(Lteam/opay/pay/payment/tv/TvProduct;)V",
        "J1",
        "Q1",
        "P1",
        "h2",
        "O0",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onPostCreate",
        "onDestroy",
        "",
        "positionOffset",
        "positionOffsetPixels",
        "onPageScrolled",
        "(IFI)V",
        "onPageSelected",
        "state",
        "onPageScrollStateChanged",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "data",
        "onActivityResult",
        "(IILandroid/content/Intent;)V",
        "onBackPressed",
        "intent",
        "onNewIntent",
        "(Landroid/content/Intent;)V",
        "Log;",
        "g",
        "Lid8;",
        "L0",
        "()Log;",
        "viewBinding",
        "Lteam/opay/pay/payment/tv/TVTopupViewModel;",
        "h",
        "M0",
        "()Lteam/opay/pay/payment/tv/TVTopupViewModel;",
        "viewModel",
        "Lteam/opay/pay/ad/OpayAdBannerViewModel;",
        "i",
        "G0",
        "()Lteam/opay/pay/ad/OpayAdBannerViewModel;",
        "bannerViewModel",
        "Lteam/opay/pay/payment/BeneficiaryViewModel;",
        "j",
        "H0",
        "()Lteam/opay/pay/payment/BeneficiaryViewModel;",
        "beneficiaryViewModel",
        "Lteam/opay/pay/opay/PaymentViewModel;",
        "k",
        "J0",
        "()Lteam/opay/pay/opay/PaymentViewModel;",
        "paymentViewModel",
        "Lteam/opay/pay/coupon/OpayVoucherViewModel;",
        "l",
        "N0",
        "()Lteam/opay/pay/coupon/OpayVoucherViewModel;",
        "voucherViewModel",
        "Lteam/opay/pay/payment/betting/LifeCommonViewModel;",
        "m",
        "I0",
        "()Lteam/opay/pay/payment/betting/LifeCommonViewModel;",
        "lifeCommonViewModel",
        "Lteam/opay/pay/util/NetWorkReceiver;",
        "n",
        "Lteam/opay/pay/util/NetWorkReceiver;",
        "receiver",
        "o",
        "Z",
        "shouldLookupAccount",
        "p",
        "clickBeneficiaryEntryDisableKeyboard",
        "Lteam/opay/pay/android/views/AmountInputBusnissUtils;",
        "q",
        "Lteam/opay/pay/android/views/AmountInputBusnissUtils;",
        "editUtil",
        "r",
        "log",
        "s",
        "hasDeeplikeId",
        "",
        "Lteam/opay/pay/payment/tv/TvProviderInfo;",
        "F0",
        "()Ljava/util/List;",
        "allProvider",
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
.field public static final t:Lteam/opay/pay/payment/tv/TVTopupActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final g:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final m:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public n:Lteam/opay/pay/util/NetWorkReceiver;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public o:Z

.field public p:Z

.field public q:Lteam/opay/pay/android/views/AmountInputBusnissUtils;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public r:Z

.field public s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/payment/tv/TVTopupActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/payment/tv/TVTopupActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/payment/tv/TVTopupActivity;->t:Lteam/opay/pay/payment/tv/TVTopupActivity$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->activity_tv_topup:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/payment/tv/Hilt_TVTopupActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ltde;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Ltde;-><init>(Lteam/opay/pay/payment/tv/TVTopupActivity;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lteam/opay/pay/payment/tv/TVTopupActivity;->g:Lid8;

    .line 16
    .line 17
    new-instance v0, Lteam/opay/pay/payment/tv/TVTopupActivity$special$$inlined$viewModels$default$1;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lteam/opay/pay/payment/tv/TVTopupActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 23
    .line 24
    const-class v2, Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 25
    .line 26
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    new-instance v3, Lteam/opay/pay/payment/tv/TVTopupActivity$special$$inlined$viewModels$default$2;

    .line 31
    .line 32
    invoke-direct {v3, p0}, Lteam/opay/pay/payment/tv/TVTopupActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 33
    .line 34
    .line 35
    new-instance v4, Lteam/opay/pay/payment/tv/TVTopupActivity$special$$inlined$viewModels$default$3;

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    invoke-direct {v4, v5, p0}, Lteam/opay/pay/payment/tv/TVTopupActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lteam/opay/pay/payment/tv/TVTopupActivity;->h:Lid8;

    .line 45
    .line 46
    new-instance v0, Lteam/opay/pay/payment/tv/TVTopupActivity$special$$inlined$viewModels$default$4;

    .line 47
    .line 48
    invoke-direct {v0, p0}, Lteam/opay/pay/payment/tv/TVTopupActivity$special$$inlined$viewModels$default$4;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 49
    .line 50
    .line 51
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 52
    .line 53
    const-class v2, Lteam/opay/pay/ad/OpayAdBannerViewModel;

    .line 54
    .line 55
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    new-instance v3, Lteam/opay/pay/payment/tv/TVTopupActivity$special$$inlined$viewModels$default$5;

    .line 60
    .line 61
    invoke-direct {v3, p0}, Lteam/opay/pay/payment/tv/TVTopupActivity$special$$inlined$viewModels$default$5;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 62
    .line 63
    .line 64
    new-instance v4, Lteam/opay/pay/payment/tv/TVTopupActivity$special$$inlined$viewModels$default$6;

    .line 65
    .line 66
    invoke-direct {v4, v5, p0}, Lteam/opay/pay/payment/tv/TVTopupActivity$special$$inlined$viewModels$default$6;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 67
    .line 68
    .line 69
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 70
    .line 71
    .line 72
    iput-object v1, p0, Lteam/opay/pay/payment/tv/TVTopupActivity;->i:Lid8;

    .line 73
    .line 74
    new-instance v0, Lteam/opay/pay/payment/tv/TVTopupActivity$special$$inlined$viewModels$default$7;

    .line 75
    .line 76
    invoke-direct {v0, p0}, Lteam/opay/pay/payment/tv/TVTopupActivity$special$$inlined$viewModels$default$7;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 77
    .line 78
    .line 79
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 80
    .line 81
    const-class v2, Lteam/opay/pay/payment/BeneficiaryViewModel;

    .line 82
    .line 83
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    new-instance v3, Lteam/opay/pay/payment/tv/TVTopupActivity$special$$inlined$viewModels$default$8;

    .line 88
    .line 89
    invoke-direct {v3, p0}, Lteam/opay/pay/payment/tv/TVTopupActivity$special$$inlined$viewModels$default$8;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 90
    .line 91
    .line 92
    new-instance v4, Lteam/opay/pay/payment/tv/TVTopupActivity$special$$inlined$viewModels$default$9;

    .line 93
    .line 94
    invoke-direct {v4, v5, p0}, Lteam/opay/pay/payment/tv/TVTopupActivity$special$$inlined$viewModels$default$9;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 95
    .line 96
    .line 97
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 98
    .line 99
    .line 100
    iput-object v1, p0, Lteam/opay/pay/payment/tv/TVTopupActivity;->j:Lid8;

    .line 101
    .line 102
    new-instance v0, Lteam/opay/pay/payment/tv/TVTopupActivity$special$$inlined$viewModels$default$10;

    .line 103
    .line 104
    invoke-direct {v0, p0}, Lteam/opay/pay/payment/tv/TVTopupActivity$special$$inlined$viewModels$default$10;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 105
    .line 106
    .line 107
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 108
    .line 109
    const-class v2, Lteam/opay/pay/opay/PaymentViewModel;

    .line 110
    .line 111
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    new-instance v3, Lteam/opay/pay/payment/tv/TVTopupActivity$special$$inlined$viewModels$default$11;

    .line 116
    .line 117
    invoke-direct {v3, p0}, Lteam/opay/pay/payment/tv/TVTopupActivity$special$$inlined$viewModels$default$11;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 118
    .line 119
    .line 120
    new-instance v4, Lteam/opay/pay/payment/tv/TVTopupActivity$special$$inlined$viewModels$default$12;

    .line 121
    .line 122
    invoke-direct {v4, v5, p0}, Lteam/opay/pay/payment/tv/TVTopupActivity$special$$inlined$viewModels$default$12;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 123
    .line 124
    .line 125
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 126
    .line 127
    .line 128
    iput-object v1, p0, Lteam/opay/pay/payment/tv/TVTopupActivity;->k:Lid8;

    .line 129
    .line 130
    new-instance v0, Lteam/opay/pay/payment/tv/TVTopupActivity$special$$inlined$viewModels$default$13;

    .line 131
    .line 132
    invoke-direct {v0, p0}, Lteam/opay/pay/payment/tv/TVTopupActivity$special$$inlined$viewModels$default$13;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 133
    .line 134
    .line 135
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 136
    .line 137
    const-class v2, Lteam/opay/pay/coupon/OpayVoucherViewModel;

    .line 138
    .line 139
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    new-instance v3, Lteam/opay/pay/payment/tv/TVTopupActivity$special$$inlined$viewModels$default$14;

    .line 144
    .line 145
    invoke-direct {v3, p0}, Lteam/opay/pay/payment/tv/TVTopupActivity$special$$inlined$viewModels$default$14;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 146
    .line 147
    .line 148
    new-instance v4, Lteam/opay/pay/payment/tv/TVTopupActivity$special$$inlined$viewModels$default$15;

    .line 149
    .line 150
    invoke-direct {v4, v5, p0}, Lteam/opay/pay/payment/tv/TVTopupActivity$special$$inlined$viewModels$default$15;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 151
    .line 152
    .line 153
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 154
    .line 155
    .line 156
    iput-object v1, p0, Lteam/opay/pay/payment/tv/TVTopupActivity;->l:Lid8;

    .line 157
    .line 158
    new-instance v0, Lteam/opay/pay/payment/tv/TVTopupActivity$special$$inlined$viewModels$default$16;

    .line 159
    .line 160
    invoke-direct {v0, p0}, Lteam/opay/pay/payment/tv/TVTopupActivity$special$$inlined$viewModels$default$16;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 161
    .line 162
    .line 163
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 164
    .line 165
    const-class v2, Lteam/opay/pay/payment/betting/LifeCommonViewModel;

    .line 166
    .line 167
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    new-instance v3, Lteam/opay/pay/payment/tv/TVTopupActivity$special$$inlined$viewModels$default$17;

    .line 172
    .line 173
    invoke-direct {v3, p0}, Lteam/opay/pay/payment/tv/TVTopupActivity$special$$inlined$viewModels$default$17;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 174
    .line 175
    .line 176
    new-instance v4, Lteam/opay/pay/payment/tv/TVTopupActivity$special$$inlined$viewModels$default$18;

    .line 177
    .line 178
    invoke-direct {v4, v5, p0}, Lteam/opay/pay/payment/tv/TVTopupActivity$special$$inlined$viewModels$default$18;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 179
    .line 180
    .line 181
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 182
    .line 183
    .line 184
    iput-object v1, p0, Lteam/opay/pay/payment/tv/TVTopupActivity;->m:Lid8;

    .line 185
    .line 186
    const/4 v0, 0x1

    .line 187
    iput-boolean v0, p0, Lteam/opay/pay/payment/tv/TVTopupActivity;->r:Z

    .line 188
    .line 189
    return-void
.end method

.method public static final A1(Lteam/opay/pay/payment/tv/TVTopupActivity;Lkotlin/Unit;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->Q1()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    iget-object p0, p0, Log;->l:Lteam/opay/pay/payment/tv/TvAccountInputText;

    .line 9
    .line 10
    sget p1, Lteam/opay/pay/R$string;->osdk_please_enter_the_correct_number:I

    .line 11
    .line 12
    invoke-static {p1}, Ljmf;->k(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-virtual {p0, v0, p1}, Lteam/opay/pay/android/views/BaseAccountEditText;->N(ZLjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    return-object p0
.end method

.method public static final B0(Lteam/opay/pay/payment/tv/TVTopupActivity;Lteam/opay/pay/api/QueryVoucherItem;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Log;->n:Landroidx/core/widget/NestedScrollView;

    .line 6
    .line 7
    new-instance v1, Lkee;

    .line 8
    .line 9
    invoke-direct {v1, p1, p0}, Lkee;-><init>(Lteam/opay/pay/api/QueryVoucherItem;Lteam/opay/pay/payment/tv/TVTopupActivity;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    return-object p0
.end method

.method public static final B1(Lteam/opay/pay/payment/tv/TVTopupActivity;Z)Lkotlin/Unit;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    iget-boolean v1, p0, Lteam/opay/pay/payment/tv/TVTopupActivity;->p:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iput-boolean v0, p0, Lteam/opay/pay/payment/tv/TVTopupActivity;->p:Z

    .line 9
    .line 10
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    sget-object p1, Lse8;->a:Lse8;

    .line 17
    .line 18
    const-string v2, "TV_userID_click"

    .line 19
    .line 20
    new-array v3, v0, [Lkotlin/Pair;

    .line 21
    .line 22
    invoke-virtual {p1, v2, v3}, Lse8;->c(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-object p1, p1, Log;->l:Lteam/opay/pay/payment/tv/TvAccountInputText;

    .line 30
    .line 31
    const/4 v2, 0x2

    .line 32
    invoke-static {p1, v0, v1, v2, v1}, Lteam/opay/pay/android/views/BaseAccountEditText;->O(Lteam/opay/pay/android/views/BaseAccountEditText;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    iget-object p1, p0, Lteam/opay/pay/payment/tv/TVTopupActivity;->q:Lteam/opay/pay/android/views/AmountInputBusnissUtils;

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    invoke-virtual {p1}, Lteam/opay/pay/android/views/AmountInputBusnissUtils;->i()Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    move-object p1, v1

    .line 46
    :goto_0
    sget-object v0, Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;->STATUS_NONE:Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;

    .line 47
    .line 48
    if-eq p1, v0, :cond_3

    .line 49
    .line 50
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->p0()Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_7

    .line 59
    .line 60
    :cond_3
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iget-object v0, v0, Log;->l:Lteam/opay/pay/payment/tv/TvAccountInputText;

    .line 69
    .line 70
    invoke-virtual {v0}, Lteam/opay/pay/android/views/BaseAccountEditText;->getInputText()Lteam/opay/pay/android/views/KeyboardEditText;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    :cond_4
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p1, v0}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->k0(Ljava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-eqz p1, :cond_6

    .line 89
    .line 90
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p1}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->j0()Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-eqz p1, :cond_5

    .line 99
    .line 100
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->i1()V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_5
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    iget-object p1, p1, Log;->l:Lteam/opay/pay/payment/tv/TvAccountInputText;

    .line 109
    .line 110
    sget v0, Lteam/opay/pay/R$string;->osdk_please_enter_the_correct_number:I

    .line 111
    .line 112
    invoke-static {v0}, Ljmf;->k(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    const/4 v1, 0x1

    .line 117
    invoke-virtual {p1, v1, v0}, Lteam/opay/pay/android/views/BaseAccountEditText;->N(ZLjava/lang/String;)V

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_6
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->Z1()V

    .line 122
    .line 123
    .line 124
    :cond_7
    :goto_1
    invoke-direct {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->k2()V

    .line 125
    .line 126
    .line 127
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 128
    .line 129
    return-object p0
.end method

.method public static final C0(Lteam/opay/pay/api/QueryVoucherItem;Lteam/opay/pay/payment/tv/TVTopupActivity;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/api/QueryVoucherItem;->actualProviderIdList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/pay/api/QueryVoucherItem;->getVoucherUrl()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    const-string p0, ""

    .line 18
    .line 19
    :cond_0
    invoke-static {p0}, Lkotlin/text/StringsKt;->q1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-static {p1, p0}, Lkmf;->E(Landroid/content/Context;Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    goto :goto_3

    .line 31
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/api/QueryVoucherItem;->actualProviderIdList()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    const/4 v2, 0x0

    .line 44
    if-eqz v1, :cond_4

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    move-object v3, v1

    .line 51
    check-cast v3, Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p1}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v4}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->S()Lteam/opay/pay/payment/tv/TvProviderInfo;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    if-eqz v4, :cond_3

    .line 62
    .line 63
    invoke-virtual {v4}, Lteam/opay/pay/payment/tv/TvProviderInfo;->m()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    goto :goto_0

    .line 68
    :cond_3
    move-object v4, v2

    .line 69
    :goto_0
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-eqz v3, :cond_2

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_4
    move-object v1, v2

    .line 77
    :goto_1
    check-cast v1, Ljava/lang/String;

    .line 78
    .line 79
    if-eqz v1, :cond_6

    .line 80
    .line 81
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_5

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_5
    invoke-virtual {p0}, Lteam/opay/pay/api/QueryVoucherItem;->getPayAmount()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-virtual {p1, p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->O1(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_6
    :goto_2
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->K0(Lteam/opay/pay/api/QueryVoucherItem;)I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    const/4 v1, 0x0

    .line 104
    const/4 v3, 0x2

    .line 105
    invoke-static {p1, v0, v1, v3, v2}, Lteam/opay/pay/payment/tv/TVTopupActivity;->U1(Lteam/opay/pay/payment/tv/TVTopupActivity;IZILjava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Lteam/opay/pay/api/QueryVoucherItem;->getPayAmount()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-virtual {p1, p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->O1(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    :goto_3
    return-void
.end method

.method public static final C1(Lteam/opay/pay/payment/tv/TVTopupActivity;Lteam/opay/pay/payment/tv/TvProduct;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lteam/opay/pay/payment/tv/TVTopupActivity;->c2(Lteam/opay/pay/payment/tv/TvProduct;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method public static synthetic D(Lteam/opay/pay/payment/tv/TVTopupActivity;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/tv/TVTopupActivity;->G1(Lteam/opay/pay/payment/tv/TVTopupActivity;Ljava/lang/Boolean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final D1(Lteam/opay/pay/payment/tv/TVTopupActivity;Lteam/opay/pay/payment/tv/TvProduct;)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->E0()V

    .line 4
    .line 5
    .line 6
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method public static synthetic E(Lteam/opay/pay/payment/tv/TVTopupActivity;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/tv/TVTopupActivity;->p1(Lteam/opay/pay/payment/tv/TVTopupActivity;Lkotlin/Pair;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final E1(Lteam/opay/pay/payment/tv/TVTopupActivity;Lkotlin/Unit;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Log;->l:Lteam/opay/pay/payment/tv/TvAccountInputText;

    .line 6
    .line 7
    invoke-virtual {p0}, Lteam/opay/pay/android/views/BaseAccountEditText;->getInputText()Lteam/opay/pay/android/views/KeyboardEditText;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-static {p0}, Lpf5;->b(Landroid/widget/EditText;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p0}, Lli2;->h(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 20
    .line 21
    return-object p0
.end method

.method public static synthetic F(Lteam/opay/pay/payment/tv/TVTopupActivity;Lteam/opay/pay/api/QueryVoucherItem;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/tv/TVTopupActivity;->R0(Lteam/opay/pay/payment/tv/TVTopupActivity;Lteam/opay/pay/api/QueryVoucherItem;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final F1(Lteam/opay/pay/payment/tv/TVTopupActivity;Lteam/opay/pay/payment/betting/NewUserTaskRsp;)Lkotlin/Unit;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p1, p1, Log;->E:Landroid/widget/FrameLayout;

    .line 6
    .line 7
    const-string v0, "vNewUserTask"

    .line 8
    .line 9
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->I0()Lteam/opay/pay/payment/betting/LifeCommonViewModel;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v1, v1, Log;->F:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 29
    .line 30
    const-string v2, "vRoot"

    .line 31
    .line 32
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0, v1}, Lteam/opay/pay/payment/betting/LifeCommonViewModel;->L(Landroid/view/Window;Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    sget p1, Lteam/opay/pay/R$id;->vNewUserTask:I

    .line 39
    .line 40
    sget-object v0, Lteam/opay/pay/payment/betting/NewUserTaskFragment;->n:Lteam/opay/pay/payment/betting/NewUserTaskFragment$Companion;

    .line 41
    .line 42
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->TV:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 43
    .line 44
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Lteam/opay/pay/payment/betting/NewUserTaskFragment$Companion;->a(Ljava/lang/String;)Lteam/opay/pay/payment/betting/NewUserTaskFragment;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {p0, p1, v0}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 53
    .line 54
    .line 55
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 56
    .line 57
    return-object p0
.end method

.method public static synthetic G(Lteam/opay/pay/payment/tv/TVTopupActivity;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/tv/TVTopupActivity;->r1(Lteam/opay/pay/payment/tv/TVTopupActivity;Lkotlin/Pair;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final G1(Lteam/opay/pay/payment/tv/TVTopupActivity;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget v0, Lteam/opay/pay/R$id;->vNewUserTask:I

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->k0(I)Landroidx/fragment/app/Fragment;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-static {p0, p1}, Lteam/opay/pay/base/FragmentKt;->s(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/Fragment;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-direct {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->I0()Lteam/opay/pay/payment/betting/LifeCommonViewModel;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v1, v1, Log;->F:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 29
    .line 30
    const-string v2, "vRoot"

    .line 31
    .line 32
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0, v1}, Lteam/opay/pay/payment/betting/LifeCommonViewModel;->K(Landroid/view/Window;Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    iget-object p0, p0, Log;->E:Landroid/widget/FrameLayout;

    .line 43
    .line 44
    const-string p1, "vNewUserTask"

    .line 45
    .line 46
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const/16 p1, 0x8

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 55
    .line 56
    return-object p0
.end method

.method public static synthetic H(Lteam/opay/pay/payment/tv/TVTopupActivity;ZI)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/payment/tv/TVTopupActivity;->U0(Lteam/opay/pay/payment/tv/TVTopupActivity;ZI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic I(Lteam/opay/pay/payment/tv/TVTopupActivity;Lteam/opay/pay/payment/tv/TvProduct;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/tv/TVTopupActivity;->C1(Lteam/opay/pay/payment/tv/TVTopupActivity;Lteam/opay/pay/payment/tv/TvProduct;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final I0()Lteam/opay/pay/payment/betting/LifeCommonViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/tv/TVTopupActivity;->m:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/payment/betting/LifeCommonViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic J(Lteam/opay/pay/payment/tv/TVTopupActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->S0(Lteam/opay/pay/payment/tv/TVTopupActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final J0()Lteam/opay/pay/opay/PaymentViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/tv/TVTopupActivity;->k:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/opay/PaymentViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic K(Lteam/opay/pay/payment/tv/TVTopupActivity;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/tv/TVTopupActivity;->o1(Lteam/opay/pay/payment/tv/TVTopupActivity;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic L(Lteam/opay/pay/payment/tv/TVTopupActivity;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/tv/TVTopupActivity;->T0(Lteam/opay/pay/payment/tv/TVTopupActivity;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final L1(Lteam/opay/pay/payment/tv/TVTopupActivity;Lteam/opay/pay/cashier/LifePreOrder;Lteam/opay/pay/cashier/OrderInfo;)Lkotlin/Unit;
    .locals 13

    .line 1
    new-instance v0, Lteam/opay/pay/cashier/PaymentTask;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lteam/opay/pay/cashier/PaymentTask;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lteam/opay/pay/cashier/LifePreOrder;->getServiceType()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {p1}, Lteam/opay/pay/cashier/LifePreOrder;->getProviderId()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    invoke-virtual {p2}, Lteam/opay/pay/cashier/OrderInfo;->getCouponId()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v3, v1

    .line 23
    :goto_0
    const-string v5, ""

    .line 24
    .line 25
    if-nez v3, :cond_1

    .line 26
    .line 27
    move-object v3, v5

    .line 28
    :cond_1
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    if-nez v6, :cond_2

    .line 33
    .line 34
    invoke-virtual {p1}, Lteam/opay/pay/cashier/LifePreOrder;->getVoucherId()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    if-nez v3, :cond_2

    .line 39
    .line 40
    move-object v3, v5

    .line 41
    :cond_2
    move-object v6, v3

    .line 42
    invoke-direct {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->J0()Lteam/opay/pay/opay/PaymentViewModel;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v3, p1}, Lteam/opay/pay/opay/PaymentViewModel;->Q(Lteam/opay/pay/cashier/LifePreOrder;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    if-eqz p2, :cond_3

    .line 51
    .line 52
    invoke-virtual {p2}, Lteam/opay/pay/cashier/OrderInfo;->getOrderNo()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    :cond_3
    if-nez v1, :cond_4

    .line 57
    .line 58
    move-object v3, v5

    .line 59
    goto :goto_1

    .line 60
    :cond_4
    move-object v3, v1

    .line 61
    :goto_1
    new-instance p2, Lteam/opay/swarmfoundation/payment/PayInput;

    .line 62
    .line 63
    const/16 v10, 0xd0

    .line 64
    .line 65
    const/4 v11, 0x0

    .line 66
    const/4 v8, 0x0

    .line 67
    const/4 v9, 0x0

    .line 68
    const/4 v12, 0x0

    .line 69
    move-object v1, p2

    .line 70
    move-object v5, v6

    .line 71
    move-object v6, v8

    .line 72
    move v8, v9

    .line 73
    move-object v9, v12

    .line 74
    invoke-direct/range {v1 .. v11}, Lteam/opay/swarmfoundation/payment/PayInput;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Lteam/opay/pay/cashier/LifePreOrder;->getPaymentAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    const/16 v5, 0xc

    .line 82
    .line 83
    const/4 v6, 0x0

    .line 84
    const/4 v3, 0x0

    .line 85
    const/4 v4, 0x0

    .line 86
    invoke-static/range {v0 .. v6}, Lteam/opay/pay/cashier/PaymentTask;->c(Lteam/opay/pay/cashier/PaymentTask;Lteam/opay/swarmfoundation/payment/PayInput;Lteam/opay/core/api/GraphQL$CurrencyAmount;ZZILjava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->D()V

    .line 94
    .line 95
    .line 96
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 97
    .line 98
    return-object p0
.end method

.method public static synthetic M(Lteam/opay/pay/payment/tv/TVTopupActivity;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/tv/TVTopupActivity;->f2(Lteam/opay/pay/payment/tv/TVTopupActivity;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic N(Lteam/opay/pay/payment/tv/TVTopupActivity;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/tv/TVTopupActivity;->B1(Lteam/opay/pay/payment/tv/TVTopupActivity;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final N0()Lteam/opay/pay/coupon/OpayVoucherViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/tv/TVTopupActivity;->l:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/coupon/OpayVoucherViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic N1(Lteam/opay/pay/payment/tv/TVTopupActivity;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M1(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic O(Lteam/opay/pay/payment/tv/TVTopupActivity;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/tv/TVTopupActivity;->x1(Lteam/opay/pay/payment/tv/TVTopupActivity;Ljava/lang/Boolean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final O0()V
    .locals 3

    .line 1
    sget-object v0, Lxt9;->a:Lxt9;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/pay/home/Service;->TV:Lteam/opay/pay/home/Service;

    .line 4
    .line 5
    invoke-virtual {v1}, Lteam/opay/pay/home/Service;->getAction()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->S()Lteam/opay/pay/payment/tv/TvProviderInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v2}, Lteam/opay/pay/payment/tv/TvProviderInfo;->m()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v2, 0x0

    .line 25
    :goto_0
    invoke-virtual {v0, v1, v2}, Lxt9;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    invoke-virtual {p0, v0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->O1(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic P(Lteam/opay/pay/payment/tv/TVTopupActivity;Lteam/opay/pay/api/QueryVoucherItem;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/tv/TVTopupActivity;->B0(Lteam/opay/pay/payment/tv/TVTopupActivity;Lteam/opay/pay/api/QueryVoucherItem;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Q(Lteam/opay/pay/payment/tv/TVTopupActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->Y0(Lteam/opay/pay/payment/tv/TVTopupActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic R(Lteam/opay/pay/payment/tv/TVTopupActivity;Lteam/opay/pay/cashier/LifePreOrder;Lteam/opay/pay/cashier/OrderInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L1(Lteam/opay/pay/payment/tv/TVTopupActivity;Lteam/opay/pay/cashier/LifePreOrder;Lteam/opay/pay/cashier/OrderInfo;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final R0(Lteam/opay/pay/payment/tv/TVTopupActivity;Lteam/opay/pay/api/QueryVoucherItem;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->N0()Lteam/opay/pay/coupon/OpayVoucherViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lteam/opay/pay/coupon/OpayVoucherViewModel;->A()Landroidx/lifecycle/MutableLiveData;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p0
.end method

.method public static synthetic S(Lteam/opay/pay/payment/tv/TVTopupActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/tv/TVTopupActivity;->s1(Lteam/opay/pay/payment/tv/TVTopupActivity;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final S0(Lteam/opay/pay/payment/tv/TVTopupActivity;)Lkotlin/Unit;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-static {p0, v2, v0, v1}, Lteam/opay/pay/payment/tv/TVTopupActivity;->N1(Lteam/opay/pay/payment/tv/TVTopupActivity;ZILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    return-object p0
.end method

.method public static synthetic T(Lteam/opay/pay/payment/tv/TVTopupActivity;Lkotlin/Unit;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/tv/TVTopupActivity;->E1(Lteam/opay/pay/payment/tv/TVTopupActivity;Lkotlin/Unit;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final T0(Lteam/opay/pay/payment/tv/TVTopupActivity;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->K()Lteam/opay/pay/util/SingleLiveEvent;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p0
.end method

.method public static synthetic U(Lteam/opay/pay/payment/tv/TVTopupActivity;Lkotlin/Unit;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/tv/TVTopupActivity;->t1(Lteam/opay/pay/payment/tv/TVTopupActivity;Lkotlin/Unit;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final U0(Lteam/opay/pay/payment/tv/TVTopupActivity;ZI)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-nez p2, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->M()Lteam/opay/pay/util/SingleLiveEvent;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic U1(Lteam/opay/pay/payment/tv/TVTopupActivity;IZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/tv/TVTopupActivity;->T1(IZ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic V(Lteam/opay/pay/payment/tv/TVTopupActivity;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/tv/TVTopupActivity;->l1(Lteam/opay/pay/payment/tv/TVTopupActivity;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final V0(Lteam/opay/pay/payment/tv/TVTopupActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->E0()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static synthetic W(Lteam/opay/pay/payment/tv/TVTopupActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->m1(Lteam/opay/pay/payment/tv/TVTopupActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final W0(Lteam/opay/pay/payment/tv/TVTopupActivity;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->H0()Lteam/opay/pay/payment/BeneficiaryViewModel;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->f0(Lteam/opay/pay/payment/BeneficiaryViewModel;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->H0()Lteam/opay/pay/payment/BeneficiaryViewModel;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1, p0}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->v0(Lteam/opay/pay/payment/BeneficiaryViewModel;Lag8;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 27
    .line 28
    return-object p0
.end method

.method public static synthetic X(Lteam/opay/pay/payment/tv/TVTopupActivity;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/tv/TVTopupActivity;->y1(Lteam/opay/pay/payment/tv/TVTopupActivity;Ljava/lang/Boolean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final X0(Lteam/opay/pay/payment/tv/TVTopupActivity;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Log;->e:Lcom/google/android/material/button/MaterialButton;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v0, v0, Lteam/opay/pay/payment/tv/TvProduct;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v0, v0, Log;->e:Lcom/google/android/material/button/MaterialButton;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "null cannot be cast to non-null type team.opay.pay.payment.tv.TvProduct"

    .line 26
    .line 27
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    check-cast v0, Lteam/opay/pay/payment/tv/TvProduct;

    .line 31
    .line 32
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0, v0}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->q0(Lteam/opay/pay/payment/tv/TvProduct;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 40
    .line 41
    return-object p0
.end method

.method public static synthetic Y(Lteam/opay/pay/payment/tv/TVTopupActivity;Lteam/opay/pay/payment/tv/TvProduct;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/payment/tv/TVTopupActivity;->d2(Lteam/opay/pay/payment/tv/TVTopupActivity;Lteam/opay/pay/payment/tv/TvProduct;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final Y0(Lteam/opay/pay/payment/tv/TVTopupActivity;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->E()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lteam/opay/pay/payment/tv/TVTopupActivity;->p:Z

    .line 16
    .line 17
    sget-object v0, Lteam/opay/pay/payment/RecentRechargeBeneficiaryActivity;->g:Lteam/opay/pay/payment/RecentRechargeBeneficiaryActivity$Companion;

    .line 18
    .line 19
    const-string v1, "tv"

    .line 20
    .line 21
    invoke-virtual {v0, p0, v1}, Lteam/opay/pay/payment/RecentRechargeBeneficiaryActivity$Companion;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    return-object p0
.end method

.method public static final Y1(Lteam/opay/pay/payment/tv/TVTopupActivity;)Lkotlin/Unit;
    .locals 7

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/tv/TVTopupActivity;->q:Lteam/opay/pay/android/views/AmountInputBusnissUtils;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;->STATUS_NONE:Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;

    .line 6
    .line 7
    const/16 v5, 0xc

    .line 8
    .line 9
    const/4 v6, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    invoke-static/range {v0 .. v6}, Lteam/opay/pay/android/views/AmountInputBusnissUtils;->l(Lteam/opay/pay/android/views/AmountInputBusnissUtils;Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v0, v0, Log;->l:Lteam/opay/pay/payment/tv/TvAccountInputText;

    .line 21
    .line 22
    invoke-virtual {v0}, Lteam/opay/pay/android/views/BaseAccountEditText;->w()Lkotlin/Unit;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->g1()V

    .line 26
    .line 27
    .line 28
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    .line 30
    return-object p0
.end method

.method public static synthetic Z(Lteam/opay/pay/payment/tv/TVTopupActivity;Lteam/opay/pay/cashier/LifePreOrder;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/tv/TVTopupActivity;->u1(Lteam/opay/pay/payment/tv/TVTopupActivity;Lteam/opay/pay/cashier/LifePreOrder;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final Z0(Lteam/opay/pay/payment/tv/TVTopupActivity;Lteam/opay/pay/android/views/KeyboardEditText;Landroid/text/Editable;)Lkotlin/Unit;
    .locals 8

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    :cond_0
    const-string v0, ""

    .line 10
    .line 11
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, v0}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->w0(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->U()Lteam/opay/pay/util/SingleLiveEvent;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->g2(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    iget-object v1, p0, Lteam/opay/pay/payment/tv/TVTopupActivity;->q:Lteam/opay/pay/android/views/AmountInputBusnissUtils;

    .line 41
    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    sget-object v2, Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;->STATUS_NONE:Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;

    .line 45
    .line 46
    const/16 v6, 0xc

    .line 47
    .line 48
    const/4 v7, 0x0

    .line 49
    const/4 v3, 0x0

    .line 50
    const/4 v4, 0x0

    .line 51
    const/4 v5, 0x0

    .line 52
    invoke-static/range {v1 .. v7}, Lteam/opay/pay/android/views/AmountInputBusnissUtils;->l(Lteam/opay/pay/android/views/AmountInputBusnissUtils;Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :cond_3
    if-eqz p2, :cond_4

    .line 56
    .line 57
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_5

    .line 62
    .line 63
    :cond_4
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iget-object p1, p1, Log;->l:Lteam/opay/pay/payment/tv/TvAccountInputText;

    .line 68
    .line 69
    const/4 p2, 0x0

    .line 70
    invoke-virtual {p1, p2}, Lteam/opay/pay/android/views/BaseAccountEditText;->setError(Z)V

    .line 71
    .line 72
    .line 73
    :cond_5
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p1}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->u0()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iget-object p1, p1, Log;->i:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 85
    .line 86
    const-string p2, "groupPhonePackage"

    .line 87
    .line 88
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    const/16 v0, 0x8

    .line 96
    .line 97
    if-nez p1, :cond_6

    .line 98
    .line 99
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    iget-object p1, p1, Log;->i:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 104
    .line 105
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 109
    .line 110
    .line 111
    :cond_6
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    iget-object p1, p1, Log;->r:Landroid/widget/TextView;

    .line 116
    .line 117
    const-string p2, "tvNoOldPackage"

    .line 118
    .line 119
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-nez p1, :cond_7

    .line 127
    .line 128
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    iget-object p1, p1, Log;->r:Landroid/widget/TextView;

    .line 133
    .line 134
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 138
    .line 139
    .line 140
    :cond_7
    invoke-direct {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->k2()V

    .line 141
    .line 142
    .line 143
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 144
    .line 145
    return-object p0
.end method

.method public static synthetic a0(Lteam/opay/pay/payment/tv/TVTopupActivity;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/tv/TVTopupActivity;->w1(Lteam/opay/pay/payment/tv/TVTopupActivity;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final a1(Lteam/opay/pay/android/views/KeyboardEditText;I)Z
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    invoke-static {p0}, Lli2;->f(Landroid/view/View;)V

    .line 5
    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method private final a2(Ljava/lang/String;)V
    .locals 12

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    :goto_0
    move-object v3, p1

    .line 11
    goto :goto_2

    .line 12
    :cond_1
    :goto_1
    sget p1, Lteam/opay/pay/R$string;->osdk_service_unavailable_tips:I

    .line 13
    .line 14
    invoke-static {p1}, Ljmf;->k(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    :goto_2
    sget-object p1, Lteam/opay/pay/wallet/OneButtonDialog;->p:Lteam/opay/pay/wallet/OneButtonDialog$Companion;

    .line 20
    .line 21
    new-instance v11, Lteam/opay/pay/wallet/OneButtonDialogData;

    .line 22
    .line 23
    sget v0, Lteam/opay/pay/R$string;->osdk_got_it:I

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    const-string v0, "getString(...)"

    .line 30
    .line 31
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/16 v9, 0xf3

    .line 35
    .line 36
    const/4 v10, 0x0

    .line 37
    const/4 v1, 0x0

    .line 38
    const/4 v2, 0x0

    .line 39
    const/4 v5, 0x0

    .line 40
    const/4 v6, 0x0

    .line 41
    const/4 v7, 0x0

    .line 42
    const/4 v8, 0x0

    .line 43
    move-object v0, v11

    .line 44
    invoke-direct/range {v0 .. v10}, Lteam/opay/pay/wallet/OneButtonDialogData;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v11}, Lteam/opay/pay/wallet/OneButtonDialog$Companion;->a(Lteam/opay/pay/wallet/OneButtonDialogData;)Lteam/opay/pay/wallet/OneButtonDialog;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {p0, p1}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public static synthetic b0(Lteam/opay/pay/payment/tv/TVTopupActivity;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/tv/TVTopupActivity;->v1(Lteam/opay/pay/payment/tv/TVTopupActivity;Ljava/lang/Boolean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final b1(Lteam/opay/pay/payment/tv/TVTopupActivity;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->F0()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, v1}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->y0(Z)V

    .line 20
    .line 21
    .line 22
    sget-object v0, Lteam/opay/pay/payment/tv/TvProviderFragment;->n:Lteam/opay/pay/payment/tv/TvProviderFragment$Companion;

    .line 23
    .line 24
    invoke-virtual {v0}, Lteam/opay/pay/payment/tv/TvProviderFragment$Companion;->a()Lteam/opay/pay/payment/tv/TvProviderFragment;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->S()Lteam/opay/pay/payment/tv/TvProviderInfo;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Lteam/opay/pay/payment/tv/TvProviderFragment;->U(Lteam/opay/pay/payment/tv/TvProviderInfo;)V

    .line 37
    .line 38
    .line 39
    new-instance v1, Lhee;

    .line 40
    .line 41
    invoke-direct {v1, p0}, Lhee;-><init>(Lteam/opay/pay/payment/tv/TVTopupActivity;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lteam/opay/pay/payment/tv/TvProviderFragment;->T(Lkotlin/jvm/functions/Function2;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p0, v0}, Lteam/opay/pay/base/FragmentKt;->F(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseSheetFragmentV2;)V

    .line 48
    .line 49
    .line 50
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 51
    .line 52
    return-object p0

    .line 53
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 54
    .line 55
    return-object p0
.end method

.method public static synthetic c0(Lteam/opay/pay/payment/tv/TVTopupActivity;Lteam/opay/pay/payment/tv/TvProviderInfo;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/payment/tv/TVTopupActivity;->c1(Lteam/opay/pay/payment/tv/TVTopupActivity;Lteam/opay/pay/payment/tv/TvProviderInfo;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final c1(Lteam/opay/pay/payment/tv/TVTopupActivity;Lteam/opay/pay/payment/tv/TvProviderInfo;I)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "<unused var>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lteam/opay/pay/payment/tv/TVTopupActivity;->r:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->y0(Z)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-static {p0, p2, p1, v0, v1}, Lteam/opay/pay/payment/tv/TVTopupActivity;->U1(Lteam/opay/pay/payment/tv/TVTopupActivity;IZILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p0
.end method

.method public static synthetic d0(Lteam/opay/pay/payment/tv/TVTopupActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->X0(Lteam/opay/pay/payment/tv/TVTopupActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final d1()Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :goto_0
    move-object v4, v0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    sget-object v0, Lteam/opay/pay/home/Service;->TV:Lteam/opay/pay/home/Service;

    .line 26
    .line 27
    invoke-virtual {v0}, Lteam/opay/pay/home/Service;->getAction()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    goto :goto_0

    .line 32
    :goto_1
    sget-object v1, Lql8;->a:Lql8;

    .line 33
    .line 34
    const/4 v5, 0x2

    .line 35
    const/4 v6, 0x0

    .line 36
    const/4 v3, 0x0

    .line 37
    move-object v2, p0

    .line 38
    invoke-static/range {v1 .. v6}, Lql8;->j(Lql8;Landroidx/fragment/app/FragmentActivity;ZLjava/lang/String;ILjava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    return v0
.end method

.method public static final d2(Lteam/opay/pay/payment/tv/TVTopupActivity;Lteam/opay/pay/payment/tv/TvProduct;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "m"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->A0(Lteam/opay/pay/payment/tv/TvProduct;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method

.method public static synthetic e0(Lteam/opay/pay/payment/tv/TVTopupActivity;Lteam/opay/pay/payment/betting/NewUserTaskRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/tv/TVTopupActivity;->F1(Lteam/opay/pay/payment/tv/TVTopupActivity;Lteam/opay/pay/payment/betting/NewUserTaskRsp;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final e2(Lteam/opay/pay/payment/tv/TVTopupActivity;Lteam/opay/pay/payment/tv/TvProduct;)Lkotlin/Unit;
    .locals 3

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Lkotlin/Pair;

    .line 5
    .line 6
    const-string v2, "tv_accountinfo_confirm"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/4 v0, 0x0

    .line 16
    const/4 v1, 0x2

    .line 17
    invoke-static {p0, p1, v0, v1, v0}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->B0(Lteam/opay/pay/payment/tv/TVTopupViewModel;Lteam/opay/pay/payment/tv/TvProduct;Ljava/lang/String;ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    return-object p0
.end method

.method public static synthetic f0(Lteam/opay/pay/payment/tv/TVTopupActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->l2(Lteam/opay/pay/payment/tv/TVTopupActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final f1(Ljava/lang/String;Lteam/opay/pay/payment/tv/TVTopupActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 5

    .line 1
    if-eqz p6, :cond_6

    .line 2
    .line 3
    invoke-virtual {p6}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p6

    .line 7
    check-cast p6, Lteam/opay/odialog/net/ADListResponse;

    .line 8
    .line 9
    if-eqz p6, :cond_6

    .line 10
    .line 11
    invoke-virtual {p6}, Lteam/opay/odialog/net/ADListResponse;->getAds()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p6

    .line 15
    if-eqz p6, :cond_6

    .line 16
    .line 17
    invoke-interface {p6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p6

    .line 21
    :cond_0
    :goto_0
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_6

    .line 26
    .line 27
    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lteam/opay/odialog/net/ADListItem;

    .line 32
    .line 33
    invoke-virtual {v0}, Lteam/opay/odialog/net/ADListItem;->getAdList()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    invoke-virtual {v0}, Lteam/opay/odialog/net/ADListItem;->getAdpCode()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    const/4 v4, 0x0

    .line 48
    if-eqz v3, :cond_2

    .line 49
    .line 50
    invoke-virtual {p1}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iget-object v1, v1, Log;->p:Lteam/opay/pay/wallet/view/AnnouncementView;

    .line 55
    .line 56
    invoke-virtual {v1, v0}, Lteam/opay/pay/wallet/view/AnnouncementView;->d(Lteam/opay/odialog/net/ADListItem;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    invoke-virtual {p1}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iget-object v1, v1, Log;->p:Lteam/opay/pay/wallet/view/AnnouncementView;

    .line 65
    .line 66
    const-string v2, "tvAv"

    .line 67
    .line 68
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    const/16 v4, 0x8

    .line 75
    .line 76
    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_3

    .line 85
    .line 86
    invoke-virtual {p1}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iget-object v0, v0, Log;->m:Lteam/opay/pay/ad/OpayAdBannerView;

    .line 91
    .line 92
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1}, Lteam/opay/pay/ad/OpayAdBannerView;->b(Ljava/util/List;)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_3
    invoke-static {v2, p3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_4

    .line 107
    .line 108
    invoke-virtual {p1}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    iget-object v0, v0, Log;->s:Lteam/opay/pay/ad/OpayAdBannerView;

    .line 113
    .line 114
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    iget-object v2, v2, Log;->z:Landroid/view/View;

    .line 125
    .line 126
    const-string v3, "tvSpaceMidBanner"

    .line 127
    .line 128
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-static {v2}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v1, v4}, Lteam/opay/pay/ad/OpayAdBannerView;->d(Ljava/util/List;Z)V

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_4
    invoke-static {v2, p4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_5

    .line 143
    .line 144
    invoke-virtual {p1}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    iget-object v0, v0, Log;->h:Landroid/widget/FrameLayout;

    .line 149
    .line 150
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 154
    .line 155
    .line 156
    sget v0, Lteam/opay/pay/R$id;->f_tv_more_banner:I

    .line 157
    .line 158
    sget-object v2, Lteam/opay/pay/payment/betting/MoreBannerListFragment;->q:Lteam/opay/pay/payment/betting/MoreBannerListFragment$Companion;

    .line 159
    .line 160
    invoke-virtual {v2, v1, p4}, Lteam/opay/pay/payment/betting/MoreBannerListFragment$Companion;->a(Ljava/util/List;Ljava/lang/String;)Lteam/opay/pay/payment/betting/MoreBannerListFragment;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-static {p1, v0, v1}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 165
    .line 166
    .line 167
    goto/16 :goto_0

    .line 168
    .line 169
    :cond_5
    invoke-static {v2, p5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    if-eqz v0, :cond_0

    .line 174
    .line 175
    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    check-cast v0, Lteam/opay/odialog/net/AdDataItem;

    .line 180
    .line 181
    if-eqz v0, :cond_0

    .line 182
    .line 183
    sget-object v1, Lteam/opay/pay/ad/AdConfigDialogManager;->a:Lteam/opay/pay/ad/AdConfigDialogManager$Companion;

    .line 184
    .line 185
    invoke-virtual {v1}, Lteam/opay/pay/ad/AdConfigDialogManager$Companion;->a()Lteam/opay/pay/ad/AdConfigDialogManager;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-virtual {v1, p1, v0}, Lteam/opay/pay/ad/AdConfigDialogManager;->i(Lteam/opay/pay/android/BaseShowAdActivity;Lteam/opay/odialog/net/AdDataItem;)V

    .line 190
    .line 191
    .line 192
    goto/16 :goto_0

    .line 193
    .line 194
    :cond_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 195
    .line 196
    return-object p0
.end method

.method public static final f2(Lteam/opay/pay/payment/tv/TVTopupActivity;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p1, Lteam/opay/pay/payment/tv/TvProduct;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-static {p0, p1, v0, v1, v0}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->B0(Lteam/opay/pay/payment/tv/TVTopupViewModel;Lteam/opay/pay/payment/tv/TvProduct;Ljava/lang/String;ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0
.end method

.method public static synthetic g0(Lteam/opay/pay/payment/tv/TVTopupActivity;Lteam/opay/pay/payment/tv/TvAccountV3Data;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/tv/TVTopupActivity;->n1(Lteam/opay/pay/payment/tv/TVTopupActivity;Lteam/opay/pay/payment/tv/TvAccountV3Data;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic h0(Lteam/opay/pay/payment/tv/TVTopupActivity;Lteam/opay/pay/android/views/KeyboardEditText;Landroid/text/Editable;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/payment/tv/TVTopupActivity;->Z0(Lteam/opay/pay/payment/tv/TVTopupActivity;Lteam/opay/pay/android/views/KeyboardEditText;Landroid/text/Editable;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i0(Lteam/opay/pay/payment/tv/TVTopupActivity;)Log;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->m2(Lteam/opay/pay/payment/tv/TVTopupActivity;)Log;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final i2(Lteam/opay/pay/payment/tv/TVTopupActivity;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->d1()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    const-string v0, "otravel://balance/entrance?key_select_code=TV&key_select_name=TV&key_select_service=TV"

    .line 11
    .line 12
    invoke-static {p0, v0}, Lkmf;->E(Landroid/content/Context;Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    return-object p0
.end method

.method private final initView()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Log;->l:Lteam/opay/pay/payment/tv/TvAccountInputText;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->P0()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v0, v0, Log;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 19
    .line 20
    const-string v1, "beneficiaryEntry"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Lpde;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lpde;-><init>(Lteam/opay/pay/payment/tv/TVTopupActivity;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v0, v0, Log;->l:Lteam/opay/pay/payment/tv/TvAccountInputText;

    .line 38
    .line 39
    invoke-virtual {v0}, Lteam/opay/pay/android/views/BaseAccountEditText;->getInputText()Lteam/opay/pay/android/views/KeyboardEditText;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    new-instance v1, Lrde;

    .line 46
    .line 47
    invoke-direct {v1, p0, v0}, Lrde;-><init>(Lteam/opay/pay/payment/tv/TVTopupActivity;Lteam/opay/pay/android/views/KeyboardEditText;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v1}, Lpf5;->a(Landroid/widget/EditText;Lkotlin/jvm/functions/Function1;)Landroid/text/TextWatcher;

    .line 51
    .line 52
    .line 53
    new-instance v1, Lsde;

    .line 54
    .line 55
    invoke-direct {v1, v0}, Lsde;-><init>(Lteam/opay/pay/android/views/KeyboardEditText;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lteam/opay/pay/android/views/KeyboardEditText;->d(Lkotlin/jvm/functions/Function1;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget-object v0, v0, Log;->o:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 66
    .line 67
    const-string v1, "serviceLayout"

    .line 68
    .line 69
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    new-instance v1, Lude;

    .line 73
    .line 74
    invoke-direct {v1, p0}, Lude;-><init>(Lteam/opay/pay/payment/tv/TVTopupActivity;)V

    .line 75
    .line 76
    .line 77
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget-object v0, v0, Log;->H:Lteam/opay/pay/coupon/OpayVoucherView;

    .line 85
    .line 86
    new-instance v1, Lvde;

    .line 87
    .line 88
    invoke-direct {v1, p0}, Lvde;-><init>(Lteam/opay/pay/payment/tv/TVTopupActivity;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Lteam/opay/pay/coupon/OpayVoucherView;->setGetVoucherSuccessCallback(Lkotlin/jvm/functions/Function0;)V

    .line 92
    .line 93
    .line 94
    new-instance v1, Lwde;

    .line 95
    .line 96
    invoke-direct {v1, p0}, Lwde;-><init>(Lteam/opay/pay/payment/tv/TVTopupActivity;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Lteam/opay/pay/coupon/OpayVoucherView;->setUseVoucherClickCallback(Lkotlin/jvm/functions/Function1;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    iget-object v0, v0, Log;->l:Lteam/opay/pay/payment/tv/TvAccountInputText;

    .line 107
    .line 108
    new-instance v1, Lxde;

    .line 109
    .line 110
    invoke-direct {v1, p0}, Lxde;-><init>(Lteam/opay/pay/payment/tv/TVTopupActivity;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1}, Lteam/opay/pay/android/views/BaseAccountEditText;->setInputFocusCallback(Lkotlin/jvm/functions/Function1;)V

    .line 114
    .line 115
    .line 116
    invoke-static {p0}, Lvp7;->b(Landroid/app/Activity;)Lvp7;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    new-instance v1, Lyde;

    .line 121
    .line 122
    invoke-direct {v1, p0}, Lyde;-><init>(Lteam/opay/pay/payment/tv/TVTopupActivity;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v1}, Lvp7;->g(Lvp7$a;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    iget-object v0, v0, Log;->l:Lteam/opay/pay/payment/tv/TvAccountInputText;

    .line 133
    .line 134
    invoke-virtual {v0}, Lteam/opay/pay/payment/tv/TvAccountInputText;->getBtnSearch()Lcom/google/android/material/button/MaterialButton;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    new-instance v1, Lzde;

    .line 139
    .line 140
    invoke-direct {v1, p0}, Lzde;-><init>(Lteam/opay/pay/payment/tv/TVTopupActivity;)V

    .line 141
    .line 142
    .line 143
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    iget-object v0, v0, Log;->l:Lteam/opay/pay/payment/tv/TvAccountInputText;

    .line 151
    .line 152
    invoke-virtual {v0}, Lteam/opay/pay/payment/tv/TvAccountInputText;->getBtnAdd()Landroidx/appcompat/widget/AppCompatImageView;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    new-instance v1, Laee;

    .line 157
    .line 158
    invoke-direct {v1, p0}, Laee;-><init>(Lteam/opay/pay/payment/tv/TVTopupActivity;)V

    .line 159
    .line 160
    .line 161
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    iget-object v0, v0, Log;->e:Lcom/google/android/material/button/MaterialButton;

    .line 169
    .line 170
    const-string v1, "btnRetake"

    .line 171
    .line 172
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    new-instance v1, Lqde;

    .line 176
    .line 177
    invoke-direct {v1, p0}, Lqde;-><init>(Lteam/opay/pay/payment/tv/TVTopupActivity;)V

    .line 178
    .line 179
    .line 180
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 181
    .line 182
    .line 183
    invoke-direct {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->I0()Lteam/opay/pay/payment/betting/LifeCommonViewModel;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->TV:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 188
    .line 189
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-virtual {v0, p0, v1}, Lteam/opay/pay/payment/betting/LifeCommonViewModel;->B0(Lag8;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    return-void
.end method

.method public static synthetic j0(Lteam/opay/pay/payment/tv/TVTopupActivity;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/tv/TVTopupActivity;->k1(Lteam/opay/pay/payment/tv/TVTopupActivity;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic k0(Lteam/opay/pay/payment/tv/TVTopupActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->Y1(Lteam/opay/pay/payment/tv/TVTopupActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final k1(Lteam/opay/pay/payment/tv/TVTopupActivity;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->b2()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private final k2()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Log;->l:Lteam/opay/pay/payment/tv/TvAccountInputText;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    sget v1, Lteam/opay/pay/R$mipmap;->osdk_ic_topup_close:I

    .line 14
    .line 15
    invoke-static {p0, v1}, Lzq2;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    new-instance v2, Lbee;

    .line 20
    .line 21
    invoke-direct {v2, p0}, Lbee;-><init>(Lteam/opay/pay/payment/tv/TVTopupActivity;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lteam/opay/pay/payment/tv/TvAccountInputText;->U(Landroid/graphics/drawable/Drawable;Lkotlin/jvm/functions/Function0;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v0}, Lteam/opay/pay/payment/tv/TvAccountInputText;->W()V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method

.method public static synthetic l0(Lteam/opay/pay/payment/tv/TVTopupActivity;Lkotlin/Unit;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/tv/TVTopupActivity;->z1(Lteam/opay/pay/payment/tv/TVTopupActivity;Lkotlin/Unit;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final l1(Lteam/opay/pay/payment/tv/TVTopupActivity;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 5

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->e()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/16 v1, -0x3ec

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lteam/opay/pay/payment/tv/TVTopupActivity;->n:Lteam/opay/pay/util/NetWorkReceiver;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Lgee;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lgee;-><init>(Lteam/opay/pay/payment/tv/TVTopupActivity;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p0, v0}, Lgm9;->b(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)Lteam/opay/pay/util/NetWorkReceiver;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lteam/opay/pay/payment/tv/TVTopupActivity;->n:Lteam/opay/pay/util/NetWorkReceiver;

    .line 28
    .line 29
    :cond_0
    sget-object v0, Lx7b;->a:Lx7b;

    .line 30
    .line 31
    const-string v1, "error_msg"

    .line 32
    .line 33
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v1, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v2, "error_code"

    .line 42
    .line 43
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-static {v2, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const/4 v3, 0x2

    .line 52
    new-array v3, v3, [Lkotlin/Pair;

    .line 53
    .line 54
    const/4 v4, 0x0

    .line 55
    aput-object v1, v3, v4

    .line 56
    .line 57
    const/4 v1, 0x1

    .line 58
    aput-object v2, v3, v1

    .line 59
    .line 60
    const-string v1, "tv_services"

    .line 61
    .line 62
    invoke-virtual {v0, v1, v3}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    if-nez p1, :cond_2

    .line 83
    .line 84
    sget p1, Lteam/opay/pay/R$string;->bad_gateway_error:I

    .line 85
    .line 86
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    const-string v0, "getString(...)"

    .line 91
    .line 92
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_2
    invoke-static {p0, p1}, Lkmf;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :cond_3
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 99
    .line 100
    return-object p0
.end method

.method public static final l2(Lteam/opay/pay/payment/tv/TVTopupActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Log;->l:Lteam/opay/pay/payment/tv/TvAccountInputText;

    .line 6
    .line 7
    invoke-virtual {p0}, Lteam/opay/pay/android/views/BaseAccountEditText;->w()Lkotlin/Unit;

    .line 8
    .line 9
    .line 10
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method

.method public static synthetic m0(Lteam/opay/pay/payment/tv/TVTopupActivity;Lteam/opay/pay/payment/tv/TvProduct;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/tv/TVTopupActivity;->e2(Lteam/opay/pay/payment/tv/TVTopupActivity;Lteam/opay/pay/payment/tv/TvProduct;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final m1(Lteam/opay/pay/payment/tv/TVTopupActivity;)Lkotlin/Unit;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-static {p0, v2, v0, v1}, Lteam/opay/pay/payment/tv/TVTopupActivity;->N1(Lteam/opay/pay/payment/tv/TVTopupActivity;ZILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    return-object p0
.end method

.method public static final m2(Lteam/opay/pay/payment/tv/TVTopupActivity;)Log;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Log;->inflate(Landroid/view/LayoutInflater;)Log;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static synthetic n0(Lteam/opay/pay/payment/tv/TVTopupActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->V0(Lteam/opay/pay/payment/tv/TVTopupActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final n1(Lteam/opay/pay/payment/tv/TVTopupActivity;Lteam/opay/pay/payment/tv/TvAccountV3Data;)Lkotlin/Unit;
    .locals 7

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/tv/TVTopupActivity;->q:Lteam/opay/pay/android/views/AmountInputBusnissUtils;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    sget-object v1, Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;->STATUS_SEARCH_SUCCESS:Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lteam/opay/pay/payment/tv/TvAccountV3Data;->a()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    if-nez p1, :cond_1

    .line 16
    .line 17
    const-string p1, ""

    .line 18
    .line 19
    :cond_1
    move-object v2, p1

    .line 20
    const/16 v5, 0xc

    .line 21
    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-static/range {v0 .. v6}, Lteam/opay/pay/android/views/AmountInputBusnissUtils;->l(Lteam/opay/pay/android/views/AmountInputBusnissUtils;Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_2
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->h1()V

    .line 29
    .line 30
    .line 31
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 32
    .line 33
    return-object p0
.end method

.method public static synthetic o0(Lteam/opay/pay/payment/tv/TVTopupActivity;Lkotlin/Unit;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/tv/TVTopupActivity;->A1(Lteam/opay/pay/payment/tv/TVTopupActivity;Lkotlin/Unit;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final o1(Lteam/opay/pay/payment/tv/TVTopupActivity;Z)Lkotlin/Unit;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->b2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lteam/opay/pay/payment/tv/TVTopupActivity;->q:Lteam/opay/pay/android/views/AmountInputBusnissUtils;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object v1, Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;->STATUS_SEARCHING:Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;

    .line 9
    .line 10
    const/16 v5, 0xc

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-static/range {v0 .. v6}, Lteam/opay/pay/android/views/AmountInputBusnissUtils;->l(Lteam/opay/pay/android/views/AmountInputBusnissUtils;Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 20
    .line 21
    return-object p0
.end method

.method public static synthetic p0(Lteam/opay/pay/payment/tv/TVTopupActivity;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/tv/TVTopupActivity;->q1(Lteam/opay/pay/payment/tv/TVTopupActivity;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final p1(Lteam/opay/pay/payment/tv/TVTopupActivity;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 8

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lteam/opay/pay/payment/tv/TVTopupActivity;->q:Lteam/opay/pay/android/views/AmountInputBusnissUtils;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    sget-object v2, Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;->STATUS_SEARCH_FAILED:Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;

    .line 11
    .line 12
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/String;

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    sget v0, Lteam/opay/pay/R$string;->tv_lookup_error:I

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v3, "getString(...)"

    .line 27
    .line 28
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    move-object v4, v0

    .line 32
    const/16 v6, 0x8

    .line 33
    .line 34
    const/4 v7, 0x0

    .line 35
    const/4 v3, 0x0

    .line 36
    const/4 v5, 0x0

    .line 37
    invoke-static/range {v1 .. v7}, Lteam/opay/pay/android/views/AmountInputBusnissUtils;->l(Lteam/opay/pay/android/views/AmountInputBusnissUtils;Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Ljava/lang/Number;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    const/4 v1, 0x1

    .line 51
    if-eq v0, v1, :cond_3

    .line 52
    .line 53
    const/4 p1, 0x2

    .line 54
    if-eq v0, p1, :cond_2

    .line 55
    .line 56
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->g1()V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->X1()V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    sget-object v0, Lteam/opay/pay/kyc/ConnectionFailedDialog;->m:Lteam/opay/pay/kyc/ConnectionFailedDialog$Companion;

    .line 65
    .line 66
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->TV:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 67
    .line 68
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Ljava/lang/String;

    .line 77
    .line 78
    if-nez p1, :cond_4

    .line 79
    .line 80
    const-string p1, ""

    .line 81
    .line 82
    :cond_4
    invoke-virtual {v0, p0, v1, p1}, Lteam/opay/pay/kyc/ConnectionFailedDialog$Companion;->a(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->g1()V

    .line 86
    .line 87
    .line 88
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 89
    .line 90
    return-object p0
.end method

.method public static synthetic q0(Ljava/lang/String;Lteam/opay/pay/payment/tv/TVTopupActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lteam/opay/pay/payment/tv/TVTopupActivity;->f1(Ljava/lang/String;Lteam/opay/pay/payment/tv/TVTopupActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final q1(Lteam/opay/pay/payment/tv/TVTopupActivity;Z)Lkotlin/Unit;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Log;->l:Lteam/opay/pay/payment/tv/TvAccountInputText;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v0, v0, Log;->l:Lteam/opay/pay/payment/tv/TvAccountInputText;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 22
    .line 23
    .line 24
    :cond_1
    const-string v0, ""

    .line 25
    .line 26
    if-nez p1, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->g2(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->p0()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_5

    .line 41
    .line 42
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iget-object p1, p1, Log;->l:Lteam/opay/pay/payment/tv/TvAccountInputText;

    .line 47
    .line 48
    invoke-virtual {p1}, Lteam/opay/pay/android/views/BaseAccountEditText;->getInputText()Lteam/opay/pay/android/views/KeyboardEditText;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-eqz p1, :cond_4

    .line 53
    .line 54
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    if-eqz p1, :cond_4

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-nez p1, :cond_3

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    move-object v0, p1

    .line 68
    :cond_4
    :goto_0
    invoke-virtual {p0, v0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->g2(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :cond_5
    :goto_1
    invoke-direct {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->k2()V

    .line 72
    .line 73
    .line 74
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 75
    .line 76
    return-object p0
.end method

.method public static synthetic r0(Lteam/opay/pay/android/views/KeyboardEditText;I)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/tv/TVTopupActivity;->a1(Lteam/opay/pay/android/views/KeyboardEditText;I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final r1(Lteam/opay/pay/payment/tv/TVTopupActivity;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 8

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->j2()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->I1()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_5

    .line 24
    .line 25
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->F0()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/4 v1, 0x0

    .line 30
    const/4 v2, 0x0

    .line 31
    const/4 v3, -0x1

    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const/4 v4, 0x0

    .line 39
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-eqz v5, :cond_2

    .line 44
    .line 45
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    check-cast v5, Lteam/opay/pay/payment/tv/TvProviderInfo;

    .line 50
    .line 51
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    invoke-virtual {v6}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->S()Lteam/opay/pay/payment/tv/TvProviderInfo;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    if-eqz v6, :cond_0

    .line 60
    .line 61
    invoke-virtual {v6}, Lteam/opay/pay/payment/tv/TvProviderInfo;->m()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    goto :goto_1

    .line 66
    :cond_0
    move-object v6, v1

    .line 67
    :goto_1
    invoke-virtual {v5}, Lteam/opay/pay/payment/tv/TvProviderInfo;->m()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    if-eqz v6, :cond_1

    .line 76
    .line 77
    invoke-virtual {v5}, Lteam/opay/pay/payment/tv/TvProviderInfo;->o()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    const-string v6, "Y"

    .line 82
    .line 83
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-eqz v5, :cond_1

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    const/4 v4, -0x1

    .line 94
    :goto_2
    if-ne v4, v3, :cond_3

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_3
    move v0, v4

    .line 98
    :goto_3
    const/4 p1, 0x2

    .line 99
    invoke-static {p0, v0, v2, p1, v1}, Lteam/opay/pay/payment/tv/TVTopupActivity;->U1(Lteam/opay/pay/payment/tv/TVTopupActivity;IZILjava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    iget-object p1, p1, Log;->l:Lteam/opay/pay/payment/tv/TvAccountInputText;

    .line 107
    .line 108
    invoke-virtual {p1}, Lteam/opay/pay/android/views/BaseAccountEditText;->getText()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-lez p1, :cond_4

    .line 117
    .line 118
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->i1()V

    .line 119
    .line 120
    .line 121
    :cond_4
    invoke-direct {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->O0()V

    .line 122
    .line 123
    .line 124
    goto :goto_4

    .line 125
    :cond_5
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->H1()V

    .line 126
    .line 127
    .line 128
    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 129
    .line 130
    return-object p0
.end method

.method public static synthetic s0(Lteam/opay/pay/payment/tv/TVTopupActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->i2(Lteam/opay/pay/payment/tv/TVTopupActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final s1(Lteam/opay/pay/payment/tv/TVTopupActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lteam/opay/pay/payment/tv/TVTopupActivity;->a2(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static synthetic t0(Lteam/opay/pay/payment/tv/TVTopupActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->W0(Lteam/opay/pay/payment/tv/TVTopupActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final t1(Lteam/opay/pay/payment/tv/TVTopupActivity;Lkotlin/Unit;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->d1()Z

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static synthetic u0(Lteam/opay/pay/payment/tv/TVTopupActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->b1(Lteam/opay/pay/payment/tv/TVTopupActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final u1(Lteam/opay/pay/payment/tv/TVTopupActivity;Lteam/opay/pay/cashier/LifePreOrder;)Lkotlin/Unit;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->V()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    sget-object v0, Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity;->h:Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity$Companion;

    .line 17
    .line 18
    invoke-virtual {v0, p0, p1}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity$Companion;->b(Landroid/app/Activity;Lteam/opay/pay/cashier/LifePreOrder;)V

    .line 19
    .line 20
    .line 21
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_1
    invoke-virtual {p0, p1}, Lteam/opay/pay/payment/tv/TVTopupActivity;->K1(Lteam/opay/pay/cashier/LifePreOrder;)V

    .line 25
    .line 26
    .line 27
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 28
    .line 29
    return-object p0
.end method

.method public static synthetic v0(Lteam/opay/pay/payment/tv/TVTopupActivity;Lteam/opay/pay/payment/tv/TvProduct;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/tv/TVTopupActivity;->D1(Lteam/opay/pay/payment/tv/TVTopupActivity;Lteam/opay/pay/payment/tv/TvProduct;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final v1(Lteam/opay/pay/payment/tv/TVTopupActivity;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Log;->D:Lteam/opay/core/android/views/PulseLoaderView;

    .line 6
    .line 7
    const-string v0, "vLoading"

    .line 8
    .line 9
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-static {p0, p1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 20
    .line 21
    .line 22
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p0
.end method

.method public static synthetic w0(Lteam/opay/pay/api/QueryVoucherItem;Lteam/opay/pay/payment/tv/TVTopupActivity;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/tv/TVTopupActivity;->C0(Lteam/opay/pay/api/QueryVoucherItem;Lteam/opay/pay/payment/tv/TVTopupActivity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final w1(Lteam/opay/pay/payment/tv/TVTopupActivity;Z)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Log;->l:Lteam/opay/pay/payment/tv/TvAccountInputText;

    .line 6
    .line 7
    invoke-virtual {v0}, Lteam/opay/pay/payment/tv/TvAccountInputText;->getBtnAdd()Landroidx/appcompat/widget/AppCompatImageView;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/16 v1, 0x8

    .line 16
    .line 17
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->H0()Lteam/opay/pay/payment/BeneficiaryViewModel;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1, v0}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->f0(Lteam/opay/pay/payment/BeneficiaryViewModel;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-virtual {p0, p1}, Lteam/opay/pay/payment/tv/TVTopupActivity;->D0(Z)V

    .line 35
    .line 36
    .line 37
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 38
    .line 39
    return-object p0
.end method

.method public static final synthetic x0(Lteam/opay/pay/payment/tv/TVTopupActivity;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/payment/tv/TVTopupActivity;->D0(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final x1(Lteam/opay/pay/payment/tv/TVTopupActivity;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p0, v0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->D0(Z)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->J1()V

    .line 18
    .line 19
    .line 20
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    return-object p0
.end method

.method public static final synthetic y0(Lteam/opay/pay/payment/tv/TVTopupActivity;)Lteam/opay/pay/payment/BeneficiaryViewModel;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->H0()Lteam/opay/pay/payment/BeneficiaryViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final y1(Lteam/opay/pay/payment/tv/TVTopupActivity;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->b2()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final synthetic z0(Lteam/opay/pay/payment/tv/TVTopupActivity;)Lteam/opay/pay/payment/tv/TVTopupViewModel;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final z1(Lteam/opay/pay/payment/tv/TVTopupActivity;Lkotlin/Unit;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->Q1()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->Z1()V

    .line 5
    .line 6
    .line 7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    return-object p0
.end method


# virtual methods
.method public final A0()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->N0()Lteam/opay/pay/coupon/OpayVoucherViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/coupon/OpayVoucherViewModel;->A()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Liee;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Liee;-><init>(Lteam/opay/pay/payment/tv/TVTopupActivity;)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Lteam/opay/pay/payment/tv/TVTopupActivity$d;

    .line 15
    .line 16
    invoke-direct {v2, v1}, Lteam/opay/pay/payment/tv/TVTopupActivity$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final D0(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p1, p1, Log;->l:Lteam/opay/pay/payment/tv/TvAccountInputText;

    .line 8
    .line 9
    invoke-virtual {p1}, Lteam/opay/pay/payment/tv/TvAccountInputText;->getBtnAdd()Landroidx/appcompat/widget/AppCompatImageView;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget v0, Lteam/opay/pay/R$mipmap;->ic_add_beneficiary_selected:I

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object p1, p1, Log;->l:Lteam/opay/pay/payment/tv/TvAccountInputText;

    .line 24
    .line 25
    invoke-virtual {p1}, Lteam/opay/pay/payment/tv/TvAccountInputText;->getBtnAdd()Landroidx/appcompat/widget/AppCompatImageView;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    sget v0, Lteam/opay/pay/R$mipmap;->ic_add_beneficiary_normal:I

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method public final E0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Log;->l:Lteam/opay/pay/payment/tv/TvAccountInputText;

    .line 6
    .line 7
    invoke-virtual {v0}, Lteam/opay/pay/android/views/BaseAccountEditText;->getInputText()Lteam/opay/pay/android/views/KeyboardEditText;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->M()Lteam/opay/pay/util/SingleLiveEvent;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v0, v0, Log;->l:Lteam/opay/pay/payment/tv/TvAccountInputText;

    .line 45
    .line 46
    invoke-virtual {v0}, Lteam/opay/pay/android/views/BaseAccountEditText;->getInputText()Lteam/opay/pay/android/views/KeyboardEditText;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    invoke-static {v0}, Lli2;->f(Landroid/view/View;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->i1()V

    .line 57
    .line 58
    .line 59
    :cond_1
    :goto_0
    return-void
.end method

.method public final F0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/pay/payment/tv/TvProviderInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->e0()Lteam/opay/pay/util/SingleLiveEvent;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lkotlin/Pair;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/util/List;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    return-object v0
.end method

.method public final G0()Lteam/opay/pay/ad/OpayAdBannerViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/tv/TVTopupActivity;->i:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/ad/OpayAdBannerViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public final H0()Lteam/opay/pay/payment/BeneficiaryViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/tv/TVTopupActivity;->j:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/payment/BeneficiaryViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public final H1()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->R1()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lteam/opay/pay/payment/tv/TVTopupActivity;->s:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lteam/opay/pay/payment/tv/TVTopupActivity;->s:Z

    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->W1()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final I1()I
    .locals 6

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->F0()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, -0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v3, 0x0

    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-eqz v4, :cond_1

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Lteam/opay/pay/payment/tv/TvProviderInfo;

    .line 25
    .line 26
    invoke-virtual {v4}, Lteam/opay/pay/payment/tv/TvProviderInfo;->o()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    const-string v5, "Y"

    .line 31
    .line 32
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 v3, -0x1

    .line 43
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    const/4 v0, 0x0

    .line 49
    :goto_2
    if-eqz v0, :cond_3

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-ne v3, v1, :cond_4

    .line 56
    .line 57
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    return v0
.end method

.method public final J1()V
    .locals 13

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x3

    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x2

    .line 6
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 7
    .line 8
    .line 9
    move-result-object v5

    .line 10
    iget-object v5, v5, Log;->l:Lteam/opay/pay/payment/tv/TvAccountInputText;

    .line 11
    .line 12
    invoke-virtual {v5}, Lteam/opay/pay/payment/tv/TvAccountInputText;->getInputTextView()Lteam/opay/pay/android/views/KeyboardEditText;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    if-nez v5, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance v6, Landroid/widget/TextView;

    .line 20
    .line 21
    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Landroid/view/View;->generateViewId()I

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    invoke-virtual {v6, v7}, Landroid/view/View;->setId(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v5}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 32
    .line 33
    .line 34
    move-result-object v8

    .line 35
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    const/high16 v8, 0x41a00000    # 20.0f

    .line 39
    .line 40
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 41
    .line 42
    .line 43
    const-string v8, "font/roboto_700.xml"

    .line 44
    .line 45
    invoke-static {v8, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 50
    .line 51
    .line 52
    sget-object v8, Lhh2;->a:Lhh2;

    .line 53
    .line 54
    sget v9, Lteam/opay/pay/R$color;->black_85:I

    .line 55
    .line 56
    invoke-virtual {v8, v9}, Lhh2;->a(I)I

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    .line 62
    .line 63
    const/16 v8, 0x10

    .line 64
    .line 65
    invoke-static {v8}, Lkmf;->g(I)I

    .line 66
    .line 67
    .line 68
    move-result v8

    .line 69
    int-to-float v8, v8

    .line 70
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    int-to-float v5, v5

    .line 75
    add-float/2addr v5, v8

    .line 76
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    iget-object v9, v9, Log;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 81
    .line 82
    invoke-virtual {v9, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 83
    .line 84
    .line 85
    new-instance v9, Landroidx/constraintlayout/widget/ConstraintSet;

    .line 86
    .line 87
    invoke-direct {v9}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 91
    .line 92
    .line 93
    move-result-object v10

    .line 94
    iget-object v10, v10, Log;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 95
    .line 96
    invoke-virtual {v9, v10}, Landroidx/constraintlayout/widget/ConstraintSet;->q(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 100
    .line 101
    .line 102
    move-result-object v10

    .line 103
    iget-object v10, v10, Log;->l:Lteam/opay/pay/payment/tv/TvAccountInputText;

    .line 104
    .line 105
    invoke-virtual {v10}, Landroid/view/View;->getId()I

    .line 106
    .line 107
    .line 108
    move-result v10

    .line 109
    invoke-virtual {v9, v7, v2, v10, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->t(IIII)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 113
    .line 114
    .line 115
    move-result-object v10

    .line 116
    iget-object v10, v10, Log;->l:Lteam/opay/pay/payment/tv/TvAccountInputText;

    .line 117
    .line 118
    invoke-virtual {v10}, Landroid/view/View;->getId()I

    .line 119
    .line 120
    .line 121
    move-result v10

    .line 122
    invoke-virtual {v9, v7, v0, v10, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->t(IIII)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    iget-object v7, v7, Log;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 130
    .line 131
    invoke-virtual {v9, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->i(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 132
    .line 133
    .line 134
    sget-object v7, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 135
    .line 136
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 137
    .line 138
    .line 139
    move-result-object v9

    .line 140
    iget-object v9, v9, Log;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 141
    .line 142
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    .line 143
    .line 144
    .line 145
    move-result v9

    .line 146
    int-to-float v9, v9

    .line 147
    new-array v10, v4, [F

    .line 148
    .line 149
    aput v5, v10, v3

    .line 150
    .line 151
    aput v9, v10, v1

    .line 152
    .line 153
    invoke-static {v6, v7, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    const-string v7, "ofFloat(...)"

    .line 158
    .line 159
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 163
    .line 164
    neg-float v10, v8

    .line 165
    const/high16 v11, 0x40900000    # 4.5f

    .line 166
    .line 167
    mul-float v11, v11, v8

    .line 168
    .line 169
    neg-float v11, v11

    .line 170
    int-to-float v12, v0

    .line 171
    mul-float v12, v12, v8

    .line 172
    .line 173
    neg-float v8, v12

    .line 174
    new-array v12, v2, [F

    .line 175
    .line 176
    aput v10, v12, v3

    .line 177
    .line 178
    aput v11, v12, v1

    .line 179
    .line 180
    aput v8, v12, v4

    .line 181
    .line 182
    invoke-static {v6, v9, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 183
    .line 184
    .line 185
    move-result-object v8

    .line 186
    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    const-string v7, "scaleX"

    .line 190
    .line 191
    new-array v9, v4, [F

    .line 192
    .line 193
    fill-array-data v9, :array_0

    .line 194
    .line 195
    .line 196
    invoke-static {v6, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 197
    .line 198
    .line 199
    move-result-object v7

    .line 200
    const-string v9, "scaleY"

    .line 201
    .line 202
    new-array v10, v4, [F

    .line 203
    .line 204
    fill-array-data v10, :array_1

    .line 205
    .line 206
    .line 207
    invoke-static {v6, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 208
    .line 209
    .line 210
    move-result-object v9

    .line 211
    new-instance v10, Landroid/animation/AnimatorSet;

    .line 212
    .line 213
    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    .line 214
    .line 215
    .line 216
    new-array v0, v0, [Landroid/animation/Animator;

    .line 217
    .line 218
    aput-object v5, v0, v3

    .line 219
    .line 220
    aput-object v8, v0, v1

    .line 221
    .line 222
    aput-object v7, v0, v4

    .line 223
    .line 224
    aput-object v9, v0, v2

    .line 225
    .line 226
    invoke-virtual {v10, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 227
    .line 228
    .line 229
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 230
    .line 231
    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v10, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 235
    .line 236
    .line 237
    const-wide/16 v0, 0x320

    .line 238
    .line 239
    invoke-virtual {v10, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 240
    .line 241
    .line 242
    new-instance v0, Lteam/opay/pay/payment/tv/TVTopupActivity$c;

    .line 243
    .line 244
    invoke-direct {v0, p0, v6}, Lteam/opay/pay/payment/tv/TVTopupActivity$c;-><init>(Lteam/opay/pay/payment/tv/TVTopupActivity;Landroid/widget/TextView;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v10, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v10}, Landroid/animation/AnimatorSet;->start()V

    .line 251
    .line 252
    .line 253
    return-void

    .line 254
    nop

    .line 255
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
    .end array-data

    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
    .end array-data
.end method

.method public final K0(Lteam/opay/pay/api/QueryVoucherItem;)I
    .locals 7

    .line 1
    invoke-virtual {p1}, Lteam/opay/pay/api/QueryVoucherItem;->actualProviderIdList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_4

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    add-int/lit8 v3, v1, 0x1

    .line 22
    .line 23
    if-gez v1, :cond_0

    .line 24
    .line 25
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 26
    .line 27
    .line 28
    :cond_0
    check-cast v2, Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->e0()Lteam/opay/pay/util/SingleLiveEvent;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Lkotlin/Pair;

    .line 43
    .line 44
    if-eqz v1, :cond_3

    .line 45
    .line 46
    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Ljava/util/List;

    .line 51
    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const/4 v4, 0x0

    .line 59
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-eqz v5, :cond_3

    .line 64
    .line 65
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    add-int/lit8 v6, v4, 0x1

    .line 70
    .line 71
    if-gez v4, :cond_1

    .line 72
    .line 73
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 74
    .line 75
    .line 76
    :cond_1
    check-cast v5, Lteam/opay/pay/payment/tv/TvProviderInfo;

    .line 77
    .line 78
    invoke-virtual {v5}, Lteam/opay/pay/payment/tv/TvProviderInfo;->m()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-eqz v5, :cond_2

    .line 87
    .line 88
    return v4

    .line 89
    :cond_2
    move v4, v6

    .line 90
    goto :goto_1

    .line 91
    :cond_3
    move v1, v3

    .line 92
    goto :goto_0

    .line 93
    :cond_4
    const/4 p1, -0x1

    .line 94
    return p1
.end method

.method public final K1(Lteam/opay/pay/cashier/LifePreOrder;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->J0()Lteam/opay/pay/opay/PaymentViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lode;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lode;-><init>(Lteam/opay/pay/payment/tv/TVTopupActivity;Lteam/opay/pay/cashier/LifePreOrder;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0, p1, v1}, Lteam/opay/pay/opay/PaymentViewModel;->S(Landroidx/fragment/app/FragmentActivity;Lteam/opay/pay/cashier/LifePreOrder;Lkotlin/jvm/functions/Function1;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public L0()Log;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/tv/TVTopupActivity;->g:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Log;

    .line 8
    .line 9
    return-object v0
.end method

.method public final M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/tv/TVTopupActivity;->h:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public final M1(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0, p1}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->a0(Lag8;Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object p1, p1, Log;->H:Lteam/opay/pay/coupon/OpayVoucherView;

    .line 13
    .line 14
    sget-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->TV:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 15
    .line 16
    invoke-virtual {p1, v0, p0}, Lteam/opay/pay/coupon/OpayVoucherView;->J(Lteam/opay/core/api/GraphQL$ServiceType;Landroidx/fragment/app/FragmentActivity;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final O1(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->P1()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v3, Lteam/opay/pay/payment/tv/TVTopupActivity$scrollAndHighLight$1;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {v3, p0, p1, v2}, Lteam/opay/pay/payment/tv/TVTopupActivity$scrollAndHighLight$1;-><init>(Lteam/opay/pay/payment/tv/TVTopupActivity;Ljava/lang/String;Ljr2;)V

    .line 16
    .line 17
    .line 18
    const/4 v4, 0x2

    .line 19
    const/4 v5, 0x0

    .line 20
    invoke-static/range {v0 .. v5}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final P0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Log;->l:Lteam/opay/pay/payment/tv/TvAccountInputText;

    .line 6
    .line 7
    sget-object v1, Lteam/opay/pay/android/views/AmountInputBusnissUtils;->d:Lteam/opay/pay/android/views/AmountInputBusnissUtils$Companion;

    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lteam/opay/pay/android/views/AmountInputBusnissUtils$Companion;->a(Lteam/opay/pay/android/views/BaseAccountEditText;)Lteam/opay/pay/android/views/AmountInputBusnissUtils;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Lteam/opay/pay/payment/tv/TVTopupActivity$a;

    .line 17
    .line 18
    invoke-direct {v1}, Lteam/opay/pay/payment/tv/TVTopupActivity$a;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0, v1}, Lteam/opay/pay/android/views/AmountInputBusnissUtils;->e(Landroidx/fragment/app/FragmentActivity;Lteam/opay/pay/android/views/e;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lteam/opay/pay/payment/tv/TVTopupActivity;->q:Lteam/opay/pay/android/views/AmountInputBusnissUtils;

    .line 25
    .line 26
    return-void
.end method

.method public final P1()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Log;->c:Lcom/google/android/material/appbar/AppBarLayout;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final Q0()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->S()Lteam/opay/pay/payment/tv/TvProviderInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->S()Lteam/opay/pay/payment/tv/TvProviderInfo;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Lteam/opay/pay/payment/tv/TvProviderInfo;->b()Ljava/util/ArrayList;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v0, 0x0

    .line 35
    :goto_0
    if-gtz v0, :cond_2

    .line 36
    .line 37
    return-void

    .line 38
    :cond_2
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v2}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->S()Lteam/opay/pay/payment/tv/TvProviderInfo;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    if-eqz v2, :cond_3

    .line 47
    .line 48
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    iget-object v3, v3, Log;->B:Lteam/opay/pay/payment/airtimeMobileData/CustomVPInner;

    .line 53
    .line 54
    new-instance v4, Lteam/opay/pay/payment/tv/TvTabLayoutAdapter;

    .line 55
    .line 56
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    const-string v6, "getSupportFragmentManager(...)"

    .line 61
    .line 62
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {v4, v5}, Lteam/opay/pay/payment/tv/TvTabLayoutAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4, v2}, Lteam/opay/pay/payment/tv/TvTabLayoutAdapter;->C(Lteam/opay/pay/payment/tv/TvProviderInfo;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, v4}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 72
    .line 73
    .line 74
    :cond_3
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    iget-object v2, v2, Log;->B:Lteam/opay/pay/payment/airtimeMobileData/CustomVPInner;

    .line 79
    .line 80
    invoke-virtual {v2, v0}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iget-object v0, v0, Log;->B:Lteam/opay/pay/payment/airtimeMobileData/CustomVPInner;

    .line 88
    .line 89
    const-string v2, "tvViewPager"

    .line 90
    .line 91
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    iget-object v0, v0, Log;->B:Lteam/opay/pay/payment/airtimeMobileData/CustomVPInner;

    .line 102
    .line 103
    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/ViewPager;->J(Landroidx/viewpager/widget/ViewPager$i;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    iget-object v0, v0, Log;->B:Lteam/opay/pay/payment/airtimeMobileData/CustomVPInner;

    .line 111
    .line 112
    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/ViewPager;->c(Landroidx/viewpager/widget/ViewPager$i;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    iget-object v0, v0, Log;->A:Lcom/flyco/tablayout/SlidingTabLayout;

    .line 120
    .line 121
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    iget-object v2, v2, Log;->B:Lteam/opay/pay/payment/airtimeMobileData/CustomVPInner;

    .line 126
    .line 127
    invoke-virtual {v0, v2}, Lcom/flyco/tablayout/SlidingTabLayout;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    iget-object v0, v0, Log;->A:Lcom/flyco/tablayout/SlidingTabLayout;

    .line 135
    .line 136
    invoke-virtual {v0, v1, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    iget-object v0, v0, Log;->A:Lcom/flyco/tablayout/SlidingTabLayout;

    .line 144
    .line 145
    invoke-virtual {v0}, Lcom/flyco/tablayout/SlidingTabLayout;->i()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0, v1}, Lteam/opay/pay/payment/tv/TVTopupActivity;->V1(I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    iget-object v0, v0, Log;->A:Lcom/flyco/tablayout/SlidingTabLayout;

    .line 156
    .line 157
    invoke-virtual {v0, v1}, Lcom/flyco/tablayout/SlidingTabLayout;->setCurrentTab(I)V

    .line 158
    .line 159
    .line 160
    return-void
.end method

.method public final Q1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Log;->c:Lcom/google/android/material/appbar/AppBarLayout;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v0, v0, Log;->c:Lcom/google/android/material/appbar/AppBarLayout;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "null cannot be cast to non-null type androidx.coordinatorlayout.widget.CoordinatorLayout.LayoutParams"

    .line 26
    .line 27
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->f()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    instance-of v1, v0, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    .line 37
    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->setTopAndBottomOffset(I)Z

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method

.method public final R1()V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    const-string v3, "para_operator_id"

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    :cond_0
    const-string v2, ""

    .line 24
    .line 25
    :cond_1
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const/4 v4, 0x2

    .line 30
    const/4 v5, -0x1

    .line 31
    const/4 v6, 0x0

    .line 32
    if-lez v3, :cond_6

    .line 33
    .line 34
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->F0()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    if-eqz v3, :cond_3

    .line 39
    .line 40
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const/4 v7, 0x0

    .line 45
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v8

    .line 49
    if-eqz v8, :cond_4

    .line 50
    .line 51
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    check-cast v8, Lteam/opay/pay/payment/tv/TvProviderInfo;

    .line 56
    .line 57
    new-instance v9, Lcom/google/gson/Gson;

    .line 58
    .line 59
    invoke-direct {v9}, Lcom/google/gson/Gson;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v8}, Lteam/opay/pay/payment/tv/TvProviderInfo;->m()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    invoke-virtual {v9, v8}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    const-string v9, "toJson(...)"

    .line 71
    .line 72
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    new-array v9, v1, [C

    .line 76
    .line 77
    const/16 v10, 0x22

    .line 78
    .line 79
    aput-char v10, v9, v0

    .line 80
    .line 81
    invoke-static {v8, v9}, Lkotlin/text/StringsKt;->r1(Ljava/lang/String;[C)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v8

    .line 89
    if-eqz v8, :cond_2

    .line 90
    .line 91
    move v5, v7

    .line 92
    goto :goto_1

    .line 93
    :cond_2
    add-int/2addr v7, v1

    .line 94
    goto :goto_0

    .line 95
    :cond_3
    const/4 v5, 0x0

    .line 96
    :cond_4
    :goto_1
    if-ltz v5, :cond_5

    .line 97
    .line 98
    iput-boolean v1, p0, Lteam/opay/pay/payment/tv/TVTopupActivity;->s:Z

    .line 99
    .line 100
    invoke-static {p0, v5, v0, v4, v6}, Lteam/opay/pay/payment/tv/TVTopupActivity;->U1(Lteam/opay/pay/payment/tv/TVTopupActivity;IZILjava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    goto :goto_5

    .line 104
    :cond_5
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->I1()I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    invoke-static {p0, v1, v0, v4, v6}, Lteam/opay/pay/payment/tv/TVTopupActivity;->U1(Lteam/opay/pay/payment/tv/TVTopupActivity;IZILjava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    goto :goto_5

    .line 112
    :cond_6
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->F0()Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    if-eqz v2, :cond_9

    .line 117
    .line 118
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    const/4 v3, 0x0

    .line 123
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    if-eqz v7, :cond_8

    .line 128
    .line 129
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    check-cast v7, Lteam/opay/pay/payment/tv/TvProviderInfo;

    .line 134
    .line 135
    invoke-virtual {v7}, Lteam/opay/pay/payment/tv/TvProviderInfo;->m()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v8

    .line 139
    sget-object v9, Ldfa;->a:Ldfa;

    .line 140
    .line 141
    invoke-virtual {v9}, Ldfa;->q()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v9

    .line 145
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v8

    .line 149
    if-eqz v8, :cond_7

    .line 150
    .line 151
    invoke-virtual {v7}, Lteam/opay/pay/payment/tv/TvProviderInfo;->o()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    const-string v8, "Y"

    .line 156
    .line 157
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v7

    .line 161
    if-eqz v7, :cond_7

    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_7
    add-int/2addr v3, v1

    .line 165
    goto :goto_2

    .line 166
    :cond_8
    const/4 v3, -0x1

    .line 167
    :goto_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    goto :goto_4

    .line 172
    :cond_9
    move-object v1, v6

    .line 173
    :goto_4
    if-eqz v1, :cond_a

    .line 174
    .line 175
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    if-le v2, v5, :cond_a

    .line 180
    .line 181
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    invoke-virtual {p0, v0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->S1(I)V

    .line 186
    .line 187
    .line 188
    goto :goto_5

    .line 189
    :cond_a
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->I1()I

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    invoke-static {p0, v1, v0, v4, v6}, Lteam/opay/pay/payment/tv/TVTopupActivity;->U1(Lteam/opay/pay/payment/tv/TVTopupActivity;IZILjava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    :goto_5
    return-void
.end method

.method public final S1(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->T1(IZ)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v0, v0, Log;->l:Lteam/opay/pay/payment/tv/TvAccountInputText;

    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, p1}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->i0(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Lteam/opay/pay/android/views/BaseAccountEditText;->setText(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final T1(IZ)V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->F0()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    invoke-static {v2, p1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lteam/opay/pay/payment/tv/TvProviderInfo;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object p1, v3

    .line 18
    :goto_0
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Lteam/opay/pay/payment/tv/TvProviderInfo;->m()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move-object v2, v3

    .line 26
    :goto_1
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v4}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->S()Lteam/opay/pay/payment/tv/TvProviderInfo;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    if-eqz v4, :cond_2

    .line 35
    .line 36
    invoke-virtual {v4}, Lteam/opay/pay/payment/tv/TvProviderInfo;->m()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    move-object v4, v3

    .line 42
    :goto_2
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v4, p1}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->x0(Lteam/opay/pay/payment/tv/TvProviderInfo;)V

    .line 51
    .line 52
    .line 53
    const/4 v4, 0x2

    .line 54
    if-eqz p1, :cond_4

    .line 55
    .line 56
    invoke-virtual {p1}, Lteam/opay/pay/payment/tv/TvProviderInfo;->a()Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    if-nez v5, :cond_3

    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    if-ne v5, v4, :cond_4

    .line 68
    .line 69
    const/4 v5, 0x1

    .line 70
    goto :goto_4

    .line 71
    :cond_4
    :goto_3
    const/4 v5, 0x0

    .line 72
    :goto_4
    xor-int/2addr v5, v1

    .line 73
    iput-boolean v5, p0, Lteam/opay/pay/payment/tv/TVTopupActivity;->o:Z

    .line 74
    .line 75
    if-eqz p1, :cond_8

    .line 76
    .line 77
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    iget-object v5, v5, Log;->k:Landroidx/appcompat/widget/AppCompatImageView;

    .line 82
    .line 83
    const-string v6, "ivLogo"

    .line 84
    .line 85
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Lteam/opay/pay/payment/tv/TvProviderInfo;->e()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    sget v7, Lteam/opay/pay/R$drawable;->ic_tv:I

    .line 93
    .line 94
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    invoke-static {v5, v6, v7}, Lme7;->a(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    iget-object v5, v5, Log;->q:Landroid/widget/TextView;

    .line 106
    .line 107
    invoke-virtual {p1}, Lteam/opay/pay/payment/tv/TvProviderInfo;->n()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Lteam/opay/pay/payment/tv/TvProviderInfo;->f()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    iget-object v6, v6, Log;->y:Landroid/widget/TextView;

    .line 123
    .line 124
    const-string v7, "tvPromo"

    .line 125
    .line 126
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 130
    .line 131
    .line 132
    move-result v8

    .line 133
    if-lez v8, :cond_5

    .line 134
    .line 135
    const/4 v8, 0x1

    .line 136
    goto :goto_5

    .line 137
    :cond_5
    const/4 v8, 0x0

    .line 138
    :goto_5
    invoke-static {v6, v8}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    iget-object v6, v6, Log;->C:Landroid/view/View;

    .line 146
    .line 147
    const-string v8, "vLine1"

    .line 148
    .line 149
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 153
    .line 154
    .line 155
    move-result-object v8

    .line 156
    iget-object v8, v8, Log;->y:Landroid/widget/TextView;

    .line 157
    .line 158
    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    .line 162
    .line 163
    .line 164
    move-result v7

    .line 165
    if-nez v7, :cond_6

    .line 166
    .line 167
    const/4 v7, 0x1

    .line 168
    goto :goto_6

    .line 169
    :cond_6
    const/4 v7, 0x0

    .line 170
    :goto_6
    if-eqz v7, :cond_7

    .line 171
    .line 172
    const/4 v7, 0x0

    .line 173
    goto :goto_7

    .line 174
    :cond_7
    const/16 v7, 0x8

    .line 175
    .line 176
    :goto_7
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    iget-object v6, v6, Log;->y:Landroid/widget/TextView;

    .line 184
    .line 185
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    .line 187
    .line 188
    :cond_8
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    iget-object v5, v5, Log;->l:Lteam/opay/pay/payment/tv/TvAccountInputText;

    .line 193
    .line 194
    if-eqz v2, :cond_9

    .line 195
    .line 196
    if-eqz p2, :cond_a

    .line 197
    .line 198
    :cond_9
    invoke-virtual {v5}, Lteam/opay/pay/android/views/BaseAccountEditText;->w()Lkotlin/Unit;

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 202
    .line 203
    .line 204
    move-result-object p2

    .line 205
    iget-object p2, p2, Log;->l:Lteam/opay/pay/payment/tv/TvAccountInputText;

    .line 206
    .line 207
    invoke-static {p2, v0, v3, v4, v3}, Lteam/opay/pay/android/views/BaseAccountEditText;->O(Lteam/opay/pay/android/views/BaseAccountEditText;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    iget-object v6, p0, Lteam/opay/pay/payment/tv/TVTopupActivity;->q:Lteam/opay/pay/android/views/AmountInputBusnissUtils;

    .line 211
    .line 212
    if-eqz v6, :cond_a

    .line 213
    .line 214
    sget-object v7, Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;->STATUS_NONE:Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;

    .line 215
    .line 216
    const/16 v11, 0xc

    .line 217
    .line 218
    const/4 v12, 0x0

    .line 219
    const/4 v8, 0x0

    .line 220
    const/4 v9, 0x0

    .line 221
    const/4 v10, 0x0

    .line 222
    invoke-static/range {v6 .. v12}, Lteam/opay/pay/android/views/AmountInputBusnissUtils;->l(Lteam/opay/pay/android/views/AmountInputBusnissUtils;Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    :cond_a
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 226
    .line 227
    .line 228
    move-result-object p2

    .line 229
    iget-object p2, p2, Log;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 230
    .line 231
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2, v5, p1}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->h0(Lteam/opay/pay/payment/tv/TvAccountInputText;Lteam/opay/pay/payment/tv/TvProviderInfo;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->Q0()V

    .line 246
    .line 247
    .line 248
    iget-boolean p2, p0, Lteam/opay/pay/payment/tv/TVTopupActivity;->r:Z

    .line 249
    .line 250
    if-nez p2, :cond_c

    .line 251
    .line 252
    iput-boolean v1, p0, Lteam/opay/pay/payment/tv/TVTopupActivity;->r:Z

    .line 253
    .line 254
    sget-object p2, Lse8;->a:Lse8;

    .line 255
    .line 256
    if-eqz p1, :cond_b

    .line 257
    .line 258
    invoke-virtual {p1}, Lteam/opay/pay/payment/tv/TvProviderInfo;->m()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    :cond_b
    const-string p1, "service"

    .line 263
    .line 264
    invoke-static {p1, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    new-array v1, v1, [Lkotlin/Pair;

    .line 269
    .line 270
    aput-object p1, v1, v0

    .line 271
    .line 272
    const-string p1, "TV_service_click"

    .line 273
    .line 274
    invoke-virtual {p2, p1, v1}, Lse8;->c(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 275
    .line 276
    .line 277
    :cond_c
    return-void
.end method

.method public final V1(I)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->S()Lteam/opay/pay/payment/tv/TvProviderInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_6

    .line 10
    .line 11
    invoke-virtual {v0}, Lteam/opay/pay/payment/tv/TvProviderInfo;->b()Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_6

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x0

    .line 22
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_6

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    add-int/lit8 v3, v1, 0x1

    .line 33
    .line 34
    if-gez v1, :cond_0

    .line 35
    .line 36
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 37
    .line 38
    .line 39
    :cond_0
    check-cast v2, Lteam/opay/pay/payment/tv/TvProductGroup;

    .line 40
    .line 41
    if-ne v1, p1, :cond_1

    .line 42
    .line 43
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 47
    .line 48
    :goto_1
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    iget-object v4, v4, Log;->A:Lcom/flyco/tablayout/SlidingTabLayout;

    .line 53
    .line 54
    invoke-virtual {v4, v1}, Lcom/flyco/tablayout/SlidingTabLayout;->h(I)Landroid/widget/TextView;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    if-eqz v4, :cond_2

    .line 59
    .line 60
    invoke-virtual {v4}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-nez v5, :cond_2

    .line 69
    .line 70
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 71
    .line 72
    .line 73
    :cond_2
    if-ne v1, p1, :cond_3

    .line 74
    .line 75
    const/high16 v2, 0x41800000    # 16.0f

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_3
    const/high16 v2, 0x41600000    # 14.0f

    .line 79
    .line 80
    :goto_2
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    iget-object v4, v4, Log;->A:Lcom/flyco/tablayout/SlidingTabLayout;

    .line 85
    .line 86
    invoke-virtual {v4, v1}, Lcom/flyco/tablayout/SlidingTabLayout;->h(I)Landroid/widget/TextView;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    if-eqz v1, :cond_5

    .line 91
    .line 92
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    cmpg-float v4, v4, v2

    .line 97
    .line 98
    if-nez v4, :cond_4

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_4
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 102
    .line 103
    .line 104
    :cond_5
    :goto_3
    move v1, v3

    .line 105
    goto :goto_0

    .line 106
    :cond_6
    return-void
.end method

.method public final W1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v1, "para_user_id"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    :cond_0
    const-string v0, ""

    .line 22
    .line 23
    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-lez v1, :cond_2

    .line 28
    .line 29
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-object v1, v1, Log;->l:Lteam/opay/pay/payment/tv/TvAccountInputText;

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Lteam/opay/pay/android/views/BaseAccountEditText;->setText(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    return-void
.end method

.method public final X1()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->S()Lteam/opay/pay/payment/tv/TvProviderInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lteam/opay/pay/payment/tv/TvProviderInfo;->m()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceId;->TV_STARTTIMESON:Lteam/opay/core/api/GraphQL$ServiceId;

    .line 18
    .line 19
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$ServiceId;->getValue()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    sget-object v0, Lteam/opay/pay/payment/LineTipsdialog;->k:Lteam/opay/pay/payment/LineTipsdialog$Companion;

    .line 30
    .line 31
    sget v1, Lteam/opay/pay/R$mipmap;->round_warning:I

    .line 32
    .line 33
    sget v2, Lteam/opay/pay/R$string;->osdk_account_does_not_exist:I

    .line 34
    .line 35
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    sget v3, Lteam/opay/pay/R$string;->osdk_account_does_not_exist_hint:I

    .line 40
    .line 41
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    sget v4, Lteam/opay/pay/R$string;->osdk_top_up_customer_dialog_btn_re_enter:I

    .line 46
    .line 47
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v0, v1, v2, v3, v4}, Lteam/opay/pay/payment/LineTipsdialog$Companion;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lteam/opay/pay/payment/LineTipsdialog;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    new-instance v1, Ljee;

    .line 56
    .line 57
    invoke-direct {v1, p0}, Ljee;-><init>(Lteam/opay/pay/payment/tv/TVTopupActivity;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lteam/opay/pay/payment/LineTipsdialog;->O(Lkotlin/jvm/functions/Function0;)V

    .line 61
    .line 62
    .line 63
    invoke-static {p0, v0}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->g1()V

    .line 68
    .line 69
    .line 70
    :goto_1
    return-void
.end method

.method public final Z1()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Log;->l:Lteam/opay/pay/payment/tv/TvAccountInputText;

    .line 6
    .line 7
    sget v1, Lteam/opay/pay/R$string;->details_smart_card_label_error:I

    .line 8
    .line 9
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-virtual {v0, v2, v1}, Lteam/opay/pay/android/views/BaseAccountEditText;->N(ZLjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final b2()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->N()Lteam/opay/pay/util/SingleLiveEvent;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Boolean;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    if-nez v0, :cond_4

    .line 25
    .line 26
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->Q()Lteam/opay/pay/util/SingleLiveEvent;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Ljava/lang/Boolean;

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const/4 v0, 0x0

    .line 48
    :goto_1
    if-nez v0, :cond_4

    .line 49
    .line 50
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->H0()Lteam/opay/pay/payment/BeneficiaryViewModel;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lteam/opay/pay/payment/BeneficiaryViewModel;->J()Landroidx/lifecycle/MutableLiveData;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Ljava/lang/Boolean;

    .line 63
    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    goto :goto_2

    .line 71
    :cond_2
    const/4 v0, 0x0

    .line 72
    :goto_2
    if-eqz v0, :cond_3

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_3
    const/4 v0, 0x0

    .line 76
    goto :goto_4

    .line 77
    :cond_4
    :goto_3
    const/4 v0, 0x1

    .line 78
    :goto_4
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    iget-object v2, v2, Log;->D:Lteam/opay/core/android/views/PulseLoaderView;

    .line 83
    .line 84
    const-string v3, "vLoading"

    .line 85
    .line 86
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    if-eqz v0, :cond_5

    .line 90
    .line 91
    goto :goto_5

    .line 92
    :cond_5
    const/16 v1, 0x8

    .line 93
    .line 94
    :goto_5
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public final c2(Lteam/opay/pay/payment/tv/TvProduct;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lteam/opay/pay/payment/tv/TvProduct;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->S()Lteam/opay/pay/payment/tv/TvProviderInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    sget-object v1, Lteam/opay/pay/payment/tv/TvInputMoneyDialog;->p:Lteam/opay/pay/payment/tv/TvInputMoneyDialog$Companion;

    .line 18
    .line 19
    invoke-virtual {v0}, Lteam/opay/pay/payment/tv/TvProviderInfo;->n()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {p1}, Lteam/opay/pay/payment/tv/TvProduct;->k()Ljava/util/ArrayList;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v0}, Lteam/opay/pay/payment/tv/TvProviderInfo;->h()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {v0}, Lteam/opay/pay/payment/tv/TvProviderInfo;->g()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v1, v2, v3, v4, v0}, Lteam/opay/pay/payment/tv/TvInputMoneyDialog$Companion;->a(Ljava/lang/String;Ljava/util/ArrayList;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;)Lteam/opay/pay/payment/tv/TvInputMoneyDialog;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    new-instance v1, Lcee;

    .line 40
    .line 41
    invoke-direct {v1, p0, p1}, Lcee;-><init>(Lteam/opay/pay/payment/tv/TVTopupActivity;Lteam/opay/pay/payment/tv/TvProduct;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lteam/opay/pay/payment/tv/TvInputMoneyDialog;->i0(Lkotlin/jvm/functions/Function1;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string v1, "getSupportFragmentManager(...)"

    .line 52
    .line 53
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string v1, "TvInputMoneyDialog"

    .line 57
    .line 58
    invoke-virtual {v0, p1, v1}, Lteam/opay/core/base/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    return-void

    .line 62
    :cond_1
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 63
    .line 64
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    iget-object v1, v1, Log;->i:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 72
    .line 73
    const-string v2, "groupPhonePackage"

    .line 74
    .line 75
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-nez v1, :cond_2

    .line 83
    .line 84
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    iget-object v1, v1, Log;->e:Lcom/google/android/material/button/MaterialButton;

    .line 89
    .line 90
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    instance-of v1, v1, Lteam/opay/pay/payment/tv/TvProduct;

    .line 95
    .line 96
    if-eqz v1, :cond_2

    .line 97
    .line 98
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    iget-object v1, v1, Log;->e:Lcom/google/android/material/button/MaterialButton;

    .line 103
    .line 104
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    const-string v2, "null cannot be cast to non-null type team.opay.pay.payment.tv.TvProduct"

    .line 109
    .line 110
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    check-cast v1, Lteam/opay/pay/payment/tv/TvProduct;

    .line 114
    .line 115
    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 116
    .line 117
    :cond_2
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v1}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->P()Lteam/opay/pay/util/SingleLiveEvent;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    check-cast v1, Lteam/opay/pay/payment/tv/TvAccountV3Data;

    .line 130
    .line 131
    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 132
    .line 133
    const/4 v3, 0x0

    .line 134
    if-eqz v2, :cond_9

    .line 135
    .line 136
    check-cast v2, Lteam/opay/pay/payment/tv/TvProduct;

    .line 137
    .line 138
    invoke-virtual {v2}, Lteam/opay/pay/payment/tv/TvProduct;->e()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-virtual {p1}, Lteam/opay/pay/payment/tv/TvProduct;->e()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    if-nez v2, :cond_9

    .line 151
    .line 152
    sget-object v2, Lteam/opay/pay/payment/tv/TVTopUpDialogFragment;->q:Lteam/opay/pay/payment/tv/TVTopUpDialogFragment$Companion;

    .line 153
    .line 154
    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast v4, Lteam/opay/pay/payment/tv/TvProduct;

    .line 157
    .line 158
    invoke-virtual {v4}, Lteam/opay/pay/payment/tv/TvProduct;->o()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    iget-object v5, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast v5, Lteam/opay/pay/payment/tv/TvProduct;

    .line 165
    .line 166
    invoke-virtual {v5}, Lteam/opay/pay/payment/tv/TvProduct;->b()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    const/4 v6, 0x1

    .line 171
    if-eqz v5, :cond_3

    .line 172
    .line 173
    invoke-static {v5, v3, v6, v3}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->toText$default(Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    goto :goto_0

    .line 178
    :cond_3
    move-object v5, v3

    .line 179
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const-string v4, " "

    .line 188
    .line 189
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    invoke-virtual {p1}, Lteam/opay/pay/payment/tv/TvProduct;->o()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v7

    .line 203
    invoke-virtual {p1}, Lteam/opay/pay/payment/tv/TvProduct;->b()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 204
    .line 205
    .line 206
    move-result-object v8

    .line 207
    if-eqz v8, :cond_4

    .line 208
    .line 209
    invoke-static {v8, v3, v6, v3}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->toText$default(Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v6

    .line 213
    goto :goto_1

    .line 214
    :cond_4
    move-object v6, v3

    .line 215
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    const/4 v6, 0x0

    .line 234
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 235
    .line 236
    .line 237
    move-result-object v6

    .line 238
    invoke-virtual {v2, v5, v4, v6}, Lteam/opay/pay/payment/tv/TVTopUpDialogFragment$Companion;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lteam/opay/pay/payment/tv/TVTopUpDialogFragment;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    if-eqz v1, :cond_5

    .line 243
    .line 244
    invoke-virtual {v1}, Lteam/opay/pay/payment/tv/TvAccountV3Data;->b()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v4

    .line 248
    goto :goto_2

    .line 249
    :cond_5
    move-object v4, v3

    .line 250
    :goto_2
    const-string v5, ""

    .line 251
    .line 252
    if-nez v4, :cond_6

    .line 253
    .line 254
    move-object v4, v5

    .line 255
    :cond_6
    invoke-virtual {v2, v4}, Lteam/opay/pay/payment/tv/TVTopUpDialogFragment;->Z(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    if-eqz v1, :cond_7

    .line 259
    .line 260
    invoke-virtual {v1}, Lteam/opay/pay/payment/tv/TvAccountV3Data;->a()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    :cond_7
    if-nez v3, :cond_8

    .line 265
    .line 266
    goto :goto_3

    .line 267
    :cond_8
    move-object v5, v3

    .line 268
    :goto_3
    invoke-virtual {v2, v5}, Lteam/opay/pay/payment/tv/TVTopUpDialogFragment;->Y(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    new-instance v1, Ldee;

    .line 272
    .line 273
    invoke-direct {v1, p0, p1}, Ldee;-><init>(Lteam/opay/pay/payment/tv/TVTopupActivity;Lteam/opay/pay/payment/tv/TvProduct;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v2, v1}, Lteam/opay/pay/payment/tv/TVTopUpDialogFragment;->b0(Lkotlin/jvm/functions/Function0;)V

    .line 277
    .line 278
    .line 279
    new-instance p1, Lfee;

    .line 280
    .line 281
    invoke-direct {p1, p0, v0}, Lfee;-><init>(Lteam/opay/pay/payment/tv/TVTopupActivity;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v2, p1}, Lteam/opay/pay/payment/tv/TVTopUpDialogFragment;->a0(Lkotlin/jvm/functions/Function0;)V

    .line 285
    .line 286
    .line 287
    invoke-static {p0, v2}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 288
    .line 289
    .line 290
    goto :goto_4

    .line 291
    :cond_9
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    const/4 v1, 0x2

    .line 296
    invoke-static {v0, p1, v3, v1, v3}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->B0(Lteam/opay/pay/payment/tv/TVTopupViewModel;Lteam/opay/pay/payment/tv/TvProduct;Ljava/lang/String;ILjava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    :goto_4
    return-void
.end method

.method public final e1()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->G0()Lteam/opay/pay/ad/OpayAdBannerViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v4, "tv_front_bottom_banner"

    .line 6
    .line 7
    const-string v5, "ng_tv_middle_banner"

    .line 8
    .line 9
    const-string v6, "ng_banner_tv_more"

    .line 10
    .line 11
    const-string v7, "tv_pop"

    .line 12
    .line 13
    const-string v2, "ng_tv_notice_first"

    .line 14
    .line 15
    filled-new-array {v4, v5, v6, v7, v2}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->n([Ljava/lang/Object;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    new-instance v3, Ljava/util/ArrayList;

    .line 24
    .line 25
    const/16 v8, 0xa

    .line 26
    .line 27
    invoke-static {v1, v8}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 28
    .line 29
    .line 30
    move-result v8

    .line 31
    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v8

    .line 42
    if-eqz v8, :cond_0

    .line 43
    .line 44
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v8

    .line 48
    check-cast v8, Ljava/lang/String;

    .line 49
    .line 50
    new-instance v9, Lteam/opay/pay/api/AnnouncementReq;

    .line 51
    .line 52
    invoke-direct {v9, v8}, Lteam/opay/pay/api/AnnouncementReq;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v3, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    new-instance v1, Lteam/opay/pay/api/AllAnnouncementReq;

    .line 60
    .line 61
    invoke-direct {v1, v3}, Lteam/opay/pay/api/AllAnnouncementReq;-><init>(Ljava/util/List;)V

    .line 62
    .line 63
    .line 64
    const/4 v3, 0x0

    .line 65
    invoke-virtual {v0, v1, v3}, Lteam/opay/pay/ad/OpayAdBannerViewModel;->t(Lteam/opay/pay/api/AllAnnouncementReq;Z)Landroidx/lifecycle/LiveData;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    new-instance v8, Lxce;

    .line 70
    .line 71
    move-object v1, v8

    .line 72
    move-object v3, p0

    .line 73
    invoke-direct/range {v1 .. v7}, Lxce;-><init>(Ljava/lang/String;Lteam/opay/pay/payment/tv/TVTopupActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-static {v0, p0, v8}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final g1()V
    .locals 6

    .line 1
    invoke-static {p0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v3, Lteam/opay/pay/payment/tv/TVTopupActivity$lookUpErrorShowKeyboard$1;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v3, p0, v1}, Lteam/opay/pay/payment/tv/TVTopupActivity$lookUpErrorShowKeyboard$1;-><init>(Lteam/opay/pay/payment/tv/TVTopupActivity;Ljr2;)V

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x3

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final g2(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Log;->l:Lteam/opay/pay/payment/tv/TvAccountInputText;

    .line 6
    .line 7
    invoke-virtual {v0}, Lteam/opay/pay/payment/tv/TvAccountInputText;->getBtnSearch()Lcom/google/android/material/button/MaterialButton;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-lez v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1, p1}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->k0(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->j0()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 p1, 0x0

    .line 41
    :goto_0
    if-eqz p1, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/16 v2, 0x8

    .line 45
    .line 46
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public bridge synthetic getViewBinding()Lxyf;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final h1()V
    .locals 15

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->P()Lteam/opay/pay/util/SingleLiveEvent;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->T()Lteam/opay/pay/util/SingleLiveEvent;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0, v1}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->P()Lteam/opay/pay/util/SingleLiveEvent;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lteam/opay/pay/payment/tv/TvAccountV3Data;

    .line 41
    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->S()Lteam/opay/pay/payment/tv/TvProviderInfo;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const-string v3, "groupPhonePackage"

    .line 54
    .line 55
    const/16 v4, 0x8

    .line 56
    .line 57
    const/4 v5, 0x1

    .line 58
    const/4 v6, 0x0

    .line 59
    if-eqz v2, :cond_15

    .line 60
    .line 61
    invoke-virtual {v2}, Lteam/opay/pay/payment/tv/TvProviderInfo;->b()Ljava/util/ArrayList;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    if-eqz v2, :cond_15

    .line 66
    .line 67
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    if-eqz v7, :cond_15

    .line 76
    .line 77
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    check-cast v7, Lteam/opay/pay/payment/tv/TvProductGroup;

    .line 82
    .line 83
    invoke-virtual {v7}, Lteam/opay/pay/payment/tv/TvProductGroup;->b()Ljava/util/ArrayList;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    if-eqz v7, :cond_8

    .line 88
    .line 89
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    :cond_3
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v8

    .line 97
    if-eqz v8, :cond_7

    .line 98
    .line 99
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    move-object v9, v8

    .line 104
    check-cast v9, Lteam/opay/pay/payment/tv/TvProduct;

    .line 105
    .line 106
    invoke-virtual {v0}, Lteam/opay/pay/payment/tv/TvAccountV3Data;->c()Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object v10

    .line 110
    if-eqz v10, :cond_5

    .line 111
    .line 112
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    .line 113
    .line 114
    .line 115
    move-result v10

    .line 116
    if-eqz v10, :cond_4

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_4
    invoke-virtual {v0}, Lteam/opay/pay/payment/tv/TvAccountV3Data;->c()Ljava/util/List;

    .line 120
    .line 121
    .line 122
    move-result-object v10

    .line 123
    invoke-virtual {v9}, Lteam/opay/pay/payment/tv/TvProduct;->e()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v11

    .line 127
    invoke-static {v10, v11}, Lkotlin/collections/CollectionsKt;->X(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v10

    .line 131
    if-eqz v10, :cond_3

    .line 132
    .line 133
    :cond_5
    :goto_1
    invoke-virtual {v0}, Lteam/opay/pay/payment/tv/TvAccountV3Data;->e()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v10

    .line 137
    if-eqz v10, :cond_3

    .line 138
    .line 139
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    .line 140
    .line 141
    .line 142
    move-result v10

    .line 143
    if-nez v10, :cond_6

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_6
    invoke-virtual {v9}, Lteam/opay/pay/payment/tv/TvProduct;->e()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v9

    .line 150
    if-eqz v9, :cond_3

    .line 151
    .line 152
    invoke-virtual {v0}, Lteam/opay/pay/payment/tv/TvAccountV3Data;->e()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v10

    .line 156
    const/4 v11, 0x2

    .line 157
    invoke-static {v9, v10, v6, v11, v1}, Lkotlin/text/StringsKt;->d0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v9

    .line 161
    if-ne v9, v5, :cond_3

    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_7
    move-object v8, v1

    .line 165
    :goto_2
    check-cast v8, Lteam/opay/pay/payment/tv/TvProduct;

    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_8
    move-object v8, v1

    .line 169
    :goto_3
    if-eqz v8, :cond_2

    .line 170
    .line 171
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    iget-object v2, v2, Log;->t:Landroid/widget/TextView;

    .line 176
    .line 177
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 178
    .line 179
    .line 180
    move-result-object v7

    .line 181
    invoke-virtual {v8}, Lteam/opay/pay/payment/tv/TvProduct;->o()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v9

    .line 185
    invoke-virtual {v8}, Lteam/opay/pay/payment/tv/TvProduct;->p()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v10

    .line 189
    invoke-virtual {v7, v5, v9, v10}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->o0(ZLjava/lang/String;Ljava/lang/String;)Landroid/text/SpannedString;

    .line 190
    .line 191
    .line 192
    move-result-object v7

    .line 193
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0}, Lteam/opay/pay/payment/tv/TvAccountV3Data;->f()Ljava/lang/Long;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    const-wide/16 v9, 0x0

    .line 201
    .line 202
    if-eqz v2, :cond_9

    .line 203
    .line 204
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 205
    .line 206
    .line 207
    move-result-wide v11

    .line 208
    goto :goto_4

    .line 209
    :cond_9
    move-wide v11, v9

    .line 210
    :goto_4
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    iget-object v2, v2, Log;->v:Landroid/widget/TextView;

    .line 215
    .line 216
    const-string v7, "tvPhonePackageDate"

    .line 217
    .line 218
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    cmp-long v7, v11, v9

    .line 222
    .line 223
    if-lez v7, :cond_a

    .line 224
    .line 225
    const/4 v9, 0x1

    .line 226
    goto :goto_5

    .line 227
    :cond_a
    const/4 v9, 0x0

    .line 228
    :goto_5
    if-eqz v9, :cond_b

    .line 229
    .line 230
    const/4 v9, 0x0

    .line 231
    goto :goto_6

    .line 232
    :cond_b
    const/16 v9, 0x8

    .line 233
    .line 234
    :goto_6
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 235
    .line 236
    .line 237
    if-lez v7, :cond_c

    .line 238
    .line 239
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    iget-object v2, v2, Log;->v:Landroid/widget/TextView;

    .line 244
    .line 245
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 246
    .line 247
    .line 248
    move-result-object v7

    .line 249
    invoke-virtual {v7, p0, v11, v12}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->H(Landroid/content/Context;J)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v7

    .line 253
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    .line 255
    .line 256
    :cond_c
    invoke-virtual {v8}, Lteam/opay/pay/payment/tv/TvProduct;->a()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    if-eqz v2, :cond_e

    .line 261
    .line 262
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 263
    .line 264
    .line 265
    move-result v2

    .line 266
    if-nez v2, :cond_d

    .line 267
    .line 268
    goto :goto_7

    .line 269
    :cond_d
    const/4 v2, 0x0

    .line 270
    goto :goto_8

    .line 271
    :cond_e
    :goto_7
    const/4 v2, 0x1

    .line 272
    :goto_8
    if-nez v2, :cond_11

    .line 273
    .line 274
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    iget-object v2, v2, Log;->x:Landroid/widget/TextView;

    .line 279
    .line 280
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 281
    .line 282
    .line 283
    move-result-object v7

    .line 284
    iget-object v7, v7, Log;->x:Landroid/widget/TextView;

    .line 285
    .line 286
    invoke-virtual {v7}, Landroid/widget/TextView;->getPaintFlags()I

    .line 287
    .line 288
    .line 289
    move-result v7

    .line 290
    or-int/lit8 v7, v7, 0x10

    .line 291
    .line 292
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    iget-object v2, v2, Log;->x:Landroid/widget/TextView;

    .line 300
    .line 301
    sget-object v9, Lbd9;->a:Lbd9;

    .line 302
    .line 303
    invoke-virtual {v8}, Lteam/opay/pay/payment/tv/TvProduct;->b()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 304
    .line 305
    .line 306
    move-result-object v7

    .line 307
    if-eqz v7, :cond_10

    .line 308
    .line 309
    invoke-virtual {v7}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v7

    .line 313
    if-nez v7, :cond_f

    .line 314
    .line 315
    goto :goto_a

    .line 316
    :cond_f
    :goto_9
    move-object v10, v7

    .line 317
    goto :goto_b

    .line 318
    :cond_10
    :goto_a
    const-string v7, "0"

    .line 319
    .line 320
    goto :goto_9

    .line 321
    :goto_b
    sget-object v11, Lteam/opay/core/api/Country;->NIGERIA:Lteam/opay/core/api/Country;

    .line 322
    .line 323
    const/4 v13, 0x4

    .line 324
    const/4 v14, 0x0

    .line 325
    const/4 v12, 0x0

    .line 326
    invoke-static/range {v9 .. v14}, Lbd9;->q(Lbd9;Ljava/lang/String;Lteam/opay/core/api/Country;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v7

    .line 330
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    .line 332
    .line 333
    :cond_11
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 334
    .line 335
    .line 336
    move-result-object v2

    .line 337
    iget-object v2, v2, Log;->w:Landroid/widget/TextView;

    .line 338
    .line 339
    invoke-virtual {v8}, Lteam/opay/pay/payment/tv/TvProduct;->r()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v7

    .line 343
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    iget-object v2, v2, Log;->u:Landroid/widget/TextView;

    .line 351
    .line 352
    const-string v7, "tvPhonePackageCashBack"

    .line 353
    .line 354
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v8}, Lteam/opay/pay/payment/tv/TvProduct;->d()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v9

    .line 361
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    .line 362
    .line 363
    .line 364
    move-result v9

    .line 365
    if-lez v9, :cond_12

    .line 366
    .line 367
    const/4 v9, 0x1

    .line 368
    goto :goto_c

    .line 369
    :cond_12
    const/4 v9, 0x0

    .line 370
    :goto_c
    if-eqz v9, :cond_13

    .line 371
    .line 372
    const/4 v9, 0x0

    .line 373
    goto :goto_d

    .line 374
    :cond_13
    const/16 v9, 0x8

    .line 375
    .line 376
    :goto_d
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 380
    .line 381
    .line 382
    move-result-object v2

    .line 383
    iget-object v2, v2, Log;->u:Landroid/widget/TextView;

    .line 384
    .line 385
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 389
    .line 390
    .line 391
    move-result v2

    .line 392
    if-nez v2, :cond_14

    .line 393
    .line 394
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 395
    .line 396
    .line 397
    move-result-object v2

    .line 398
    iget-object v2, v2, Log;->u:Landroid/widget/TextView;

    .line 399
    .line 400
    invoke-virtual {v8}, Lteam/opay/pay/payment/tv/TvProduct;->d()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v7

    .line 404
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 408
    .line 409
    .line 410
    move-result-object v2

    .line 411
    iget-object v2, v2, Log;->w:Landroid/widget/TextView;

    .line 412
    .line 413
    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 414
    .line 415
    .line 416
    goto :goto_e

    .line 417
    :cond_14
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 418
    .line 419
    .line 420
    move-result-object v2

    .line 421
    iget-object v2, v2, Log;->w:Landroid/widget/TextView;

    .line 422
    .line 423
    const/high16 v7, 0x41200000    # 10.0f

    .line 424
    .line 425
    invoke-static {v7}, Lkmf;->f(F)F

    .line 426
    .line 427
    .line 428
    move-result v7

    .line 429
    float-to-int v7, v7

    .line 430
    invoke-virtual {v2, v6, v6, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 431
    .line 432
    .line 433
    :goto_e
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 434
    .line 435
    .line 436
    move-result-object v2

    .line 437
    iget-object v2, v2, Log;->e:Lcom/google/android/material/button/MaterialButton;

    .line 438
    .line 439
    invoke-virtual {v2, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 443
    .line 444
    .line 445
    move-result-object v2

    .line 446
    iget-object v2, v2, Log;->i:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 447
    .line 448
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 452
    .line 453
    .line 454
    :cond_15
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 455
    .line 456
    .line 457
    move-result-object v2

    .line 458
    iget-object v2, v2, Log;->r:Landroid/widget/TextView;

    .line 459
    .line 460
    const-string v7, "tvNoOldPackage"

    .line 461
    .line 462
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 466
    .line 467
    .line 468
    move-result-object v7

    .line 469
    iget-object v7, v7, Log;->i:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 470
    .line 471
    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 475
    .line 476
    .line 477
    move-result v3

    .line 478
    if-nez v3, :cond_16

    .line 479
    .line 480
    const/4 v3, 0x1

    .line 481
    goto :goto_f

    .line 482
    :cond_16
    const/4 v3, 0x0

    .line 483
    :goto_f
    if-nez v3, :cond_17

    .line 484
    .line 485
    const/4 v4, 0x0

    .line 486
    :cond_17
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 490
    .line 491
    .line 492
    move-result-object v2

    .line 493
    invoke-virtual {v2}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->S()Lteam/opay/pay/payment/tv/TvProviderInfo;

    .line 494
    .line 495
    .line 496
    move-result-object v2

    .line 497
    if-eqz v2, :cond_1b

    .line 498
    .line 499
    invoke-virtual {v2}, Lteam/opay/pay/payment/tv/TvProviderInfo;->b()Ljava/util/ArrayList;

    .line 500
    .line 501
    .line 502
    move-result-object v2

    .line 503
    if-eqz v2, :cond_1b

    .line 504
    .line 505
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 506
    .line 507
    .line 508
    move-result-object v2

    .line 509
    :cond_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 510
    .line 511
    .line 512
    move-result v3

    .line 513
    if-eqz v3, :cond_1b

    .line 514
    .line 515
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    move-result-object v3

    .line 519
    check-cast v3, Lteam/opay/pay/payment/tv/TvProductGroup;

    .line 520
    .line 521
    invoke-virtual {v3}, Lteam/opay/pay/payment/tv/TvProductGroup;->b()Ljava/util/ArrayList;

    .line 522
    .line 523
    .line 524
    move-result-object v3

    .line 525
    if-eqz v3, :cond_18

    .line 526
    .line 527
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 528
    .line 529
    .line 530
    move-result-object v3

    .line 531
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 532
    .line 533
    .line 534
    move-result v4

    .line 535
    if-eqz v4, :cond_18

    .line 536
    .line 537
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 538
    .line 539
    .line 540
    move-result-object v4

    .line 541
    check-cast v4, Lteam/opay/pay/payment/tv/TvProduct;

    .line 542
    .line 543
    invoke-virtual {v0}, Lteam/opay/pay/payment/tv/TvAccountV3Data;->c()Ljava/util/List;

    .line 544
    .line 545
    .line 546
    move-result-object v6

    .line 547
    if-eqz v6, :cond_1a

    .line 548
    .line 549
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 550
    .line 551
    .line 552
    move-result v6

    .line 553
    if-eqz v6, :cond_19

    .line 554
    .line 555
    goto :goto_11

    .line 556
    :cond_19
    invoke-virtual {v0}, Lteam/opay/pay/payment/tv/TvAccountV3Data;->c()Ljava/util/List;

    .line 557
    .line 558
    .line 559
    move-result-object v6

    .line 560
    invoke-virtual {v4}, Lteam/opay/pay/payment/tv/TvProduct;->e()Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v7

    .line 564
    invoke-static {v6, v7}, Lkotlin/collections/CollectionsKt;->X(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 565
    .line 566
    .line 567
    move-result v6

    .line 568
    xor-int/2addr v6, v5

    .line 569
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 570
    .line 571
    .line 572
    move-result-object v6

    .line 573
    goto :goto_12

    .line 574
    :cond_1a
    :goto_11
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 575
    .line 576
    :goto_12
    invoke-virtual {v4, v6}, Lteam/opay/pay/payment/tv/TvProduct;->s(Ljava/lang/Boolean;)V

    .line 577
    .line 578
    .line 579
    goto :goto_10

    .line 580
    :cond_1b
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 581
    .line 582
    .line 583
    move-result-object v0

    .line 584
    iget-object v0, v0, Log;->B:Lteam/opay/pay/payment/airtimeMobileData/CustomVPInner;

    .line 585
    .line 586
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 587
    .line 588
    .line 589
    move-result-object v0

    .line 590
    instance-of v0, v0, Lteam/opay/pay/payment/tv/TvTabLayoutAdapter;

    .line 591
    .line 592
    if-eqz v0, :cond_1c

    .line 593
    .line 594
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 595
    .line 596
    .line 597
    move-result-object v0

    .line 598
    iget-object v0, v0, Log;->B:Lteam/opay/pay/payment/airtimeMobileData/CustomVPInner;

    .line 599
    .line 600
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 601
    .line 602
    .line 603
    move-result-object v0

    .line 604
    const-string v2, "null cannot be cast to non-null type team.opay.pay.payment.tv.TvTabLayoutAdapter"

    .line 605
    .line 606
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 607
    .line 608
    .line 609
    check-cast v0, Lteam/opay/pay/payment/tv/TvTabLayoutAdapter;

    .line 610
    .line 611
    invoke-virtual {v0}, Lteam/opay/pay/payment/tv/TvTabLayoutAdapter;->B()V

    .line 612
    .line 613
    .line 614
    :cond_1c
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 615
    .line 616
    .line 617
    move-result-object v0

    .line 618
    invoke-virtual {v0}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->T()Lteam/opay/pay/util/SingleLiveEvent;

    .line 619
    .line 620
    .line 621
    move-result-object v0

    .line 622
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 623
    .line 624
    .line 625
    move-result-object v0

    .line 626
    check-cast v0, Lteam/opay/pay/payment/tv/TvProduct;

    .line 627
    .line 628
    if-eqz v0, :cond_1d

    .line 629
    .line 630
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 631
    .line 632
    .line 633
    move-result-object v2

    .line 634
    invoke-virtual {v2}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->T()Lteam/opay/pay/util/SingleLiveEvent;

    .line 635
    .line 636
    .line 637
    move-result-object v2

    .line 638
    invoke-virtual {v2, v1}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 639
    .line 640
    .line 641
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 642
    .line 643
    .line 644
    move-result-object v1

    .line 645
    invoke-virtual {v1, v0}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->q0(Lteam/opay/pay/payment/tv/TvProduct;)V

    .line 646
    .line 647
    .line 648
    :cond_1d
    return-void
.end method

.method public final h2()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Log;->b:Lteam/opay/core/android/views/OpayActionBar;

    .line 6
    .line 7
    invoke-virtual {v0}, Lteam/opay/core/android/views/OpayActionBar;->getActionView()Landroidx/appcompat/widget/AppCompatTextView;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    sget v1, Lteam/opay/pay/R$string;->history:I

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    sget v1, Lteam/opay/pay/R$color;->color_00B876:I

    .line 24
    .line 25
    invoke-static {p0, v1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 30
    .line 31
    .line 32
    new-instance v1, Lide;

    .line 33
    .line 34
    invoke-direct {v1, p0}, Lide;-><init>(Lteam/opay/pay/payment/tv/TVTopupActivity;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final i1()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->l0(Lag8;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final j1()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->N()Lteam/opay/pay/util/SingleLiveEvent;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Leee;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Leee;-><init>(Lteam/opay/pay/payment/tv/TVTopupActivity;)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Lteam/opay/pay/payment/tv/TVTopupActivity$d;

    .line 15
    .line 16
    invoke-direct {v2, v1}, Lteam/opay/pay/payment/tv/TVTopupActivity$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0, v2}, Lteam/opay/pay/util/SingleLiveEvent;->observe(Lag8;Lvfa;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->d0()Lteam/opay/pay/util/SingleLiveEvent;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v1, Lcde;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Lcde;-><init>(Lteam/opay/pay/payment/tv/TVTopupActivity;)V

    .line 33
    .line 34
    .line 35
    new-instance v2, Lteam/opay/pay/payment/tv/TVTopupActivity$d;

    .line 36
    .line 37
    invoke-direct {v2, v1}, Lteam/opay/pay/payment/tv/TVTopupActivity$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p0, v2}, Lteam/opay/pay/util/SingleLiveEvent;->observe(Lag8;Lvfa;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->P()Lteam/opay/pay/util/SingleLiveEvent;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    new-instance v1, Lfde;

    .line 52
    .line 53
    invoke-direct {v1, p0}, Lfde;-><init>(Lteam/opay/pay/payment/tv/TVTopupActivity;)V

    .line 54
    .line 55
    .line 56
    new-instance v2, Lteam/opay/pay/payment/tv/TVTopupActivity$d;

    .line 57
    .line 58
    invoke-direct {v2, v1}, Lteam/opay/pay/payment/tv/TVTopupActivity$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p0, v2}, Lteam/opay/pay/util/SingleLiveEvent;->observe(Lag8;Lvfa;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->Q()Lteam/opay/pay/util/SingleLiveEvent;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    new-instance v1, Lgde;

    .line 73
    .line 74
    invoke-direct {v1, p0}, Lgde;-><init>(Lteam/opay/pay/payment/tv/TVTopupActivity;)V

    .line 75
    .line 76
    .line 77
    new-instance v2, Lteam/opay/pay/payment/tv/TVTopupActivity$d;

    .line 78
    .line 79
    invoke-direct {v2, v1}, Lteam/opay/pay/payment/tv/TVTopupActivity$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, p0, v2}, Lteam/opay/pay/util/SingleLiveEvent;->observe(Lag8;Lvfa;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->O()Lteam/opay/pay/util/SingleLiveEvent;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    new-instance v1, Lhde;

    .line 94
    .line 95
    invoke-direct {v1, p0}, Lhde;-><init>(Lteam/opay/pay/payment/tv/TVTopupActivity;)V

    .line 96
    .line 97
    .line 98
    new-instance v2, Lteam/opay/pay/payment/tv/TVTopupActivity$d;

    .line 99
    .line 100
    invoke-direct {v2, v1}, Lteam/opay/pay/payment/tv/TVTopupActivity$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, p0, v2}, Lteam/opay/pay/util/SingleLiveEvent;->observe(Lag8;Lvfa;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->M()Lteam/opay/pay/util/SingleLiveEvent;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    new-instance v1, Ljde;

    .line 115
    .line 116
    invoke-direct {v1, p0}, Ljde;-><init>(Lteam/opay/pay/payment/tv/TVTopupActivity;)V

    .line 117
    .line 118
    .line 119
    new-instance v2, Lteam/opay/pay/payment/tv/TVTopupActivity$d;

    .line 120
    .line 121
    invoke-direct {v2, v1}, Lteam/opay/pay/payment/tv/TVTopupActivity$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, p0, v2}, Lteam/opay/pay/util/SingleLiveEvent;->observe(Lag8;Lvfa;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->e0()Lteam/opay/pay/util/SingleLiveEvent;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    new-instance v1, Lkde;

    .line 136
    .line 137
    invoke-direct {v1, p0}, Lkde;-><init>(Lteam/opay/pay/payment/tv/TVTopupActivity;)V

    .line 138
    .line 139
    .line 140
    new-instance v2, Lteam/opay/pay/payment/tv/TVTopupActivity$d;

    .line 141
    .line 142
    invoke-direct {v2, v1}, Lteam/opay/pay/payment/tv/TVTopupActivity$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, p0, v2}, Lteam/opay/pay/util/SingleLiveEvent;->observe(Lag8;Lvfa;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {v0}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->X()Lteam/opay/pay/util/SingleLiveEvent;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    new-instance v1, Llde;

    .line 157
    .line 158
    invoke-direct {v1, p0}, Llde;-><init>(Lteam/opay/pay/payment/tv/TVTopupActivity;)V

    .line 159
    .line 160
    .line 161
    new-instance v2, Lteam/opay/pay/payment/tv/TVTopupActivity$d;

    .line 162
    .line 163
    invoke-direct {v2, v1}, Lteam/opay/pay/payment/tv/TVTopupActivity$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, p0, v2}, Lteam/opay/pay/util/SingleLiveEvent;->observe(Lag8;Lvfa;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v0}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->c0()Lteam/opay/pay/util/SingleLiveEvent;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    new-instance v1, Lmde;

    .line 178
    .line 179
    invoke-direct {v1, p0}, Lmde;-><init>(Lteam/opay/pay/payment/tv/TVTopupActivity;)V

    .line 180
    .line 181
    .line 182
    new-instance v2, Lteam/opay/pay/payment/tv/TVTopupActivity$d;

    .line 183
    .line 184
    invoke-direct {v2, v1}, Lteam/opay/pay/payment/tv/TVTopupActivity$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, p0, v2}, Lteam/opay/pay/util/SingleLiveEvent;->observe(Lag8;Lvfa;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {v0}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->R()Lteam/opay/pay/util/SingleLiveEvent;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    new-instance v1, Lnde;

    .line 199
    .line 200
    invoke-direct {v1, p0}, Lnde;-><init>(Lteam/opay/pay/payment/tv/TVTopupActivity;)V

    .line 201
    .line 202
    .line 203
    new-instance v2, Lteam/opay/pay/payment/tv/TVTopupActivity$d;

    .line 204
    .line 205
    invoke-direct {v2, v1}, Lteam/opay/pay/payment/tv/TVTopupActivity$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0, p0, v2}, Lteam/opay/pay/util/SingleLiveEvent;->observe(Lag8;Lvfa;)V

    .line 209
    .line 210
    .line 211
    invoke-direct {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->J0()Lteam/opay/pay/opay/PaymentViewModel;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-virtual {v0}, Lteam/opay/pay/opay/PaymentViewModel;->M()Landroidx/lifecycle/MutableLiveData;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    new-instance v1, Llee;

    .line 220
    .line 221
    invoke-direct {v1, p0}, Llee;-><init>(Lteam/opay/pay/payment/tv/TVTopupActivity;)V

    .line 222
    .line 223
    .line 224
    new-instance v2, Lteam/opay/pay/payment/tv/TVTopupActivity$d;

    .line 225
    .line 226
    invoke-direct {v2, v1}, Lteam/opay/pay/payment/tv/TVTopupActivity$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-virtual {v0}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->U()Lteam/opay/pay/util/SingleLiveEvent;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    new-instance v1, Lmee;

    .line 241
    .line 242
    invoke-direct {v1, p0}, Lmee;-><init>(Lteam/opay/pay/payment/tv/TVTopupActivity;)V

    .line 243
    .line 244
    .line 245
    new-instance v2, Lteam/opay/pay/payment/tv/TVTopupActivity$d;

    .line 246
    .line 247
    invoke-direct {v2, v1}, Lteam/opay/pay/payment/tv/TVTopupActivity$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0, p0, v2}, Lteam/opay/pay/util/SingleLiveEvent;->observe(Lag8;Lvfa;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->H0()Lteam/opay/pay/payment/BeneficiaryViewModel;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-virtual {v0}, Lteam/opay/pay/payment/BeneficiaryViewModel;->K()Landroidx/lifecycle/MutableLiveData;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    new-instance v1, Lnee;

    .line 262
    .line 263
    invoke-direct {v1, p0}, Lnee;-><init>(Lteam/opay/pay/payment/tv/TVTopupActivity;)V

    .line 264
    .line 265
    .line 266
    new-instance v2, Lteam/opay/pay/payment/tv/TVTopupActivity$d;

    .line 267
    .line 268
    invoke-direct {v2, v1}, Lteam/opay/pay/payment/tv/TVTopupActivity$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->H0()Lteam/opay/pay/payment/BeneficiaryViewModel;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-virtual {v0}, Lteam/opay/pay/payment/BeneficiaryViewModel;->J()Landroidx/lifecycle/MutableLiveData;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    new-instance v1, Loee;

    .line 283
    .line 284
    invoke-direct {v1, p0}, Loee;-><init>(Lteam/opay/pay/payment/tv/TVTopupActivity;)V

    .line 285
    .line 286
    .line 287
    new-instance v2, Lteam/opay/pay/payment/tv/TVTopupActivity$d;

    .line 288
    .line 289
    invoke-direct {v2, v1}, Lteam/opay/pay/payment/tv/TVTopupActivity$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-virtual {v0}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->Z()Lteam/opay/pay/util/SingleLiveEvent;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    new-instance v1, Lpee;

    .line 304
    .line 305
    invoke-direct {v1, p0}, Lpee;-><init>(Lteam/opay/pay/payment/tv/TVTopupActivity;)V

    .line 306
    .line 307
    .line 308
    new-instance v2, Lteam/opay/pay/payment/tv/TVTopupActivity$d;

    .line 309
    .line 310
    invoke-direct {v2, v1}, Lteam/opay/pay/payment/tv/TVTopupActivity$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v0, p0, v2}, Lteam/opay/pay/util/SingleLiveEvent;->observe(Lag8;Lvfa;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    invoke-virtual {v0}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->L()Lteam/opay/pay/util/SingleLiveEvent;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    new-instance v1, Lqee;

    .line 325
    .line 326
    invoke-direct {v1, p0}, Lqee;-><init>(Lteam/opay/pay/payment/tv/TVTopupActivity;)V

    .line 327
    .line 328
    .line 329
    new-instance v2, Lteam/opay/pay/payment/tv/TVTopupActivity$d;

    .line 330
    .line 331
    invoke-direct {v2, v1}, Lteam/opay/pay/payment/tv/TVTopupActivity$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v0, p0, v2}, Lteam/opay/pay/util/SingleLiveEvent;->observe(Lag8;Lvfa;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    invoke-virtual {v0}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->K()Lteam/opay/pay/util/SingleLiveEvent;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    new-instance v1, Lyce;

    .line 346
    .line 347
    invoke-direct {v1, p0}, Lyce;-><init>(Lteam/opay/pay/payment/tv/TVTopupActivity;)V

    .line 348
    .line 349
    .line 350
    new-instance v2, Lteam/opay/pay/payment/tv/TVTopupActivity$d;

    .line 351
    .line 352
    invoke-direct {v2, v1}, Lteam/opay/pay/payment/tv/TVTopupActivity$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v0, p0, v2}, Lteam/opay/pay/util/SingleLiveEvent;->observe(Lag8;Lvfa;)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    invoke-virtual {v0}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->Y()Lteam/opay/pay/util/SingleLiveEvent;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    new-instance v1, Lzce;

    .line 367
    .line 368
    invoke-direct {v1, p0}, Lzce;-><init>(Lteam/opay/pay/payment/tv/TVTopupActivity;)V

    .line 369
    .line 370
    .line 371
    new-instance v2, Lteam/opay/pay/payment/tv/TVTopupActivity$d;

    .line 372
    .line 373
    invoke-direct {v2, v1}, Lteam/opay/pay/payment/tv/TVTopupActivity$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v0, p0, v2}, Lteam/opay/pay/util/SingleLiveEvent;->observe(Lag8;Lvfa;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    invoke-virtual {v0}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->T()Lteam/opay/pay/util/SingleLiveEvent;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    new-instance v1, Lade;

    .line 388
    .line 389
    invoke-direct {v1, p0}, Lade;-><init>(Lteam/opay/pay/payment/tv/TVTopupActivity;)V

    .line 390
    .line 391
    .line 392
    new-instance v2, Lteam/opay/pay/payment/tv/TVTopupActivity$d;

    .line 393
    .line 394
    invoke-direct {v2, v1}, Lteam/opay/pay/payment/tv/TVTopupActivity$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v0, p0, v2}, Lteam/opay/pay/util/SingleLiveEvent;->observe(Lag8;Lvfa;)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    invoke-virtual {v0}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->W()Lteam/opay/pay/util/SingleLiveEvent;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    new-instance v1, Lbde;

    .line 409
    .line 410
    invoke-direct {v1, p0}, Lbde;-><init>(Lteam/opay/pay/payment/tv/TVTopupActivity;)V

    .line 411
    .line 412
    .line 413
    new-instance v2, Lteam/opay/pay/payment/tv/TVTopupActivity$d;

    .line 414
    .line 415
    invoke-direct {v2, v1}, Lteam/opay/pay/payment/tv/TVTopupActivity$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v0, p0, v2}, Lteam/opay/pay/util/SingleLiveEvent;->observe(Lag8;Lvfa;)V

    .line 419
    .line 420
    .line 421
    sget-object v0, Lteam/opay/pay/util/FlowBus;->a:Lteam/opay/pay/util/FlowBus;

    .line 422
    .line 423
    new-instance v1, Lteam/opay/pay/payment/tv/TVTopupActivity$b;

    .line 424
    .line 425
    invoke-direct {v1, p0}, Lteam/opay/pay/payment/tv/TVTopupActivity$b;-><init>(Lteam/opay/pay/payment/tv/TVTopupActivity;)V

    .line 426
    .line 427
    .line 428
    const-string v2, "save_beneficiary_success"

    .line 429
    .line 430
    invoke-virtual {v0, p0, v2, v1}, Lteam/opay/pay/util/FlowBus;->b(Lag8;Ljava/lang/Object;La66;)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->A0()V

    .line 434
    .line 435
    .line 436
    invoke-direct {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->I0()Lteam/opay/pay/payment/betting/LifeCommonViewModel;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    invoke-virtual {v0}, Lteam/opay/pay/payment/betting/LifeCommonViewModel;->o0()Landroidx/lifecycle/MutableLiveData;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    new-instance v1, Ldde;

    .line 445
    .line 446
    invoke-direct {v1, p0}, Ldde;-><init>(Lteam/opay/pay/payment/tv/TVTopupActivity;)V

    .line 447
    .line 448
    .line 449
    new-instance v2, Lteam/opay/pay/payment/tv/TVTopupActivity$d;

    .line 450
    .line 451
    invoke-direct {v2, v1}, Lteam/opay/pay/payment/tv/TVTopupActivity$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 455
    .line 456
    .line 457
    invoke-direct {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->I0()Lteam/opay/pay/payment/betting/LifeCommonViewModel;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    invoke-virtual {v0}, Lteam/opay/pay/payment/betting/LifeCommonViewModel;->f0()Landroidx/lifecycle/MutableLiveData;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    new-instance v1, Lede;

    .line 466
    .line 467
    invoke-direct {v1, p0}, Lede;-><init>(Lteam/opay/pay/payment/tv/TVTopupActivity;)V

    .line 468
    .line 469
    .line 470
    new-instance v2, Lteam/opay/pay/payment/tv/TVTopupActivity$d;

    .line 471
    .line 472
    invoke-direct {v2, v1}, Lteam/opay/pay/payment/tv/TVTopupActivity$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 476
    .line 477
    .line 478
    return-void
.end method

.method public final j2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/tv/TVTopupActivity;->n:Lteam/opay/pay/util/NetWorkReceiver;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lteam/opay/pay/payment/tv/TVTopupActivity;->n:Lteam/opay/pay/util/NetWorkReceiver;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lxt9;->a:Lxt9;

    .line 5
    .line 6
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->ELECTRICITY:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2, p3, v1}, Lxt9;->d(IILandroid/content/Intent;Lteam/opay/core/api/GraphQL$ServiceType;)V

    .line 9
    .line 10
    .line 11
    const/16 v0, 0x12d

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    if-eq p1, v0, :cond_10

    .line 17
    .line 18
    const/16 v0, 0x1b6

    .line 19
    .line 20
    if-eq p1, v0, :cond_e

    .line 21
    .line 22
    const/16 v0, 0x666

    .line 23
    .line 24
    if-eq p1, v0, :cond_0

    .line 25
    .line 26
    goto/16 :goto_5

    .line 27
    .line 28
    :cond_0
    iput-boolean v2, p0, Lteam/opay/pay/payment/tv/TVTopupActivity;->p:Z

    .line 29
    .line 30
    const/4 p1, -0x1

    .line 31
    if-ne p2, p1, :cond_b

    .line 32
    .line 33
    if-eqz p3, :cond_b

    .line 34
    .line 35
    const-string p2, "result_data"

    .line 36
    .line 37
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    if-eqz p2, :cond_1

    .line 42
    .line 43
    instance-of p3, p2, Lteam/opay/pay/payment/record/RechargeBeneficiaryData;

    .line 44
    .line 45
    if-eqz p3, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    move-object p2, v3

    .line 49
    :goto_0
    if-eqz p2, :cond_13

    .line 50
    .line 51
    check-cast p2, Lteam/opay/pay/payment/record/RechargeBeneficiaryData;

    .line 52
    .line 53
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->H0()Lteam/opay/pay/payment/BeneficiaryViewModel;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    invoke-virtual {p2}, Lteam/opay/pay/payment/record/RechargeBeneficiaryData;->getRecipientAccountNo()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p3, v0}, Lteam/opay/pay/payment/BeneficiaryViewModel;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    invoke-virtual {p2, p3}, Lteam/opay/pay/payment/record/RechargeBeneficiaryData;->setRecipientAccountNo(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->F0()Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    if-eqz p3, :cond_4

    .line 73
    .line 74
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_3

    .line 83
    .line 84
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Lteam/opay/pay/payment/tv/TvProviderInfo;

    .line 89
    .line 90
    invoke-virtual {p2}, Lteam/opay/pay/payment/record/RechargeBeneficiaryData;->getServiceProvider()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    invoke-virtual {v0}, Lteam/opay/pay/payment/tv/TvProviderInfo;->m()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_2

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_3
    const/4 v2, -0x1

    .line 109
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->F0()Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    if-eqz p1, :cond_5

    .line 114
    .line 115
    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    check-cast p1, Lteam/opay/pay/payment/tv/TvProviderInfo;

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_5
    move-object p1, v3

    .line 123
    :goto_3
    if-eqz p1, :cond_6

    .line 124
    .line 125
    invoke-virtual {p1}, Lteam/opay/pay/payment/tv/TvProviderInfo;->o()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p3

    .line 129
    goto :goto_4

    .line 130
    :cond_6
    move-object p3, v3

    .line 131
    :goto_4
    const-string v0, "Y"

    .line 132
    .line 133
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result p3

    .line 137
    if-nez p3, :cond_8

    .line 138
    .line 139
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    invoke-virtual {p2}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->X()Lteam/opay/pay/util/SingleLiveEvent;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    if-eqz p1, :cond_7

    .line 148
    .line 149
    invoke-virtual {p1}, Lteam/opay/pay/payment/tv/TvProviderInfo;->p()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    :cond_7
    invoke-virtual {p2, v3}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :cond_8
    invoke-virtual {p0, v2, v1}, Lteam/opay/pay/payment/tv/TVTopupActivity;->T1(IZ)V

    .line 158
    .line 159
    .line 160
    iget-object v4, p0, Lteam/opay/pay/payment/tv/TVTopupActivity;->q:Lteam/opay/pay/android/views/AmountInputBusnissUtils;

    .line 161
    .line 162
    if-eqz v4, :cond_9

    .line 163
    .line 164
    sget-object v5, Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;->STATUS_SEARCH_SUCCESS:Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;

    .line 165
    .line 166
    invoke-virtual {p2}, Lteam/opay/pay/payment/record/RechargeBeneficiaryData;->getRecipientAccountName()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    const/16 v9, 0xc

    .line 171
    .line 172
    const/4 v10, 0x0

    .line 173
    const/4 v7, 0x0

    .line 174
    const/4 v8, 0x0

    .line 175
    invoke-static/range {v4 .. v10}, Lteam/opay/pay/android/views/AmountInputBusnissUtils;->l(Lteam/opay/pay/android/views/AmountInputBusnissUtils;Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    :cond_9
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    iget-object p1, p1, Log;->l:Lteam/opay/pay/payment/tv/TvAccountInputText;

    .line 183
    .line 184
    invoke-virtual {p1}, Lteam/opay/pay/android/views/BaseAccountEditText;->getInputText()Lteam/opay/pay/android/views/KeyboardEditText;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    if-eqz p1, :cond_a

    .line 189
    .line 190
    invoke-virtual {p2}, Lteam/opay/pay/payment/record/RechargeBeneficiaryData;->getRecipientAccountNo()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p2

    .line 194
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    .line 196
    .line 197
    :cond_a
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->E0()V

    .line 198
    .line 199
    .line 200
    goto/16 :goto_5

    .line 201
    .line 202
    :cond_b
    const/16 p1, 0x16

    .line 203
    .line 204
    if-ne p2, p1, :cond_13

    .line 205
    .line 206
    if-eqz p3, :cond_c

    .line 207
    .line 208
    const-string p1, "RESULT_DATA_KEY"

    .line 209
    .line 210
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    :cond_c
    if-eqz v3, :cond_13

    .line 215
    .line 216
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 217
    .line 218
    .line 219
    move-result p1

    .line 220
    if-eqz p1, :cond_d

    .line 221
    .line 222
    goto :goto_5

    .line 223
    :cond_d
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->H0()Lteam/opay/pay/payment/BeneficiaryViewModel;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    invoke-virtual {p1, v3}, Lteam/opay/pay/payment/BeneficiaryViewModel;->Q(Ljava/util/ArrayList;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->L0()Log;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    iget-object p1, p1, Log;->l:Lteam/opay/pay/payment/tv/TvAccountInputText;

    .line 235
    .line 236
    invoke-virtual {p1}, Lteam/opay/pay/payment/tv/TvAccountInputText;->getBtnAdd()Landroidx/appcompat/widget/AppCompatImageView;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 241
    .line 242
    .line 243
    move-result p1

    .line 244
    if-nez p1, :cond_13

    .line 245
    .line 246
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->H0()Lteam/opay/pay/payment/BeneficiaryViewModel;

    .line 251
    .line 252
    .line 253
    move-result-object p2

    .line 254
    invoke-virtual {p1, p2}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->f0(Lteam/opay/pay/payment/BeneficiaryViewModel;)Z

    .line 255
    .line 256
    .line 257
    move-result p1

    .line 258
    invoke-virtual {p0, p1}, Lteam/opay/pay/payment/tv/TVTopupActivity;->D0(Z)V

    .line 259
    .line 260
    .line 261
    goto :goto_5

    .line 262
    :cond_e
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    invoke-virtual {p1}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->R()Lteam/opay/pay/util/SingleLiveEvent;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    check-cast p1, Lteam/opay/pay/cashier/LifePreOrder;

    .line 275
    .line 276
    if-eqz p1, :cond_13

    .line 277
    .line 278
    sget-object p2, Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity;->h:Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity$Companion;

    .line 279
    .line 280
    if-eqz p3, :cond_f

    .line 281
    .line 282
    const-string v0, "rsqData"

    .line 283
    .line 284
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 285
    .line 286
    .line 287
    move-result-object p3

    .line 288
    move-object v3, p3

    .line 289
    check-cast v3, Lteam/opay/pay/payment/voucherpackage/VoucherPackageResult;

    .line 290
    .line 291
    :cond_f
    invoke-virtual {p2, p1, v3}, Lteam/opay/pay/payment/voucherpackage/VoucherPackageActivity$Companion;->a(Lteam/opay/pay/cashier/LifePreOrder;Lteam/opay/pay/payment/voucherpackage/VoucherPackageResult;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {p0, p1}, Lteam/opay/pay/payment/tv/TVTopupActivity;->K1(Lteam/opay/pay/cashier/LifePreOrder;)V

    .line 295
    .line 296
    .line 297
    goto :goto_5

    .line 298
    :cond_10
    const/16 p1, 0xca

    .line 299
    .line 300
    if-eq p2, p1, :cond_11

    .line 301
    .line 302
    const/16 p3, 0xcb

    .line 303
    .line 304
    if-eq p2, p3, :cond_11

    .line 305
    .line 306
    const/16 p3, 0xcd

    .line 307
    .line 308
    if-eq p2, p3, :cond_11

    .line 309
    .line 310
    goto :goto_5

    .line 311
    :cond_11
    if-ne p2, p1, :cond_12

    .line 312
    .line 313
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M0()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    invoke-virtual {p1}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->s0()V

    .line 318
    .line 319
    .line 320
    :cond_12
    invoke-static {p0, v2, v1, v3}, Lteam/opay/pay/payment/tv/TVTopupActivity;->N1(Lteam/opay/pay/payment/tv/TVTopupActivity;ZILjava/lang/Object;)V

    .line 321
    .line 322
    .line 323
    :cond_13
    :goto_5
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 1
    invoke-static {p0}, Lhi3;->a(Landroidx/fragment/app/FragmentActivity;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lx7b;->a:Lx7b;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    new-array v1, v1, [Lkotlin/Pair;

    .line 11
    .line 12
    const-string v2, "COMMON_TV_leave"

    .line 13
    .line 14
    invoke-virtual {v0, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-super {p0}, Lteam/opay/core/android/InjectableActivity;->onBackPressed()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lteam/opay/pay/payment/tv/Hilt_TVTopupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    sget-object p1, Lse8;->a:Lse8;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    new-array v0, v0, [Lkotlin/Pair;

    .line 10
    .line 11
    const-string v1, "TV_show"

    .line 12
    .line 13
    invoke-virtual {p1, v1, v0}, Lse8;->c(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lteam/opay/pay/payment/tv/Hilt_TVTopupActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->j2()V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lteam/opay/pay/util/FlowBus;->a:Lteam/opay/pay/util/FlowBus;

    .line 8
    .line 9
    const-string v1, "save_beneficiary_success"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lteam/opay/pay/util/FlowBus;->a(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->O0()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 1
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/payment/tv/TVTopupActivity;->V1(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->initView()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->h2()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->j1()V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, p1}, Lteam/opay/pay/payment/tv/TVTopupActivity;->M1(Z)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->H0()Lteam/opay/pay/payment/BeneficiaryViewModel;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    new-instance v0, Lteam/opay/pay/payment/BeneficiaryReq;

    .line 22
    .line 23
    const-string v1, "tv"

    .line 24
    .line 25
    invoke-direct {v0, v1}, Lteam/opay/pay/payment/BeneficiaryReq;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0, p0}, Lteam/opay/pay/payment/BeneficiaryViewModel;->O(Lteam/opay/pay/payment/BeneficiaryReq;Lag8;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TVTopupActivity;->e1()V

    .line 32
    .line 33
    .line 34
    return-void
.end method
