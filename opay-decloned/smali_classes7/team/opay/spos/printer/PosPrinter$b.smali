.class public final Lteam/opay/spos/printer/PosPrinter$b;
.super Ljava/lang/Object;
.source "PosPrinter.kt"

# interfaces
.implements Lfzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/spos/printer/PosPrinter;->v(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "team/opay/spos/printer/PosPrinter$b",
        "Lfzb;",
        "",
        "a",
        "()V",
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
.field public final synthetic a:Lteam/opay/spos/printer/PosPrinter;

.field public final synthetic b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/spos/printer/PosPrinter;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/spos/printer/PosPrinter;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/spos/printer/PosPrinter$b;->a:Lteam/opay/spos/printer/PosPrinter;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/spos/printer/PosPrinter$b;->b:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/spos/printer/PosPrinter$b;->a:Lteam/opay/spos/printer/PosPrinter;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/spos/printer/PosPrinter$b;->b:Ljava/util/List;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lteam/opay/spos/printer/PosPrinter;->b(Lteam/opay/spos/printer/PosPrinter;Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lteam/opay/spos/printer/PosPrinter$b;->a:Lteam/opay/spos/printer/PosPrinter;

    .line 9
    .line 10
    invoke-static {v0}, Lteam/opay/spos/printer/PosPrinter;->h(Lteam/opay/spos/printer/PosPrinter;)Lteam/opay/spos/printer/internal/PrinterConfig;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lteam/opay/spos/printer/internal/PrinterConfig;->b()Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lteam/opay/spos/printer/PosPrinter$b;->a:Lteam/opay/spos/printer/PosPrinter;

    .line 27
    .line 28
    invoke-static {v0}, Lteam/opay/spos/printer/PosPrinter;->d(Lteam/opay/spos/printer/PosPrinter;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method
