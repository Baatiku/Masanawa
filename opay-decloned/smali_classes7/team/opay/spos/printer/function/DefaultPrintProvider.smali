.class public final Lteam/opay/spos/printer/function/DefaultPrintProvider;
.super Lteam/opay/spos/printer/function/Hilt_DefaultPrintProvider;
.source "DefaultPrintProvider.kt"


# annotations
.annotation build Lcom/google/auto/service/AutoService;
    value = {
        Lteam/opay/spos/printer/internal/IPrinterModuleFragment;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/spos/printer/function/DefaultPrintProvider$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 M2\u00020\u0001:\u0001MB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0003J\u000f\u0010\n\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0003J\u000f\u0010\u000b\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0003J\u000f\u0010\u000c\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\u0003J\u0017\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001f\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0019\u0010\u0019\u001a\u00020\u00062\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ!\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u001b2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u000f\u0010 \u001a\u00020\u001fH\u0016\u00a2\u0006\u0004\u0008 \u0010!J\u001f\u0010\"\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\"\u0010#J\u000f\u0010$\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008$\u0010%R\u001b\u0010+\u001a\u00020&8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\'\u0010(\u001a\u0004\u0008)\u0010*R\u001b\u00101\u001a\u00020,8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008-\u0010.\u001a\u0004\u0008/\u00100R\u001b\u00106\u001a\u0002028BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00083\u0010.\u001a\u0004\u00084\u00105R\u001b\u0010;\u001a\u0002078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00088\u0010.\u001a\u0004\u00089\u0010:R\u001b\u0010>\u001a\u0002078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008<\u0010.\u001a\u0004\u0008=\u0010:R\u001d\u0010C\u001a\u0004\u0018\u00010?8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008@\u0010.\u001a\u0004\u0008A\u0010BR\u001b\u0010G\u001a\u00020\u00118BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008D\u0010.\u001a\u0004\u0008E\u0010FR\u0016\u0010H\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008H\u0010IR\u0016\u0010K\u001a\u00020J8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008K\u0010L\u00a8\u0006N"
    }
    d2 = {
        "Lteam/opay/spos/printer/function/DefaultPrintProvider;",
        "Lteam/opay/spos/printer/internal/IPrinterModuleFragment;",
        "<init>",
        "()V",
        "Ljava/io/File;",
        "file",
        "",
        "downLoadImage",
        "(Ljava/io/File;)V",
        "checkImageData",
        "doPrint",
        "showPrintProcessView",
        "showPrintSecondCueView",
        "",
        "isBackground",
        "setPrintBackground",
        "(Z)V",
        "",
        "code",
        "deviceCode",
        "Lteam/opay/spos/printer/internal/PosPrintFinishInfo;",
        "getFinishPrintInfo",
        "(II)Lteam/opay/spos/printer/internal/PosPrintFinishInfo;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onActivityCreated",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Lteam/opay/spos/printer/internal/PrinterFragmentTag;",
        "getFragmentTag",
        "()Lteam/opay/spos/printer/internal/PrinterFragmentTag;",
        "finishFunction",
        "(II)V",
        "onBackPressed",
        "()Z",
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
        "",
        "imgUrl$delegate",
        "getImgUrl",
        "()Ljava/lang/String;",
        "imgUrl",
        "fileName$delegate",
        "getFileName",
        "fileName",
        "Lteam/opay/spos/printer/api/PosPrintExtendInfo;",
        "printInfo$delegate",
        "getPrintInfo",
        "()Lteam/opay/spos/printer/api/PosPrintExtendInfo;",
        "printInfo",
        "printCount$delegate",
        "getPrintCount",
        "()I",
        "printCount",
        "currentPrintIndex",
        "I",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "isFirstPrintSuccess",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Companion",
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

.field public static final Companion:Lteam/opay/spos/printer/function/DefaultPrintProvider$Companion;
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

.field private final fileName$delegate:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final imgUrl$delegate:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isFirstPrintSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final printCount$delegate:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final printInfo$delegate:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
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
    const-class v3, Lteam/opay/spos/printer/function/DefaultPrintProvider;

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
    sput-object v1, Lteam/opay/spos/printer/function/DefaultPrintProvider;->$$delegatedProperties:[Lzo7;

    .line 23
    .line 24
    new-instance v0, Lteam/opay/spos/printer/function/DefaultPrintProvider$Companion;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-direct {v0, v1}, Lteam/opay/spos/printer/function/DefaultPrintProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lteam/opay/spos/printer/function/DefaultPrintProvider;->Companion:Lteam/opay/spos/printer/function/DefaultPrintProvider$Companion;

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
    invoke-direct {p0, v0}, Lteam/opay/spos/printer/function/Hilt_DefaultPrintProvider;-><init>(I)V

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
    iput-object v0, p0, Lteam/opay/spos/printer/function/DefaultPrintProvider;->binding$delegate:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 14
    .line 15
    new-instance v0, Lteam/opay/spos/printer/function/DefaultPrintProvider$printProcessLayoutBinding$2;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lteam/opay/spos/printer/function/DefaultPrintProvider$printProcessLayoutBinding$2;-><init>(Lteam/opay/spos/printer/function/DefaultPrintProvider;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lteam/opay/spos/printer/function/DefaultPrintProvider;->printProcessLayoutBinding$delegate:Lid8;

    .line 25
    .line 26
    new-instance v0, Lteam/opay/spos/printer/function/DefaultPrintProvider$printSecondCueLayoutBinding$2;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lteam/opay/spos/printer/function/DefaultPrintProvider$printSecondCueLayoutBinding$2;-><init>(Lteam/opay/spos/printer/function/DefaultPrintProvider;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lteam/opay/spos/printer/function/DefaultPrintProvider;->printSecondCueLayoutBinding$delegate:Lid8;

    .line 36
    .line 37
    new-instance v0, Lteam/opay/spos/printer/function/DefaultPrintProvider$imgUrl$2;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lteam/opay/spos/printer/function/DefaultPrintProvider$imgUrl$2;-><init>(Lteam/opay/spos/printer/function/DefaultPrintProvider;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lteam/opay/spos/printer/function/DefaultPrintProvider;->imgUrl$delegate:Lid8;

    .line 47
    .line 48
    new-instance v0, Lteam/opay/spos/printer/function/DefaultPrintProvider$fileName$2;

    .line 49
    .line 50
    invoke-direct {v0, p0}, Lteam/opay/spos/printer/function/DefaultPrintProvider$fileName$2;-><init>(Lteam/opay/spos/printer/function/DefaultPrintProvider;)V

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p0, Lteam/opay/spos/printer/function/DefaultPrintProvider;->fileName$delegate:Lid8;

    .line 58
    .line 59
    new-instance v0, Lteam/opay/spos/printer/function/DefaultPrintProvider$printInfo$2;

    .line 60
    .line 61
    invoke-direct {v0, p0}, Lteam/opay/spos/printer/function/DefaultPrintProvider$printInfo$2;-><init>(Lteam/opay/spos/printer/function/DefaultPrintProvider;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p0, Lteam/opay/spos/printer/function/DefaultPrintProvider;->printInfo$delegate:Lid8;

    .line 69
    .line 70
    new-instance v0, Lteam/opay/spos/printer/function/DefaultPrintProvider$printCount$2;

    .line 71
    .line 72
    invoke-direct {v0, p0}, Lteam/opay/spos/printer/function/DefaultPrintProvider$printCount$2;-><init>(Lteam/opay/spos/printer/function/DefaultPrintProvider;)V

    .line 73
    .line 74
    .line 75
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iput-object v0, p0, Lteam/opay/spos/printer/function/DefaultPrintProvider;->printCount$delegate:Lid8;

    .line 80
    .line 81
    const/4 v0, 0x1

    .line 82
    iput v0, p0, Lteam/opay/spos/printer/function/DefaultPrintProvider;->currentPrintIndex:I

    .line 83
    .line 84
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 85
    .line 86
    const/4 v1, 0x0

    .line 87
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 88
    .line 89
    .line 90
    iput-object v0, p0, Lteam/opay/spos/printer/function/DefaultPrintProvider;->isFirstPrintSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 91
    .line 92
    return-void
.end method

.method public static final synthetic access$checkImageData(Lteam/opay/spos/printer/function/DefaultPrintProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->checkImageData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$doPrint(Lteam/opay/spos/printer/function/DefaultPrintProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->doPrint()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getBinding(Lteam/opay/spos/printer/function/DefaultPrintProvider;)Lnyb;
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->getBinding()Lnyb;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getCurrentPrintIndex$p(Lteam/opay/spos/printer/function/DefaultPrintProvider;)I
    .locals 0

    .line 1
    iget p0, p0, Lteam/opay/spos/printer/function/DefaultPrintProvider;->currentPrintIndex:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getFinishPrintInfo(Lteam/opay/spos/printer/function/DefaultPrintProvider;II)Lteam/opay/spos/printer/internal/PosPrintFinishInfo;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->getFinishPrintInfo(II)Lteam/opay/spos/printer/internal/PosPrintFinishInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getImgUrl(Lteam/opay/spos/printer/function/DefaultPrintProvider;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->getImgUrl()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getPrintCount(Lteam/opay/spos/printer/function/DefaultPrintProvider;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->getPrintCount()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$getPrintInfo(Lteam/opay/spos/printer/function/DefaultPrintProvider;)Lteam/opay/spos/printer/api/PosPrintExtendInfo;
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->getPrintInfo()Lteam/opay/spos/printer/api/PosPrintExtendInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$isFirstPrintSuccess$p(Lteam/opay/spos/printer/function/DefaultPrintProvider;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/spos/printer/function/DefaultPrintProvider;->isFirstPrintSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$setCurrentPrintIndex$p(Lteam/opay/spos/printer/function/DefaultPrintProvider;I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/spos/printer/function/DefaultPrintProvider;->currentPrintIndex:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$showPrintSecondCueView(Lteam/opay/spos/printer/function/DefaultPrintProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->showPrintSecondCueView()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final checkImageData()V
    .locals 5

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/spos/printer/function/BasePrintProviderFragment;->getPrintDataList()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lteam/opay/spos/printer/function/BasePrintProviderFragment;->getPrintDataList()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/lit8 v1, v1, -0x3

    .line 16
    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/lang/String;

    .line 22
    .line 23
    const-string v1, "image"

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x2

    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-static {v0, v1, v4, v3, v2}, Lkotlin/text/StringsKt;->X(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0}, Lteam/opay/spos/printer/function/BasePrintProviderFragment;->getPrintDataList()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p0}, Lteam/opay/spos/printer/function/BasePrintProviderFragment;->getPrintDataList()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    add-int/lit8 v1, v1, -0x4

    .line 47
    .line 48
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Ljava/lang/String;

    .line 53
    .line 54
    const-string v1, "separate"

    .line 55
    .line 56
    invoke-static {v0, v1, v4, v3, v2}, Lkotlin/text/StringsKt;->X(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_0

    .line 61
    .line 62
    invoke-virtual {p0}, Lteam/opay/spos/printer/function/BasePrintProviderFragment;->getPrintDataList()Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {p0}, Lteam/opay/spos/printer/function/BasePrintProviderFragment;->getPrintDataList()Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    add-int/lit8 v1, v1, -0x3

    .line 75
    .line 76
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->N0(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {p0, v0}, Lteam/opay/spos/printer/function/BasePrintProviderFragment;->setPrintDataList(Ljava/util/List;)V

    .line 81
    .line 82
    .line 83
    invoke-direct {p0}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->doPrint()V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    .line 88
    goto :goto_1

    .line 89
    :cond_0
    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 90
    .line 91
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    goto :goto_2

    .line 96
    :goto_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 97
    .line 98
    invoke-static {v0}, Lkotlin/d;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    :goto_2
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    if-eqz v0, :cond_2

    .line 111
    .line 112
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    if-nez v0, :cond_1

    .line 121
    .line 122
    const-string v0, ""

    .line 123
    .line 124
    :cond_1
    invoke-static {v1, v0}, Let;->v(Landroid/content/Context;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :cond_2
    return-void
.end method

.method private final doPrint()V
    .locals 7

    .line 1
    iget v0, p0, Lteam/opay/spos/printer/function/DefaultPrintProvider;->currentPrintIndex:I

    .line 2
    .line 3
    invoke-direct {p0}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->getPrintCount()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-le v0, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-direct {p0}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->showPrintProcessView()V

    .line 11
    .line 12
    .line 13
    iget v0, p0, Lteam/opay/spos/printer/function/DefaultPrintProvider;->currentPrintIndex:I

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    if-le v0, v1, :cond_5

    .line 17
    .line 18
    invoke-virtual {p0}, Lteam/opay/spos/printer/function/BasePrintProviderFragment;->getPrintDataList()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v2, Ljava/util/ArrayList;

    .line 23
    .line 24
    const/16 v3, 0xa

    .line 25
    .line 26
    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    .line 32
    .line 33
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_4

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Ljava/lang/String;

    .line 48
    .line 49
    sget v4, Lteam/opay/spos/printer/R$string;->printer_customer_copy:I

    .line 50
    .line 51
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    const-string v6, "getString(R.string.printer_customer_copy)"

    .line 56
    .line 57
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v3, v5, v1}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-eqz v5, :cond_1

    .line 65
    .line 66
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    sget v5, Lteam/opay/spos/printer/R$string;->printer_merchant_copy:I

    .line 74
    .line 75
    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    const-string v6, "getString(R.string.printer_merchant_copy)"

    .line 80
    .line 81
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-static {v3, v4, v5, v1}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    goto :goto_1

    .line 89
    :cond_1
    sget v4, Lteam/opay/spos/printer/R$string;->printer_customer:I

    .line 90
    .line 91
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    const-string v6, "getString(R.string.printer_customer)"

    .line 96
    .line 97
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-static {v3, v5, v1}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    if-eqz v5, :cond_2

    .line 105
    .line 106
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    sget v5, Lteam/opay/spos/printer/R$string;->printer_merchant:I

    .line 114
    .line 115
    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    const-string v6, "getString(R.string.printer_merchant)"

    .line 120
    .line 121
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-static {v3, v4, v5, v1}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    goto :goto_1

    .line 129
    :cond_2
    sget v4, Lteam/opay/spos/printer/R$string;->printer_customer_copy_reprint:I

    .line 130
    .line 131
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    const-string v6, "getString(R.string.printer_customer_copy_reprint)"

    .line 136
    .line 137
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-static {v3, v5, v1}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 141
    .line 142
    .line 143
    move-result v5

    .line 144
    if-eqz v5, :cond_3

    .line 145
    .line 146
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    sget v5, Lteam/opay/spos/printer/R$string;->printer_merchant_copy_reprint:I

    .line 154
    .line 155
    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    const-string v6, "getString(R.string.printer_merchant_copy_reprint)"

    .line 160
    .line 161
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-static {v3, v4, v5, v1}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    :cond_3
    :goto_1
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    goto/16 :goto_0

    .line 172
    .line 173
    :cond_4
    invoke-virtual {p0, v2}, Lteam/opay/spos/printer/function/BasePrintProviderFragment;->setPrintDataList(Ljava/util/List;)V

    .line 174
    .line 175
    .line 176
    :cond_5
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 177
    .line 178
    new-instance v0, Lteam/opay/spos/printer/OPayTicketComposer$Builder;

    .line 179
    .line 180
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-direct {v0, v1}, Lteam/opay/spos/printer/OPayTicketComposer$Builder;-><init>(Landroid/content/Context;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0}, Lteam/opay/spos/printer/OPayTicketComposer$Builder;->m()Lteam/opay/spos/printer/OPayTicketComposer;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-virtual {p0}, Lteam/opay/spos/printer/function/BasePrintProviderFragment;->getPrintDataList()Ljava/util/List;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    new-instance v2, Lteam/opay/spos/printer/internal/PrinterConfig;

    .line 196
    .line 197
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 198
    .line 199
    const/4 v4, 0x2

    .line 200
    const/4 v5, 0x0

    .line 201
    invoke-direct {v2, v3, v5, v4, v5}, Lteam/opay/spos/printer/internal/PrinterConfig;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0}, Lteam/opay/spos/printer/function/BasePrintProviderFragment;->getPrintCallBack()Lkyb;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    invoke-virtual {v0, v1, v2, v3}, Lteam/opay/spos/printer/OPayTicketComposer;->b(Ljava/util/List;Lteam/opay/spos/printer/internal/PrinterConfig;Lkyb;)V

    .line 209
    .line 210
    .line 211
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 212
    .line 213
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    .line 215
    .line 216
    goto :goto_2

    .line 217
    :catchall_0
    move-exception v0

    .line 218
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 219
    .line 220
    invoke-static {v0}, Lkotlin/d;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    :goto_2
    new-instance v0, Lteam/opay/spos/printer/function/DefaultPrintProvider$doPrint$3;

    .line 228
    .line 229
    invoke-direct {v0, p0}, Lteam/opay/spos/printer/function/DefaultPrintProvider$doPrint$3;-><init>(Lteam/opay/spos/printer/function/DefaultPrintProvider;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p0, v0}, Lteam/opay/spos/printer/function/BasePrintProviderFragment;->setPrintEndListener(Lhm6;)V

    .line 233
    .line 234
    .line 235
    return-void
.end method

.method private final downLoadImage(Ljava/io/File;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->getBinding()Lnyb;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lnyb;->c:Lteam/opay/core/widget/HttpViewGroup;

    .line 6
    .line 7
    const-string v1, "binding.httpViewGroup"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lg0g;->h(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Ljd7;->a:Ljd7;

    .line 16
    .line 17
    invoke-direct {p0}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->getImgUrl()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Lteam/opay/spos/printer/function/DefaultPrintProvider$downLoadImage$1;

    .line 22
    .line 23
    invoke-direct {v2, p0}, Lteam/opay/spos/printer/function/DefaultPrintProvider$downLoadImage$1;-><init>(Lteam/opay/spos/printer/function/DefaultPrintProvider;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1, p1, v2}, Ljd7;->a(Ljava/lang/String;Ljava/io/File;Lkotlin/jvm/functions/Function1;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private final getBinding()Lnyb;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/spos/printer/function/DefaultPrintProvider;->binding$delegate:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/spos/printer/function/DefaultPrintProvider;->$$delegatedProperties:[Lzo7;

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

.method private final getFileName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/spos/printer/function/DefaultPrintProvider;->fileName$delegate:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getFinishPrintInfo(II)Lteam/opay/spos/printer/internal/PosPrintFinishInfo;
    .locals 8

    .line 1
    new-instance v7, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;

    .line 2
    .line 3
    invoke-direct {p0}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->getPrintInfo()Lteam/opay/spos/printer/api/PosPrintExtendInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lteam/opay/spos/printer/api/PosPrintExtendInfo;->getPrintType()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v0, v1

    .line 16
    :goto_0
    const-string v2, "PRINT"

    .line 17
    .line 18
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    invoke-direct {p0}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->getPrintInfo()Lteam/opay/spos/printer/api/PosPrintExtendInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Lteam/opay/spos/printer/api/PosPrintExtendInfo;->getOrderType()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move-object v0, v1

    .line 34
    :goto_1
    const-string v2, ""

    .line 35
    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    move-object v4, v2

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    move-object v4, v0

    .line 41
    :goto_2
    invoke-direct {p0}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->getPrintInfo()Lteam/opay/spos/printer/api/PosPrintExtendInfo;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    invoke-virtual {v0}, Lteam/opay/spos/printer/api/PosPrintExtendInfo;->getOrderId()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    :cond_3
    if-nez v1, :cond_4

    .line 52
    .line 53
    move-object v5, v2

    .line 54
    goto :goto_3

    .line 55
    :cond_4
    move-object v5, v1

    .line 56
    :goto_3
    iget-object v0, p0, Lteam/opay/spos/printer/function/DefaultPrintProvider;->isFirstPrintSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    move-object v0, v7

    .line 63
    move v1, p1

    .line 64
    move v2, p2

    .line 65
    invoke-direct/range {v0 .. v6}, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;-><init>(IIZLjava/lang/String;Ljava/lang/String;Z)V

    .line 66
    .line 67
    .line 68
    return-object v7
.end method

.method private final getImgUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/spos/printer/function/DefaultPrintProvider;->imgUrl$delegate:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getPrintCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/spos/printer/function/DefaultPrintProvider;->printCount$delegate:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method private final getPrintInfo()Lteam/opay/spos/printer/api/PosPrintExtendInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/spos/printer/function/DefaultPrintProvider;->printInfo$delegate:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/spos/printer/api/PosPrintExtendInfo;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getPrintProcessLayoutBinding()Loyb;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/spos/printer/function/DefaultPrintProvider;->printProcessLayoutBinding$delegate:Lid8;

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
    iget-object v0, p0, Lteam/opay/spos/printer/function/DefaultPrintProvider;->printSecondCueLayoutBinding$delegate:Lid8;

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

.method private final setPrintBackground(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->getPrintProcessLayoutBinding()Loyb;

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-direct {p0}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->getBinding()Lnyb;

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
    invoke-direct {p0}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->getBinding()Lnyb;

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
    invoke-direct {p0}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->getBinding()Lnyb;

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
    invoke-direct {p0}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->getBinding()Lnyb;

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
    invoke-direct {p0}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->getBinding()Lnyb;

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
    invoke-direct {p0}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->getBinding()Lnyb;

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
    invoke-direct {p0}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->getPrintProcessLayoutBinding()Loyb;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    iget-object v3, v3, Loyb;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 37
    .line 38
    invoke-direct {p0}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->getPrintInfo()Lteam/opay/spos/printer/api/PosPrintExtendInfo;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    const/4 v5, 0x0

    .line 43
    if-eqz v4, :cond_0

    .line 44
    .line 45
    invoke-virtual {v4}, Lteam/opay/spos/printer/api/PosPrintExtendInfo;->getOrderStatus()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    if-eqz v4, :cond_0

    .line 50
    .line 51
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    const-string v7, "getDefault()"

    .line 56
    .line 57
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    const-string v6, "this as java.lang.String).toUpperCase(locale)"

    .line 65
    .line 66
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    move-object v4, v5

    .line 71
    :goto_0
    const-string v6, ""

    .line 72
    .line 73
    if-nez v4, :cond_1

    .line 74
    .line 75
    move-object v4, v6

    .line 76
    :cond_1
    const-string v7, "TRANSACTION"

    .line 77
    .line 78
    invoke-static {v4, v7, v2, v0, v5}, Lkotlin/text/StringsKt;->d0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    const-string v7, "format(format, *args)"

    .line 83
    .line 84
    if-eqz v4, :cond_4

    .line 85
    .line 86
    invoke-direct {p0}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->getPrintInfo()Lteam/opay/spos/printer/api/PosPrintExtendInfo;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    if-eqz v4, :cond_2

    .line 91
    .line 92
    invoke-virtual {v4}, Lteam/opay/spos/printer/api/PosPrintExtendInfo;->getOrderStatus()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    :cond_2
    if-nez v5, :cond_3

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_3
    move-object v6, v5

    .line 100
    goto :goto_2

    .line 101
    :cond_4
    sget-object v4, Lf6e;->a:Lf6e;

    .line 102
    .line 103
    sget v4, Lteam/opay/spos/printer/R$string;->printer_trans_status:I

    .line 104
    .line 105
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    const-string v8, "getString(R.string.printer_trans_status)"

    .line 110
    .line 111
    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-direct {p0}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->getPrintInfo()Lteam/opay/spos/printer/api/PosPrintExtendInfo;

    .line 115
    .line 116
    .line 117
    move-result-object v8

    .line 118
    if-eqz v8, :cond_5

    .line 119
    .line 120
    invoke-virtual {v8}, Lteam/opay/spos/printer/api/PosPrintExtendInfo;->getOrderStatus()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    :cond_5
    if-nez v5, :cond_6

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_6
    move-object v6, v5

    .line 128
    :goto_1
    new-array v5, v1, [Ljava/lang/Object;

    .line 129
    .line 130
    aput-object v6, v5, v2

    .line 131
    .line 132
    invoke-static {v5, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    :goto_2
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    .line 145
    .line 146
    invoke-direct {p0}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->getPrintProcessLayoutBinding()Loyb;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    iget-object v3, v3, Loyb;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 151
    .line 152
    sget-object v4, Lf6e;->a:Lf6e;

    .line 153
    .line 154
    sget v4, Lteam/opay/spos/printer/R$string;->printer_withdraw_printing:I

    .line 155
    .line 156
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    const-string v5, "getString(R.string.printer_withdraw_printing)"

    .line 161
    .line 162
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    iget v5, p0, Lteam/opay/spos/printer/function/DefaultPrintProvider;->currentPrintIndex:I

    .line 166
    .line 167
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    invoke-direct {p0}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->getPrintCount()I

    .line 172
    .line 173
    .line 174
    move-result v6

    .line 175
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    new-array v8, v0, [Ljava/lang/Object;

    .line 180
    .line 181
    aput-object v5, v8, v2

    .line 182
    .line 183
    aput-object v6, v8, v1

    .line 184
    .line 185
    invoke-static {v8, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    .line 198
    .line 199
    return-void
.end method

.method private final showPrintSecondCueView()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->getPrintSecondCueLayoutBinding()Lpyb;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->getBinding()Lnyb;

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
    invoke-direct {p0}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->getBinding()Lnyb;

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
    invoke-direct {p0, p1, p2}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->getFinishPrintInfo(II)Lteam/opay/spos/printer/internal/PosPrintFinishInfo;

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
    invoke-direct {p0}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->getPrintInfo()Lteam/opay/spos/printer/api/PosPrintExtendInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    sget-object v1, Lteam/opay/spos/printer/function/PrintRecordReport;->a:Lteam/opay/spos/printer/function/PrintRecordReport;

    .line 19
    .line 20
    invoke-virtual {v1, p1, p2, v0}, Lteam/opay/spos/printer/function/PrintRecordReport;->d(IILteam/opay/spos/printer/api/PosPrintExtendInfo;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-super {p0, p1, p2}, Lteam/opay/spos/printer/function/BasePrintProviderFragment;->finishFunction(II)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public getFragmentTag()Lteam/opay/spos/printer/internal/PrinterFragmentTag;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/spos/printer/internal/PrinterFragmentTag;->DEFAULT:Lteam/opay/spos/printer/internal/PrinterFragmentTag;

    .line 2
    .line 3
    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lteam/opay/core/common/base/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->getImgUrl()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-lez p1, :cond_1

    .line 13
    .line 14
    invoke-direct {p0}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->getFileName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "fileName"

    .line 19
    .line 20
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-lez p1, :cond_1

    .line 28
    .line 29
    sget-object p1, Ldda;->a:Ldda;

    .line 30
    .line 31
    invoke-direct {p0}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->getFileName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v1}, Ldda;->a(Ljava/lang/String;)Ljava/io/File;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    invoke-direct {p0}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->doPrint()V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-direct {p0, p1}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->downLoadImage(Ljava/io/File;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    invoke-direct {p0}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->doPrint()V

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
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
    invoke-direct {p0}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->getPrintInfo()Lteam/opay/spos/printer/api/PosPrintExtendInfo;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Lteam/opay/spos/printer/api/PosPrintExtendInfo;->isShowPrintDialog()Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    :goto_0
    invoke-direct {p0, p1}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->setPrintBackground(Z)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
