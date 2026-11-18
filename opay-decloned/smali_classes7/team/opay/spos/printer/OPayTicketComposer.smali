.class public final Lteam/opay/spos/printer/OPayTicketComposer;
.super Ljava/lang/Object;
.source "OPayTicketComposer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/spos/printer/OPayTicketComposer$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0013B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\'\u0010\u000b\u001a\u00020\n2\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ5\u0010\u000f\u001a\u00020\n2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00010\r2\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0007\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0014"
    }
    d2 = {
        "Lteam/opay/spos/printer/OPayTicketComposer;",
        "",
        "Lteam/opay/spos/printer/OPayTicketComposer$Builder;",
        "builder",
        "<init>",
        "(Lteam/opay/spos/printer/OPayTicketComposer$Builder;)V",
        "Lteam/opay/spos/printer/internal/PrinterConfig;",
        "printerConfig",
        "Lkyb;",
        "printerCallback",
        "",
        "c",
        "(Lteam/opay/spos/printer/internal/PrinterConfig;Lkyb;)V",
        "",
        "content",
        "b",
        "(Ljava/util/List;Lteam/opay/spos/printer/internal/PrinterConfig;Lkyb;)V",
        "a",
        "Lteam/opay/spos/printer/OPayTicketComposer$Builder;",
        "Builder",
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


# instance fields
.field public final a:Lteam/opay/spos/printer/OPayTicketComposer$Builder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/spos/printer/OPayTicketComposer$Builder;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lteam/opay/spos/printer/OPayTicketComposer;->a:Lteam/opay/spos/printer/OPayTicketComposer$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lteam/opay/spos/printer/OPayTicketComposer$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lteam/opay/spos/printer/OPayTicketComposer;-><init>(Lteam/opay/spos/printer/OPayTicketComposer$Builder;)V

    return-void
.end method

.method public static final synthetic a(Lteam/opay/spos/printer/OPayTicketComposer;)Lteam/opay/spos/printer/OPayTicketComposer$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/spos/printer/OPayTicketComposer;->a:Lteam/opay/spos/printer/OPayTicketComposer$Builder;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic d(Lteam/opay/spos/printer/OPayTicketComposer;Ljava/util/List;Lteam/opay/spos/printer/internal/PrinterConfig;Lkyb;ILjava/lang/Object;)V
    .locals 1

    .line 1
    and-int/lit8 p5, p4, 0x2

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p5, :cond_0

    .line 5
    .line 6
    move-object p2, v0

    .line 7
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    move-object p3, v0

    .line 12
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/spos/printer/OPayTicketComposer;->b(Ljava/util/List;Lteam/opay/spos/printer/internal/PrinterConfig;Lkyb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final b(Ljava/util/List;Lteam/opay/spos/printer/internal/PrinterConfig;Lkyb;)V
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/spos/printer/internal/PrinterConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkyb;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lteam/opay/spos/printer/internal/PrinterConfig;",
            "Lkyb;",
            ")V"
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
    iget-object v0, p0, Lteam/opay/spos/printer/OPayTicketComposer;->a:Lteam/opay/spos/printer/OPayTicketComposer$Builder;

    .line 7
    .line 8
    invoke-virtual {v0}, Lteam/opay/spos/printer/OPayTicketComposer$Builder;->r()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    new-instance v0, Lteam/opay/spos/printer/PosPrinter;

    .line 15
    .line 16
    iget-object v1, p0, Lteam/opay/spos/printer/OPayTicketComposer;->a:Lteam/opay/spos/printer/OPayTicketComposer$Builder;

    .line 17
    .line 18
    invoke-virtual {v1}, Lteam/opay/spos/printer/OPayTicketComposer$Builder;->p()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "builder.context.applicationContext"

    .line 27
    .line 28
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    if-nez p2, :cond_0

    .line 32
    .line 33
    new-instance p2, Lteam/opay/spos/printer/internal/PrinterConfig;

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-direct {p2, v3, v3, v2, v3}, Lteam/opay/spos/printer/internal/PrinterConfig;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-direct {v0, v1, p3, p2}, Lteam/opay/spos/printer/PosPrinter;-><init>(Landroid/content/Context;Lkyb;Lteam/opay/spos/printer/internal/PrinterConfig;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1}, Lteam/opay/spos/printer/PosPrinter;->v(Ljava/util/List;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object v0, p0, Lteam/opay/spos/printer/OPayTicketComposer;->a:Lteam/opay/spos/printer/OPayTicketComposer$Builder;

    .line 48
    .line 49
    new-instance v1, Lteam/opay/spos/printer/OPayTicketComposer$doPrint$1;

    .line 50
    .line 51
    invoke-direct {v1, p0, p3, p2, p1}, Lteam/opay/spos/printer/OPayTicketComposer$doPrint$1;-><init>(Lteam/opay/spos/printer/OPayTicketComposer;Lkyb;Lteam/opay/spos/printer/internal/PrinterConfig;Ljava/util/List;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lteam/opay/spos/printer/OPayTicketComposer$Builder;->s(Lkotlin/jvm/functions/Function0;)V

    .line 55
    .line 56
    .line 57
    :goto_0
    return-void
.end method

.method public final c(Lteam/opay/spos/printer/internal/PrinterConfig;Lkyb;)V
    .locals 1
    .param p1    # Lteam/opay/spos/printer/internal/PrinterConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkyb;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lteam/opay/spos/printer/OPayTicketComposer;->a:Lteam/opay/spos/printer/OPayTicketComposer$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/spos/printer/OPayTicketComposer$Builder;->o()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0, p1, p2}, Lteam/opay/spos/printer/OPayTicketComposer;->b(Ljava/util/List;Lteam/opay/spos/printer/internal/PrinterConfig;Lkyb;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
