.class public final Lteam/opay/business/pos/print/PosPrinter;
.super Ljava/lang/Object;
.source "PosPrinter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/business/pos/print/PosPrinter$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001!B\u0019\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\r\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\r\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u0010R#\u0010\u0016\u001a\n \u0012*\u0004\u0018\u00010\u00110\u00118BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0013\u0010\u0015R!\u0010\u001c\u001a\u0012\u0012\u0004\u0012\u00020\u00180\u0017j\u0008\u0012\u0004\u0012\u00020\u0018`\u00198F\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u001bR\u0016\u0010 \u001a\u0004\u0018\u00010\u001d8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001f\u00a8\u0006\""
    }
    d2 = {
        "Lteam/opay/business/pos/print/PosPrinter;",
        "",
        "Landroid/content/Context;",
        "context",
        "Lteam/opay/business/pos/print/PosPrinter$Builder;",
        "builder",
        "<init>",
        "(Landroid/content/Context;Lteam/opay/business/pos/print/PosPrinter$Builder;)V",
        "",
        "g",
        "()V",
        "Landroid/content/Intent;",
        "b",
        "()Landroid/content/Intent;",
        "a",
        "Landroid/content/Context;",
        "Lteam/opay/business/pos/print/PosPrinter$Builder;",
        "Lcom/google/gson/Gson;",
        "kotlin.jvm.PlatformType",
        "c",
        "Lid8;",
        "()Lcom/google/gson/Gson;",
        "gson",
        "Ljava/util/ArrayList;",
        "",
        "Lkotlin/collections/ArrayList;",
        "e",
        "()Ljava/util/ArrayList;",
        "printData",
        "Lteam/opay/business/pos/print/PosPrintInfo;",
        "d",
        "()Lteam/opay/business/pos/print/PosPrintInfo;",
        "posPrintInfo",
        "Builder",
        "pos-print_release"
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
.field public final a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lteam/opay/business/pos/print/PosPrinter$Builder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lteam/opay/business/pos/print/PosPrinter$Builder;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lteam/opay/business/pos/print/PosPrinter;->a:Landroid/content/Context;

    iput-object p2, p0, Lteam/opay/business/pos/print/PosPrinter;->b:Lteam/opay/business/pos/print/PosPrinter$Builder;

    .line 3
    new-instance p1, Lyvb;

    invoke-direct {p1}, Lyvb;-><init>()V

    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object p1

    iput-object p1, p0, Lteam/opay/business/pos/print/PosPrinter;->c:Lid8;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lteam/opay/business/pos/print/PosPrinter$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lteam/opay/business/pos/print/PosPrinter;-><init>(Landroid/content/Context;Lteam/opay/business/pos/print/PosPrinter$Builder;)V

    return-void
.end method

.method public static synthetic a()Lcom/google/gson/Gson;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/business/pos/print/PosPrinter;->f()Lcom/google/gson/Gson;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final f()Lcom/google/gson/Gson;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/gson/GsonBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method


# virtual methods
.method public final b()Landroid/content/Intent;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lgk8;->c:Lgk8;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/business/pos/print/PosPrinter;->e()Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v3, "-----\u6253\u5370\u6570\u636e = "

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x2

    .line 26
    invoke-static {v0, v1, v2, v3, v2}, Lteam/opay/core/common/GenericLogger;->j(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lteam/opay/business/pos/print/PosPrinter;->b:Lteam/opay/business/pos/print/PosPrinter$Builder;

    .line 30
    .line 31
    invoke-virtual {v0}, Lteam/opay/business/pos/print/PosPrinter$Builder;->e()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    sget-object v0, Lud;->a:Lud;

    .line 38
    .line 39
    iget-object v1, p0, Lteam/opay/business/pos/print/PosPrinter;->a:Landroid/content/Context;

    .line 40
    .line 41
    const-string v2, "opay://posPrint/bluetooth/verify"

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Lud;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    sget-object v0, Lud;->a:Lud;

    .line 49
    .line 50
    iget-object v1, p0, Lteam/opay/business/pos/print/PosPrinter;->a:Landroid/content/Context;

    .line 51
    .line 52
    const-string v2, "opay://posPrint/bluetooth"

    .line 53
    .line 54
    invoke-virtual {v0, v1, v2}, Lud;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    :goto_0
    invoke-virtual {p0}, Lteam/opay/business/pos/print/PosPrinter;->c()Lcom/google/gson/Gson;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {p0}, Lteam/opay/business/pos/print/PosPrinter;->e()Ljava/util/ArrayList;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    const-string v2, "DATA"

    .line 71
    .line 72
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lteam/opay/business/pos/print/PosPrinter;->d()Lteam/opay/business/pos/print/PosPrintInfo;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    if-eqz v1, :cond_1

    .line 80
    .line 81
    invoke-virtual {p0}, Lteam/opay/business/pos/print/PosPrinter;->c()Lcom/google/gson/Gson;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {p0}, Lteam/opay/business/pos/print/PosPrinter;->d()Lteam/opay/business/pos/print/PosPrintInfo;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    const-string v2, "printOtherInfo"

    .line 94
    .line 95
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    .line 97
    .line 98
    :cond_1
    return-object v0
.end method

.method public final c()Lcom/google/gson/Gson;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/pos/print/PosPrinter;->c:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/gson/Gson;

    .line 8
    .line 9
    return-object v0
.end method

.method public final d()Lteam/opay/business/pos/print/PosPrintInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/pos/print/PosPrinter;->b:Lteam/opay/business/pos/print/PosPrinter$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/business/pos/print/PosPrinter$Builder;->c()Lteam/opay/business/pos/print/PosPrintInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final e()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/pos/print/PosPrinter;->b:Lteam/opay/business/pos/print/PosPrinter$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/business/pos/print/PosPrinter$Builder;->d()Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final g()V
    .locals 6

    .line 1
    sget-object v0, Lud;->a:Lud;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/business/pos/print/PosPrinter;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p0}, Lteam/opay/business/pos/print/PosPrinter;->b()Landroid/content/Intent;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const/4 v4, 0x4

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-static/range {v0 .. v5}, Lud;->h(Lud;Landroid/content/Context;Landroid/content/Intent;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
