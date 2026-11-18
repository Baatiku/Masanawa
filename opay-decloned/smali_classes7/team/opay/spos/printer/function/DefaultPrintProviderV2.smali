.class public final Lteam/opay/spos/printer/function/DefaultPrintProviderV2;
.super Lteam/opay/spos/printer/function/Hilt_DefaultPrintProviderV2;
.source "DefaultPrintProviderV2.kt"


# annotations
.annotation build Lcom/google/auto/service/AutoService;
    value = {
        Lteam/opay/spos/printer/internal/IPrinterModuleFragment;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/spos/printer/function/DefaultPrintProviderV2$PrintEndCallBack;,
        Lteam/opay/spos/printer/function/DefaultPrintProviderV2$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 K2\u00020\u0001:\u0002KLB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0003J\u000f\u0010\u0010\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0003J\u000f\u0010\u0011\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0003J\u001f\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0019\u0010\u001a\u001a\u00020\u00062\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ!\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u001c2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u001f\u0010 \u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008 \u0010!J\u000f\u0010\"\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\"\u0010\nJ\u000f\u0010$\u001a\u00020#H\u0016\u00a2\u0006\u0004\u0008$\u0010%R\u001b\u0010+\u001a\u00020&8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\'\u0010(\u001a\u0004\u0008)\u0010*R\u001b\u00101\u001a\u00020,8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008-\u0010.\u001a\u0004\u0008/\u00100R\u001b\u00106\u001a\u0002028BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00083\u0010.\u001a\u0004\u00084\u00105R\u0016\u00107\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00087\u00108R\u0018\u0010:\u001a\u0004\u0018\u0001098\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008:\u0010;R*\u0010?\u001a\u0016\u0012\u0004\u0012\u00020=\u0018\u00010<j\n\u0012\u0004\u0012\u00020=\u0018\u0001`>8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008?\u0010@R\u0016\u0010A\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008A\u00108R\u001b\u0010F\u001a\u00020B8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008C\u0010.\u001a\u0004\u0008D\u0010ER\u0016\u0010H\u001a\u00020G8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008H\u0010IR\u0016\u0010J\u001a\u00020G8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008J\u0010I\u00a8\u0006M"
    }
    d2 = {
        "Lteam/opay/spos/printer/function/DefaultPrintProviderV2;",
        "Lteam/opay/spos/printer/internal/IPrinterModuleFragment;",
        "<init>",
        "()V",
        "",
        "isBackground",
        "",
        "setPrintBackground",
        "(Z)V",
        "isSuccessOrder",
        "()Z",
        "",
        "tag",
        "printReceipt",
        "(Ljava/lang/String;)V",
        "printSecond",
        "showPrintProcessView",
        "showPrintSecondCueView",
        "",
        "code",
        "deviceCode",
        "Lteam/opay/spos/printer/internal/PosPrintFinishInfo;",
        "getFinishPrintInfo",
        "(II)Lteam/opay/spos/printer/internal/PosPrintFinishInfo;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "finishFunction",
        "(II)V",
        "onBackPressed",
        "Lteam/opay/spos/printer/internal/PrinterFragmentTag;",
        "getFragmentTag",
        "()Lteam/opay/spos/printer/internal/PrinterFragmentTag;",
        "Lnyb;",
        "binding$delegate",
        "Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;",
        "getBinding",
        "()Lnyb;",
        "binding",
        "Loyb;",
        "printProcessLayoutBinding$delegate",
        "Lid8;",
        "getPrintProcessLayoutBinding",
        "()Loyb;",
        "printProcessLayoutBinding",
        "Lpyb;",
        "printSecondCueLayoutBinding$delegate",
        "getPrintSecondCueLayoutBinding",
        "()Lpyb;",
        "printSecondCueLayoutBinding",
        "printCount",
        "I",
        "Lteam/opay/spos/printer/api/PosPrintExtendInfo;",
        "printExtendInfo",
        "Lteam/opay/spos/printer/api/PosPrintExtendInfo;",
        "Ljava/util/ArrayList;",
        "Lteam/opay/spos/printer/api/PosPrintInfo;",
        "Lkotlin/collections/ArrayList;",
        "printOriginalInfo",
        "Ljava/util/ArrayList;",
        "currentPrintIndex",
        "Lteam/opay/spos/printer/OPayTicketComposer$Builder;",
        "printBuilder$delegate",
        "getPrintBuilder",
        "()Lteam/opay/spos/printer/OPayTicketComposer$Builder;",
        "printBuilder",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "isFirstPrintSuccess",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "isSecondPrinted",
        "Companion",
        "PrintEndCallBack",
        "spos-printer_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lzo7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lzo7<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lteam/opay/spos/printer/function/DefaultPrintProviderV2$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final FIRST_INDEX:I = 0x1

.field private static final NORMAL_PRINT_TOTAL_COUNT:I = 0x1


# instance fields
.field private final binding$delegate:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private currentPrintIndex:I

.field private isFirstPrintSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isSecondPrinted:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final printBuilder$delegate:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private printCount:I

.field private printExtendInfo:Lteam/opay/spos/printer/api/PosPrintExtendInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private printOriginalInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lteam/opay/spos/printer/api/PosPrintInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final printProcessLayoutBinding$delegate:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final printSecondCueLayoutBinding$delegate:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    .line 2
    .line 3
    const-string v1, "getBinding()Lteam/opay/spos/printer/databinding/PrinterFragmentCommonPrintProviderBinding;"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-class v3, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;

    .line 7
    .line 8
    const-string v4, "binding"

    .line 9
    .line 10
    invoke-direct {v0, v3, v4, v1, v2}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->i(Lkotlin/jvm/internal/PropertyReference1;)Lbp7;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x1

    .line 18
    new-array v1, v1, [Lzo7;

    .line 19
    .line 20
    aput-object v0, v1, v2

    .line 21
    .line 22
    sput-object v1, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->$$delegatedProperties:[Lzo7;

    .line 23
    .line 24
    new-instance v0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2$Companion;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-direct {v0, v1}, Lteam/opay/spos/printer/function/DefaultPrintProviderV2$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->Companion:Lteam/opay/spos/printer/function/DefaultPrintProviderV2$Companion;

    .line 31
    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    sget v0, Lteam/opay/spos/printer/R$layout;->printer_fragment_common_print_provider:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/spos/printer/function/Hilt_DefaultPrintProviderV2;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 7
    .line 8
    const-class v1, Lnyb;

    .line 9
    .line 10
    invoke-direct {v0, v1, p0}, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;-><init>(Ljava/lang/Class;Landroidx/fragment/app/Fragment;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->binding$delegate:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 14
    .line 15
    new-instance v0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2$printProcessLayoutBinding$2;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lteam/opay/spos/printer/function/DefaultPrintProviderV2$printProcessLayoutBinding$2;-><init>(Lteam/opay/spos/printer/function/DefaultPrintProviderV2;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->printProcessLayoutBinding$delegate:Lid8;

    .line 25
    .line 26
    new-instance v0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2$printSecondCueLayoutBinding$2;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lteam/opay/spos/printer/function/DefaultPrintProviderV2$printSecondCueLayoutBinding$2;-><init>(Lteam/opay/spos/printer/function/DefaultPrintProviderV2;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->printSecondCueLayoutBinding$delegate:Lid8;

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    iput v0, p0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->printCount:I

    .line 39
    .line 40
    iput v0, p0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->currentPrintIndex:I

    .line 41
    .line 42
    new-instance v0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2$printBuilder$2;

    .line 43
    .line 44
    invoke-direct {v0, p0}, Lteam/opay/spos/printer/function/DefaultPrintProviderV2$printBuilder$2;-><init>(Lteam/opay/spos/printer/function/DefaultPrintProviderV2;)V

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->printBuilder$delegate:Lid8;

    .line 52
    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->isFirstPrintSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 60
    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 62
    .line 63
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 64
    .line 65
    .line 66
    iput-object v0, p0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->isSecondPrinted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 67
    .line 68
    return-void
.end method

.method public static final synthetic access$getBinding(Lteam/opay/spos/printer/function/DefaultPrintProviderV2;)Lnyb;
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->getBinding()Lnyb;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getCurrentPrintIndex$p(Lteam/opay/spos/printer/function/DefaultPrintProviderV2;)I
    .locals 0

    .line 1
    iget p0, p0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->currentPrintIndex:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getFinishPrintInfo(Lteam/opay/spos/printer/function/DefaultPrintProviderV2;II)Lteam/opay/spos/printer/internal/PosPrintFinishInfo;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->getFinishPrintInfo(II)Lteam/opay/spos/printer/internal/PosPrintFinishInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getPrintCount$p(Lteam/opay/spos/printer/function/DefaultPrintProviderV2;)I
    .locals 0

    .line 1
    iget p0, p0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->printCount:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getPrintExtendInfo$p(Lteam/opay/spos/printer/function/DefaultPrintProviderV2;)Lteam/opay/spos/printer/api/PosPrintExtendInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->printExtendInfo:Lteam/opay/spos/printer/api/PosPrintExtendInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$isFirstPrintSuccess$p(Lteam/opay/spos/printer/function/DefaultPrintProviderV2;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->isFirstPrintSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$printSecond(Lteam/opay/spos/printer/function/DefaultPrintProviderV2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->printSecond()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setCurrentPrintIndex$p(Lteam/opay/spos/printer/function/DefaultPrintProviderV2;I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->currentPrintIndex:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setPrintBackground(Lteam/opay/spos/printer/function/DefaultPrintProviderV2;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->setPrintBackground(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$showPrintSecondCueView(Lteam/opay/spos/printer/function/DefaultPrintProviderV2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->showPrintSecondCueView()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final getBinding()Lnyb;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->binding$delegate:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->$$delegatedProperties:[Lzo7;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    aget-object v1, v1, v2

    .line 7
    .line 8
    invoke-virtual {v0, p0, v1}, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;->g(Landroidx/fragment/app/Fragment;Lzo7;)Lxyf;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lnyb;

    .line 13
    .line 14
    return-object v0
.end method

.method private final getFinishPrintInfo(II)Lteam/opay/spos/printer/internal/PosPrintFinishInfo;
    .locals 8

    .line 1
    new-instance v7, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->printExtendInfo:Lteam/opay/spos/printer/api/PosPrintExtendInfo;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lteam/opay/spos/printer/api/PosPrintExtendInfo;->getPrintType()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v1

    .line 14
    :goto_0
    const-string v2, "PRINT"

    .line 15
    .line 16
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    iget-object v0, p0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->printExtendInfo:Lteam/opay/spos/printer/api/PosPrintExtendInfo;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Lteam/opay/spos/printer/api/PosPrintExtendInfo;->getOrderType()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move-object v0, v1

    .line 30
    :goto_1
    const-string v2, ""

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    move-object v4, v2

    .line 35
    goto :goto_2

    .line 36
    :cond_2
    move-object v4, v0

    .line 37
    :goto_2
    iget-object v0, p0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->printExtendInfo:Lteam/opay/spos/printer/api/PosPrintExtendInfo;

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    invoke-virtual {v0}, Lteam/opay/spos/printer/api/PosPrintExtendInfo;->getOrderId()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    :cond_3
    if-nez v1, :cond_4

    .line 46
    .line 47
    move-object v5, v2

    .line 48
    goto :goto_3

    .line 49
    :cond_4
    move-object v5, v1

    .line 50
    :goto_3
    iget-object v0, p0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->isFirstPrintSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    move-object v0, v7

    .line 57
    move v1, p1

    .line 58
    move v2, p2

    .line 59
    invoke-direct/range {v0 .. v6}, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;-><init>(IIZLjava/lang/String;Ljava/lang/String;Z)V

    .line 60
    .line 61
    .line 62
    return-object v7
.end method

.method private final getPrintBuilder()Lteam/opay/spos/printer/OPayTicketComposer$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->printBuilder$delegate:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/spos/printer/OPayTicketComposer$Builder;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getPrintProcessLayoutBinding()Loyb;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->printProcessLayoutBinding$delegate:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Loyb;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getPrintSecondCueLayoutBinding()Lpyb;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->printSecondCueLayoutBinding$delegate:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lpyb;

    .line 8
    .line 9
    return-object v0
.end method

.method private final isSuccessOrder()Z
    .locals 7

    .line 1
    const-string v0, "APPROVED"

    .line 2
    .line 3
    const-string v1, "ACCEPT"

    .line 4
    .line 5
    const-string v2, "SUCCESS"

    .line 6
    .line 7
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->n([Ljava/lang/Object;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->printExtendInfo:Lteam/opay/spos/printer/api/PosPrintExtendInfo;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1}, Lteam/opay/spos/printer/api/PosPrintExtendInfo;->getOrderStatus()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    const-string v4, "getDefault()"

    .line 31
    .line 32
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string v3, "this as java.lang.String).toUpperCase(locale)"

    .line 40
    .line 41
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    move-object v1, v2

    .line 46
    :goto_0
    if-nez v1, :cond_1

    .line 47
    .line 48
    const-string v1, ""

    .line 49
    .line 50
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    const/4 v4, 0x0

    .line 59
    if-eqz v3, :cond_3

    .line 60
    .line 61
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    move-object v5, v3

    .line 66
    check-cast v5, Ljava/lang/String;

    .line 67
    .line 68
    const/4 v6, 0x2

    .line 69
    invoke-static {v1, v5, v4, v6, v2}, Lkotlin/text/StringsKt;->d0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-eqz v5, :cond_2

    .line 74
    .line 75
    move-object v2, v3

    .line 76
    :cond_3
    check-cast v2, Ljava/lang/CharSequence;

    .line 77
    .line 78
    const/4 v0, 0x1

    .line 79
    if-eqz v2, :cond_4

    .line 80
    .line 81
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-nez v1, :cond_5

    .line 86
    .line 87
    :cond_4
    const/4 v4, 0x1

    .line 88
    :cond_5
    xor-int/2addr v0, v4

    .line 89
    return v0
.end method

.method private final printReceipt(Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->showPrintProcessView()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lteam/opay/spos/printer/internal/PrintTransformWrapper;

    .line 5
    .line 6
    invoke-direct {p0}, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->getPrintBuilder()Lteam/opay/spos/printer/OPayTicketComposer$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Lteam/opay/spos/printer/internal/PrintTransformWrapper;-><init>(Lteam/opay/spos/printer/OPayTicketComposer$Builder;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->printOriginalInfo:Ljava/util/ArrayList;

    .line 18
    .line 19
    iget-object v3, p0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->printExtendInfo:Lteam/opay/spos/printer/api/PosPrintExtendInfo;

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    invoke-virtual {v3}, Lteam/opay/spos/printer/api/PosPrintExtendInfo;->getPrintType()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object v3, v4

    .line 30
    :goto_0
    if-nez v3, :cond_1

    .line 31
    .line 32
    const-string v3, ""

    .line 33
    .line 34
    :cond_1
    invoke-virtual {v0, v1, v2, v3, p1}, Lteam/opay/spos/printer/internal/PrintTransformWrapper;->b(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p0, p1}, Lteam/opay/spos/printer/function/BasePrintProviderFragment;->setPrintDataList(Ljava/util/List;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->printExtendInfo:Lteam/opay/spos/printer/api/PosPrintExtendInfo;

    .line 42
    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    invoke-virtual {p1}, Lteam/opay/spos/printer/api/PosPrintExtendInfo;->getPrintType()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move-object p1, v4

    .line 51
    :goto_1
    const-string v0, "REPRINT"

    .line 52
    .line 53
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    const/4 v0, 0x2

    .line 58
    const/4 v1, 0x1

    .line 59
    if-nez p1, :cond_3

    .line 60
    .line 61
    iget p1, p0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->currentPrintIndex:I

    .line 62
    .line 63
    if-le p1, v1, :cond_6

    .line 64
    .line 65
    :cond_3
    invoke-virtual {p0}, Lteam/opay/spos/printer/function/BasePrintProviderFragment;->getPrintDataList()Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const/4 v2, 0x0

    .line 74
    const/4 v3, 0x0

    .line 75
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    const/4 v6, -0x1

    .line 80
    if-eqz v5, :cond_5

    .line 81
    .line 82
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    check-cast v5, Ljava/lang/String;

    .line 87
    .line 88
    sget-object v7, Lteam/opay/spos/printer/internal/PrintType;->NOTE_ADVERT:Lteam/opay/spos/printer/internal/PrintType;

    .line 89
    .line 90
    invoke-virtual {v7}, Lteam/opay/spos/printer/internal/PrintType;->getValue()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    invoke-static {v5, v7, v2, v0, v4}, Lkotlin/text/StringsKt;->X(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    if-eqz v5, :cond_4

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_5
    const/4 v3, -0x1

    .line 105
    :goto_3
    if-eq v3, v6, :cond_6

    .line 106
    .line 107
    invoke-virtual {p0}, Lteam/opay/spos/printer/function/BasePrintProviderFragment;->getPrintDataList()Ljava/util/List;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->T0(Ljava/util/Collection;)Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, p1}, Lteam/opay/spos/printer/function/BasePrintProviderFragment;->setPrintDataList(Ljava/util/List;)V

    .line 119
    .line 120
    .line 121
    :cond_6
    new-instance p1, Lteam/opay/spos/printer/internal/PrintTransformWrapper;

    .line 122
    .line 123
    invoke-direct {p1, v4, v1, v4}, Lteam/opay/spos/printer/internal/PrintTransformWrapper;-><init>(Lteam/opay/spos/printer/OPayTicketComposer$Builder;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Lteam/opay/spos/printer/function/BasePrintProviderFragment;->getPrintDataList()Ljava/util/List;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->T0(Ljava/util/Collection;)Ljava/util/List;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {p1, v1}, Lteam/opay/spos/printer/internal/PrintTransformWrapper;->g(Ljava/util/List;)Ljava/util/List;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    if-eqz p1, :cond_7

    .line 139
    .line 140
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->R0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    if-nez p1, :cond_8

    .line 145
    .line 146
    :cond_7
    invoke-virtual {p0}, Lteam/opay/spos/printer/function/BasePrintProviderFragment;->getPrintDataList()Ljava/util/List;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    :cond_8
    invoke-virtual {p0, p1}, Lteam/opay/spos/printer/function/BasePrintProviderFragment;->setPrintDataList(Ljava/util/List;)V

    .line 151
    .line 152
    .line 153
    invoke-direct {p0}, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->getPrintBuilder()Lteam/opay/spos/printer/OPayTicketComposer$Builder;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-virtual {p1}, Lteam/opay/spos/printer/OPayTicketComposer$Builder;->m()Lteam/opay/spos/printer/OPayTicketComposer;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-virtual {p0}, Lteam/opay/spos/printer/function/BasePrintProviderFragment;->getPrintDataList()Ljava/util/List;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    new-instance v2, Lteam/opay/spos/printer/internal/PrinterConfig;

    .line 166
    .line 167
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 168
    .line 169
    invoke-direct {v2, v3, v4, v0, v4}, Lteam/opay/spos/printer/internal/PrinterConfig;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0}, Lteam/opay/spos/printer/function/BasePrintProviderFragment;->getPrintCallBack()Lkyb;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-virtual {p1, v1, v2, v0}, Lteam/opay/spos/printer/OPayTicketComposer;->b(Ljava/util/List;Lteam/opay/spos/printer/internal/PrinterConfig;Lkyb;)V

    .line 177
    .line 178
    .line 179
    return-void
.end method

.method private final printSecond()V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->isSecondPrinted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->isSecondPrinted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 14
    .line 15
    .line 16
    const-string v0, "merchant"

    .line 17
    .line 18
    invoke-direct {p0, v0}, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->printReceipt(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private final setPrintBackground(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->getPrintProcessLayoutBinding()Loyb;

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-direct {p0}, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->getBinding()Lnyb;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object p1, p1, Lnyb;->b:Landroid/widget/FrameLayout;

    .line 11
    .line 12
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget v1, Lteam/opay/spos/printer/R$color;->printer_black_alpha_50:I

    .line 17
    .line 18
    invoke-static {v0, v1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-direct {p0}, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->getBinding()Lnyb;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object p1, p1, Lnyb;->b:Landroid/widget/FrameLayout;

    .line 31
    .line 32
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sget v1, Lteam/opay/spos/printer/R$color;->printer_transparent:I

    .line 37
    .line 38
    invoke-static {v0, v1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 43
    .line 44
    .line 45
    invoke-direct {p0}, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->getBinding()Lnyb;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget-object p1, p1, Lnyb;->e:Landroid/view/ViewStub;

    .line 50
    .line 51
    const-string v0, "binding.viewSecondCue"

    .line 52
    .line 53
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-static {p1}, Lg0g;->d(Landroid/view/View;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0}, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->getBinding()Lnyb;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iget-object p1, p1, Lnyb;->d:Landroid/view/ViewStub;

    .line 64
    .line 65
    const-string v0, "binding.viewProcess"

    .line 66
    .line 67
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-static {p1}, Lg0g;->d(Landroid/view/View;)V

    .line 71
    .line 72
    .line 73
    :goto_0
    return-void
.end method

.method private final showPrintProcessView()V
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-direct {p0}, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->getBinding()Lnyb;

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    iget-object v3, v3, Lnyb;->d:Landroid/view/ViewStub;

    .line 9
    .line 10
    const-string v4, "binding.viewProcess"

    .line 11
    .line 12
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v3}, Lg0g;->h(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->getBinding()Lnyb;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    iget-object v3, v3, Lnyb;->e:Landroid/view/ViewStub;

    .line 23
    .line 24
    const-string v4, "binding.viewSecondCue"

    .line 25
    .line 26
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v3}, Lg0g;->d(Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->getPrintProcessLayoutBinding()Loyb;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    iget-object v3, v3, Loyb;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 37
    .line 38
    iget-object v4, p0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->printExtendInfo:Lteam/opay/spos/printer/api/PosPrintExtendInfo;

    .line 39
    .line 40
    const/4 v5, 0x0

    .line 41
    if-eqz v4, :cond_0

    .line 42
    .line 43
    invoke-virtual {v4}, Lteam/opay/spos/printer/api/PosPrintExtendInfo;->getOrderStatus()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    if-eqz v4, :cond_0

    .line 48
    .line 49
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    const-string v7, "getDefault()"

    .line 54
    .line 55
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    const-string v6, "this as java.lang.String).toUpperCase(locale)"

    .line 63
    .line 64
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    move-object v4, v5

    .line 69
    :goto_0
    const-string v6, ""

    .line 70
    .line 71
    if-nez v4, :cond_1

    .line 72
    .line 73
    move-object v4, v6

    .line 74
    :cond_1
    const-string v7, "TRANSACTION"

    .line 75
    .line 76
    invoke-static {v4, v7, v2, v0, v5}, Lkotlin/text/StringsKt;->d0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    const-string v7, "format(format, *args)"

    .line 81
    .line 82
    if-eqz v4, :cond_4

    .line 83
    .line 84
    iget-object v4, p0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->printExtendInfo:Lteam/opay/spos/printer/api/PosPrintExtendInfo;

    .line 85
    .line 86
    if-eqz v4, :cond_2

    .line 87
    .line 88
    invoke-virtual {v4}, Lteam/opay/spos/printer/api/PosPrintExtendInfo;->getOrderStatus()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    :cond_2
    if-nez v5, :cond_3

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_3
    move-object v6, v5

    .line 96
    goto :goto_2

    .line 97
    :cond_4
    sget-object v4, Lf6e;->a:Lf6e;

    .line 98
    .line 99
    sget v4, Lteam/opay/spos/printer/R$string;->printer_trans_status:I

    .line 100
    .line 101
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    const-string v8, "getString(R.string.printer_trans_status)"

    .line 106
    .line 107
    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget-object v8, p0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->printExtendInfo:Lteam/opay/spos/printer/api/PosPrintExtendInfo;

    .line 111
    .line 112
    if-eqz v8, :cond_5

    .line 113
    .line 114
    invoke-virtual {v8}, Lteam/opay/spos/printer/api/PosPrintExtendInfo;->getOrderStatus()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    :cond_5
    if-nez v5, :cond_6

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_6
    move-object v6, v5

    .line 122
    :goto_1
    new-array v5, v1, [Ljava/lang/Object;

    .line 123
    .line 124
    aput-object v6, v5, v2

    .line 125
    .line 126
    invoke-static {v5, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    :goto_2
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    .line 139
    .line 140
    invoke-direct {p0}, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->getPrintProcessLayoutBinding()Loyb;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    iget-object v3, v3, Loyb;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 145
    .line 146
    sget-object v4, Lf6e;->a:Lf6e;

    .line 147
    .line 148
    sget v4, Lteam/opay/spos/printer/R$string;->printer_withdraw_printing:I

    .line 149
    .line 150
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    const-string v5, "getString(R.string.printer_withdraw_printing)"

    .line 155
    .line 156
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    iget v5, p0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->currentPrintIndex:I

    .line 160
    .line 161
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    iget v6, p0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->printCount:I

    .line 166
    .line 167
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    new-array v8, v0, [Ljava/lang/Object;

    .line 172
    .line 173
    aput-object v5, v8, v2

    .line 174
    .line 175
    aput-object v6, v8, v1

    .line 176
    .line 177
    invoke-static {v8, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    .line 190
    .line 191
    return-void
.end method

.method private final showPrintSecondCueView()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->getPrintSecondCueLayoutBinding()Lpyb;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->getBinding()Lnyb;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v0, v0, Lnyb;->d:Landroid/view/ViewStub;

    .line 9
    .line 10
    const-string v1, "binding.viewProcess"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lg0g;->d(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->getBinding()Lnyb;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v0, v0, Lnyb;->e:Landroid/view/ViewStub;

    .line 23
    .line 24
    const-string v1, "binding.viewSecondCue"

    .line 25
    .line 26
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lg0g;->h(Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public finishFunction(II)V
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/spos/printer/internal/PrintActionDispatch;->a:Lteam/opay/spos/printer/internal/PrintActionDispatch;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->getFinishPrintInfo(II)Lteam/opay/spos/printer/internal/PosPrintFinishInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lteam/opay/spos/printer/internal/PrintActionDispatch;->e(Lteam/opay/spos/printer/internal/PosPrintFinishInfo;)V

    .line 8
    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->printExtendInfo:Lteam/opay/spos/printer/api/PosPrintExtendInfo;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    sget-object v1, Lteam/opay/spos/printer/function/PrintRecordReport;->a:Lteam/opay/spos/printer/function/PrintRecordReport;

    .line 17
    .line 18
    invoke-virtual {v1, p1, p2, v0}, Lteam/opay/spos/printer/function/PrintRecordReport;->d(IILteam/opay/spos/printer/api/PosPrintExtendInfo;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-super {p0, p1, p2}, Lteam/opay/spos/printer/function/BasePrintProviderFragment;->finishFunction(II)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public getFragmentTag()Lteam/opay/spos/printer/internal/PrinterFragmentTag;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/spos/printer/internal/PrinterFragmentTag;->DEFAULT_V2:Lteam/opay/spos/printer/internal/PrinterFragmentTag;

    .line 2
    .line 3
    return-object v0
.end method

.method public onBackPressed()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lteam/opay/spos/printer/function/BasePrintProviderFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x0

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const-string v1, "printOtherInfo"

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object p1, v0

    .line 21
    :goto_0
    instance-of v1, p1, Lteam/opay/spos/printer/api/PosPrintExtendInfo;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    check-cast p1, Lteam/opay/spos/printer/api/PosPrintExtendInfo;

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move-object p1, v0

    .line 29
    :goto_1
    iput-object p1, p0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->printExtendInfo:Lteam/opay/spos/printer/api/PosPrintExtendInfo;

    .line 30
    .line 31
    invoke-direct {p0}, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->isSuccessOrder()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    const/4 v1, 0x2

    .line 36
    const/4 v2, 0x1

    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    iget-object p1, p0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->printExtendInfo:Lteam/opay/spos/printer/api/PosPrintExtendInfo;

    .line 40
    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    invoke-virtual {p1}, Lteam/opay/spos/printer/api/PosPrintExtendInfo;->isSupportSecond()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-ne p1, v2, :cond_2

    .line 48
    .line 49
    sget-object p1, Lcl8;->c:Lcl8;

    .line 50
    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v4, "receiptPrintNumber : "

    .line 57
    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    sget-object v4, Lteam/opay/spos/printer/internal/PrinterStorge;->a:Lteam/opay/spos/printer/internal/PrinterStorge;

    .line 62
    .line 63
    invoke-virtual {v4}, Lteam/opay/spos/printer/internal/PrinterStorge;->f()I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-static {p1, v3, v0, v1, v0}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4}, Lteam/opay/spos/printer/internal/PrinterStorge;->f()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    goto :goto_2

    .line 82
    :cond_2
    const/4 p1, 0x1

    .line 83
    :goto_2
    iput p1, p0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->printCount:I

    .line 84
    .line 85
    iget-object v3, p0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->printExtendInfo:Lteam/opay/spos/printer/api/PosPrintExtendInfo;

    .line 86
    .line 87
    if-nez v3, :cond_3

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {v3, p1}, Lteam/opay/spos/printer/api/PosPrintExtendInfo;->setPrintCount(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :goto_3
    :try_start_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 98
    .line 99
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    if-eqz p1, :cond_4

    .line 104
    .line 105
    const-string v3, "DATA"

    .line 106
    .line 107
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    goto :goto_4

    .line 112
    :catchall_0
    move-exception p1

    .line 113
    goto :goto_5

    .line 114
    :cond_4
    move-object p1, v0

    .line 115
    :goto_4
    new-instance v3, Lcom/google/gson/Gson;

    .line 116
    .line 117
    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 118
    .line 119
    .line 120
    new-instance v4, Lteam/opay/spos/printer/function/DefaultPrintProviderV2$a;

    .line 121
    .line 122
    invoke-direct {v4}, Lteam/opay/spos/printer/function/DefaultPrintProviderV2$a;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    invoke-virtual {v3, p1, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    const-string v3, "null cannot be cast to non-null type java.util.ArrayList<team.opay.spos.printer.api.PosPrintInfo>{ kotlin.collections.TypeAliasesKt.ArrayList<team.opay.spos.printer.api.PosPrintInfo> }"

    .line 134
    .line 135
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    check-cast p1, Ljava/util/ArrayList;

    .line 139
    .line 140
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    goto :goto_6

    .line 145
    :goto_5
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 146
    .line 147
    invoke-static {p1}, Lkotlin/d;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    :goto_6
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    if-eqz v3, :cond_5

    .line 160
    .line 161
    const v4, -0x186a2

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0, v2, v4}, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->finishFunction(II)V

    .line 165
    .line 166
    .line 167
    sget-object v2, Lcl8;->c:Lcl8;

    .line 168
    .line 169
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    invoke-static {v2, v3, v0, v1, v0}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    .line 181
    .line 182
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .line 184
    .line 185
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    if-eqz v1, :cond_6

    .line 190
    .line 191
    move-object p1, v0

    .line 192
    :cond_6
    check-cast p1, Ljava/util/ArrayList;

    .line 193
    .line 194
    iput-object p1, p0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->printOriginalInfo:Ljava/util/ArrayList;

    .line 195
    .line 196
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lteam/opay/core/common/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->printExtendInfo:Lteam/opay/spos/printer/api/PosPrintExtendInfo;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lteam/opay/spos/printer/api/PosPrintExtendInfo;->isShowPrintDialog()Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    :goto_0
    invoke-direct {p0, p1}, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->setPrintBackground(Z)V

    .line 26
    .line 27
    .line 28
    sget-object p1, Lteam/opay/spos/printer/internal/PrintActionDispatch;->a:Lteam/opay/spos/printer/internal/PrintActionDispatch;

    .line 29
    .line 30
    iget-object p2, p0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->printExtendInfo:Lteam/opay/spos/printer/api/PosPrintExtendInfo;

    .line 31
    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    invoke-virtual {p2}, Lteam/opay/spos/printer/api/PosPrintExtendInfo;->getOrderId()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const/4 p2, 0x0

    .line 40
    :goto_1
    if-nez p2, :cond_2

    .line 41
    .line 42
    const-string p2, ""

    .line 43
    .line 44
    :cond_2
    invoke-virtual {p1, p2}, Lteam/opay/spos/printer/internal/PrintActionDispatch;->f(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string p1, "customer"

    .line 48
    .line 49
    invoke-direct {p0, p1}, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->printReceipt(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    new-instance p1, Lteam/opay/spos/printer/function/DefaultPrintProviderV2$PrintEndCallBack;

    .line 53
    .line 54
    invoke-direct {p1, p0}, Lteam/opay/spos/printer/function/DefaultPrintProviderV2$PrintEndCallBack;-><init>(Lteam/opay/spos/printer/function/DefaultPrintProviderV2;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1}, Lteam/opay/spos/printer/function/BasePrintProviderFragment;->setPrintEndListener(Lhm6;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method
