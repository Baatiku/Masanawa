.class public final Lteam/opay/spos/printer/PosPrinter;
.super Ljava/lang/Object;
.source "PosPrinter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/spos/printer/PosPrinter$Companion;,
        Lteam/opay/spos/printer/PosPrinter$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u000e\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u0000 G2\u00020\u0001:\u0001HB%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001b\u0010\r\u001a\u00020\u000c2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00010\n\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001d\u0010\u0010\u001a\u00020\u000c2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00010\nH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u000eJ\u001f\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u0018J\u0017\u0010\u001c\u001a\u00020\u000c2\u0006\u0010\u001b\u001a\u00020\u001aH\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0019\u0010\u001f\u001a\u0004\u0018\u00010\u001e2\u0006\u0010\u001b\u001a\u00020\u001aH\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0017\u0010!\u001a\u00020\u000c2\u0006\u0010\u001b\u001a\u00020\u001aH\u0002\u00a2\u0006\u0004\u0008!\u0010\u001dJ\u0019\u0010#\u001a\u00020\u000c2\u0008\u0010\"\u001a\u0004\u0018\u00010\u001eH\u0002\u00a2\u0006\u0004\u0008#\u0010$J\u0017\u0010\'\u001a\u00020\u000c2\u0006\u0010&\u001a\u00020%H\u0002\u00a2\u0006\u0004\u0008\'\u0010(J\u001f\u0010+\u001a\u00020\u000c2\u0006\u0010&\u001a\u00020%2\u0006\u0010*\u001a\u00020)H\u0002\u00a2\u0006\u0004\u0008+\u0010,J-\u00100\u001a\u00020\u000c2\u0006\u0010*\u001a\u00020)2\u0006\u0010.\u001a\u00020-2\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\nH\u0002\u00a2\u0006\u0004\u00080\u00101J\u001f\u00104\u001a\u00020\u000c2\u0006\u00102\u001a\u00020-2\u0006\u00103\u001a\u00020-H\u0002\u00a2\u0006\u0004\u00084\u00105R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00086\u00107R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00088\u00109R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008:\u0010;R\u001c\u0010@\u001a\u0008\u0012\u0004\u0012\u00020=0<8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008>\u0010?R\u001d\u0010F\u001a\u0004\u0018\u00010A8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008B\u0010C\u001a\u0004\u0008D\u0010E\u00a8\u0006I"
    }
    d2 = {
        "Lteam/opay/spos/printer/PosPrinter;",
        "",
        "Landroid/content/Context;",
        "context",
        "Lkyb;",
        "printerCallback",
        "Lteam/opay/spos/printer/internal/PrinterConfig;",
        "printerConfig",
        "<init>",
        "(Landroid/content/Context;Lkyb;Lteam/opay/spos/printer/internal/PrinterConfig;)V",
        "",
        "content",
        "",
        "v",
        "(Ljava/util/List;)V",
        "data",
        "n",
        "Lteam/opay/spos/printer/internal/PrintType;",
        "printType",
        "",
        "line",
        "o",
        "(Lteam/opay/spos/printer/internal/PrintType;Ljava/lang/String;)V",
        "u",
        "()V",
        "q",
        "Landroid/view/View;",
        "view",
        "w",
        "(Landroid/view/View;)V",
        "Landroid/graphics/Bitmap;",
        "x",
        "(Landroid/view/View;)Landroid/graphics/Bitmap;",
        "t",
        "bitmap",
        "k",
        "(Landroid/graphics/Bitmap;)V",
        "Lfzb;",
        "worker",
        "l",
        "(Lfzb;)V",
        "Lteam/opay/spos/printer/delegate/OPrinterDelegate;",
        "delegate",
        "p",
        "(Lfzb;Lteam/opay/spos/printer/delegate/OPrinterDelegate;)V",
        "",
        "printIndex",
        "bitmaps",
        "s",
        "(Lteam/opay/spos/printer/delegate/OPrinterDelegate;ILjava/util/List;)V",
        "printerResult",
        "errorCode",
        "m",
        "(II)V",
        "a",
        "Landroid/content/Context;",
        "b",
        "Lkyb;",
        "c",
        "Lteam/opay/spos/printer/internal/PrinterConfig;",
        "",
        "Lteam/opay/spos/printer/utils/PrintItemPattern;",
        "d",
        "Ljava/util/List;",
        "printItems",
        "Lka7;",
        "e",
        "Lid8;",
        "r",
        "()Lka7;",
        "printerGenerator",
        "f",
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
.field public static final f:Lteam/opay/spos/printer/PosPrinter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lkyb;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final c:Lteam/opay/spos/printer/internal/PrinterConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/spos/printer/utils/PrintItemPattern;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/spos/printer/PosPrinter$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/spos/printer/PosPrinter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/spos/printer/PosPrinter;->f:Lteam/opay/spos/printer/PosPrinter$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkyb;Lteam/opay/spos/printer/internal/PrinterConfig;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkyb;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lteam/opay/spos/printer/internal/PrinterConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "printerConfig"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lteam/opay/spos/printer/PosPrinter;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lteam/opay/spos/printer/PosPrinter;->b:Lkyb;

    .line 4
    iput-object p3, p0, Lteam/opay/spos/printer/PosPrinter;->c:Lteam/opay/spos/printer/internal/PrinterConfig;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lteam/opay/spos/printer/PosPrinter;->d:Ljava/util/List;

    .line 6
    sget-object p1, Lteam/opay/spos/printer/PosPrinter$printerGenerator$2;->INSTANCE:Lteam/opay/spos/printer/PosPrinter$printerGenerator$2;

    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object p1

    iput-object p1, p0, Lteam/opay/spos/printer/PosPrinter;->e:Lid8;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkyb;Lteam/opay/spos/printer/internal/PrinterConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 7
    new-instance p3, Lteam/opay/spos/printer/internal/PrinterConfig;

    const/4 p4, 0x3

    invoke-direct {p3, v0, v0, p4, v0}, Lteam/opay/spos/printer/internal/PrinterConfig;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/spos/printer/PosPrinter;-><init>(Landroid/content/Context;Lkyb;Lteam/opay/spos/printer/internal/PrinterConfig;)V

    return-void
.end method

.method public static final synthetic a(Lteam/opay/spos/printer/PosPrinter;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/spos/printer/PosPrinter;->m(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic b(Lteam/opay/spos/printer/PosPrinter;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/spos/printer/PosPrinter;->n(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic c(Lteam/opay/spos/printer/PosPrinter;Lfzb;Lteam/opay/spos/printer/delegate/OPrinterDelegate;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/spos/printer/PosPrinter;->p(Lfzb;Lteam/opay/spos/printer/delegate/OPrinterDelegate;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic d(Lteam/opay/spos/printer/PosPrinter;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/spos/printer/PosPrinter;->q()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic e(Lteam/opay/spos/printer/PosPrinter;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/spos/printer/PosPrinter;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic f(Lteam/opay/spos/printer/PosPrinter;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/spos/printer/PosPrinter;->d:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic g(Lteam/opay/spos/printer/PosPrinter;)Lkyb;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/spos/printer/PosPrinter;->b:Lkyb;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic h(Lteam/opay/spos/printer/PosPrinter;)Lteam/opay/spos/printer/internal/PrinterConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/spos/printer/PosPrinter;->c:Lteam/opay/spos/printer/internal/PrinterConfig;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic i(Lteam/opay/spos/printer/PosPrinter;)Lka7;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/spos/printer/PosPrinter;->r()Lka7;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic j(Lteam/opay/spos/printer/PosPrinter;Lteam/opay/spos/printer/delegate/OPrinterDelegate;ILjava/util/List;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/spos/printer/PosPrinter;->s(Lteam/opay/spos/printer/delegate/OPrinterDelegate;ILjava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final k(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/spos/printer/PosPrinter;->d:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;

    .line 4
    .line 5
    invoke-direct {v1}, Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p1}, Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;->i(Landroid/graphics/Bitmap;)Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;->h()Lteam/opay/spos/printer/utils/PrintItemPattern;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v1, "Builder().image(bitmap).create()"

    .line 17
    .line 18
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final l(Lfzb;)V
    .locals 4

    .line 1
    new-instance v0, Lteam/opay/spos/printer/PosPrinter$beginPrintTransaction$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lteam/opay/spos/printer/PosPrinter$beginPrintTransaction$1;-><init>(Lteam/opay/spos/printer/PosPrinter;Lfzb;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    const/4 v1, 0x0

    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    invoke-static {v2, v3, v0, p1, v1}, Lgke;->d(JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final m(II)V
    .locals 3

    .line 1
    new-instance v0, Lteam/opay/spos/printer/PosPrinter$disposePrintResult$1;

    .line 2
    .line 3
    invoke-direct {v0, p1, p0, p2}, Lteam/opay/spos/printer/PosPrinter$disposePrintResult$1;-><init>(ILteam/opay/spos/printer/PosPrinter;I)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    const/4 p2, 0x0

    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    invoke-static {v1, v2, v0, p1, p2}, Lgke;->d(JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final n(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcl8;->c:Lcl8;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "print content : "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x2

    .line 22
    invoke-static {v0, v1, v2, v3, v2}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_5

    .line 34
    .line 35
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    instance-of v1, v0, Ljava/lang/String;

    .line 40
    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    invoke-static {}, Lteam/opay/spos/printer/internal/PrintType;->values()[Lteam/opay/spos/printer/internal/PrintType;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    array-length v4, v1

    .line 48
    const/4 v5, 0x0

    .line 49
    const/4 v6, 0x0

    .line 50
    :goto_1
    if-ge v6, v4, :cond_2

    .line 51
    .line 52
    aget-object v7, v1, v6

    .line 53
    .line 54
    move-object v8, v0

    .line 55
    check-cast v8, Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v7}, Lteam/opay/spos/printer/internal/PrintType;->getValue()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    invoke-static {v8, v9, v5, v3, v2}, Lkotlin/text/StringsKt;->X(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    if-eqz v8, :cond_1

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    move-object v7, v2

    .line 72
    :goto_2
    if-eqz v7, :cond_0

    .line 73
    .line 74
    check-cast v0, Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {p0, v7, v0}, Lteam/opay/spos/printer/PosPrinter;->o(Lteam/opay/spos/printer/internal/PrintType;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    instance-of v1, v0, Landroid/view/View;

    .line 81
    .line 82
    if-eqz v1, :cond_4

    .line 83
    .line 84
    check-cast v0, Landroid/view/View;

    .line 85
    .line 86
    invoke-virtual {p0, v0}, Lteam/opay/spos/printer/PosPrinter;->w(Landroid/view/View;)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    instance-of v1, v0, Landroid/graphics/Bitmap;

    .line 91
    .line 92
    if-eqz v1, :cond_0

    .line 93
    .line 94
    check-cast v0, Landroid/graphics/Bitmap;

    .line 95
    .line 96
    invoke-virtual {p0, v0}, Lteam/opay/spos/printer/PosPrinter;->k(Landroid/graphics/Bitmap;)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_5
    return-void
.end method

.method public final o(Lteam/opay/spos/printer/internal/PrintType;Ljava/lang/String;)V
    .locals 5

    .line 1
    sget-object v0, Lteam/opay/spos/printer/PosPrinter$a;->a:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lteam/opay/spos/printer/PosPrinter;->u()V

    .line 13
    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    sget-object v0, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 17
    .line 18
    const-class v2, Lma7;

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->a(Ljava/lang/Class;)Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lma7;

    .line 35
    .line 36
    invoke-interface {v2}, Lma7;->getPrintType()Lteam/opay/spos/printer/internal/PrintType;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    if-ne v3, p1, :cond_1

    .line 41
    .line 42
    :try_start_0
    invoke-interface {v2, p2}, Lma7;->parsePrintData(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v3, p0, Lteam/opay/spos/printer/PosPrinter;->a:Landroid/content/Context;

    .line 46
    .line 47
    invoke-interface {v2, v3}, Lma7;->becomeView(Landroid/content/Context;)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {p0, v2}, Lteam/opay/spos/printer/PosPrinter;->w(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception v2

    .line 56
    iget-object v3, p0, Lteam/opay/spos/printer/PosPrinter;->a:Landroid/content/Context;

    .line 57
    .line 58
    const-string v4, "printer exception -> format error!"

    .line 59
    .line 60
    invoke-static {v3, v4}, Let;->v(Landroid/content/Context;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    sget-object v3, Lcl8;->c:Lcl8;

    .line 64
    .line 65
    const-string v4, "print fail -> parse error!"

    .line 66
    .line 67
    invoke-virtual {v3, v4, v2}, Lteam/opay/core/common/GenericLogger;->i(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    const v2, -0x186a2

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v1, v2}, Lteam/opay/spos/printer/PosPrinter;->m(II)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    :goto_1
    return-void
.end method

.method public final p(Lfzb;Lteam/opay/spos/printer/delegate/OPrinterDelegate;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/spos/printer/PosPrinter;->a:Landroid/content/Context;

    .line 2
    .line 3
    new-instance v1, Lteam/opay/spos/printer/PosPrinter$executePrintTask$1;

    .line 4
    .line 5
    invoke-direct {v1, p1, p0, p2}, Lteam/opay/spos/printer/PosPrinter$executePrintTask$1;-><init>(Lfzb;Lteam/opay/spos/printer/PosPrinter;Lteam/opay/spos/printer/delegate/OPrinterDelegate;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p2, v0, v1}, Lteam/opay/spos/printer/delegate/OPrinterDelegate;->printerInit(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final q()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/spos/printer/PosPrinter;->r()Lka7;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lka7;->a()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x4

    .line 13
    :goto_0
    iget-object v1, p0, Lteam/opay/spos/printer/PosPrinter;->d:Ljava/util/List;

    .line 14
    .line 15
    new-instance v2, Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;

    .line 16
    .line 17
    invoke-direct {v2}, Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v0}, Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;->j(I)Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;->h()Lteam/opay/spos/printer/utils/PrintItemPattern;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v2, "Builder().lines(feedPaperLines).create()"

    .line 29
    .line 30
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final r()Lka7;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/spos/printer/PosPrinter;->e:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lka7;

    .line 8
    .line 9
    return-object v0
.end method

.method public final s(Lteam/opay/spos/printer/delegate/OPrinterDelegate;ILjava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/spos/printer/delegate/OPrinterDelegate;",
            "I",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v4, Lkotlin/jvm/internal/Ref$IntRef;

    .line 2
    .line 3
    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 7
    .line 8
    invoke-static {p3, p2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    check-cast p2, Landroid/graphics/Bitmap;

    .line 13
    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget v0, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 18
    .line 19
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x1

    .line 24
    sub-int/2addr v1, v2

    .line 25
    if-ne v0, v1, :cond_1

    .line 26
    .line 27
    const/4 v7, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v2, 0x0

    .line 30
    const/4 v7, 0x0

    .line 31
    :goto_0
    new-instance v8, Lteam/opay/spos/printer/internal/PrintSafeWeakCallback;

    .line 32
    .line 33
    new-instance v9, Lteam/opay/spos/printer/PosPrinter$loopPrint$1;

    .line 34
    .line 35
    move-object v0, v9

    .line 36
    move v1, v7

    .line 37
    move-object v2, p0

    .line 38
    move-object v3, p1

    .line 39
    move-object v5, p3

    .line 40
    move-object v6, p2

    .line 41
    invoke-direct/range {v0 .. v6}, Lteam/opay/spos/printer/PosPrinter$loopPrint$1;-><init>(ZLteam/opay/spos/printer/PosPrinter;Lteam/opay/spos/printer/delegate/OPrinterDelegate;Lkotlin/jvm/internal/Ref$IntRef;Ljava/util/List;Landroid/graphics/Bitmap;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {v8, v9}, Lteam/opay/spos/printer/internal/PrintSafeWeakCallback;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {p1, p2, v7, v8}, Lteam/opay/spos/printer/delegate/OPrinterDelegate;->printImage(Landroid/graphics/Bitmap;ZLteam/opay/spos/printer/internal/PrintSafeWeakCallback;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final t(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    :cond_0
    const/16 v0, 0x180

    .line 14
    .line 15
    const/high16 v1, 0x40000000    # 2.0f

    .line 16
    .line 17
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {p1, v0, v2}, Landroid/view/View;->measure(II)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/view/View;->layout(IIII)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method public final u()V
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/spos/printer/PosPrinter;->d:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;

    .line 4
    .line 5
    invoke-direct {v1}, Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-virtual {v1, v2}, Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;->j(I)Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lteam/opay/spos/printer/utils/PrintItemPattern$Builder;->h()Lteam/opay/spos/printer/utils/PrintItemPattern;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "Builder().lines(1).create()"

    .line 18
    .line 19
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final v(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "content"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 7
    .line 8
    new-instance v0, Lteam/opay/spos/printer/PosPrinter$b;

    .line 9
    .line 10
    invoke-direct {v0, p0, p1}, Lteam/opay/spos/printer/PosPrinter$b;-><init>(Lteam/opay/spos/printer/PosPrinter;Ljava/util/List;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lteam/opay/spos/printer/PosPrinter;->l(Lfzb;)V

    .line 14
    .line 15
    .line 16
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 25
    .line 26
    invoke-static {p1}, Lkotlin/d;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    sget-object v0, Lcl8;->c:Lcl8;

    .line 41
    .line 42
    const-string v1, "print fail"

    .line 43
    .line 44
    invoke-virtual {v0, v1, p1}, Lteam/opay/core/common/GenericLogger;->i(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lteam/opay/spos/printer/PosPrinter;->a:Landroid/content/Context;

    .line 48
    .line 49
    const-string v0, "printer exception!"

    .line 50
    .line 51
    invoke-static {p1, v0}, Let;->v(Landroid/content/Context;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const/4 p1, 0x1

    .line 55
    const v0, -0x186a4

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p1, v0}, Lteam/opay/spos/printer/PosPrinter;->m(II)V

    .line 59
    .line 60
    .line 61
    :cond_0
    return-void
.end method

.method public final w(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/spos/printer/PosPrinter;->x(Landroid/view/View;)Landroid/graphics/Bitmap;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lteam/opay/spos/printer/PosPrinter;->k(Landroid/graphics/Bitmap;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final x(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/spos/printer/PosPrinter;->t(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 13
    .line 14
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "createBitmap(view.width,\u2026t, Bitmap.Config.RGB_565)"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Landroid/graphics/Canvas;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 26
    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    return-object v0

    .line 36
    :catch_0
    move-exception p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    return-object p1
.end method
