.class public final Lteam/opay/spos/printer/internal/IPrinterModuleFragment$Companion;
.super Ljava/lang/Object;
.source "IPrinterModuleFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/spos/printer/internal/IPrinterModuleFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lteam/opay/spos/printer/internal/IPrinterModuleFragment$Companion;",
        "",
        "<init>",
        "()V",
        "Lteam/opay/spos/printer/internal/PrinterFragmentTag;",
        "tag",
        "Lteam/opay/spos/printer/internal/IPrinterModuleFragment;",
        "a",
        "(Lteam/opay/spos/printer/internal/PrinterFragmentTag;)Lteam/opay/spos/printer/internal/IPrinterModuleFragment;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/spos/printer/internal/IPrinterModuleFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lteam/opay/spos/printer/internal/PrinterFragmentTag;)Lteam/opay/spos/printer/internal/IPrinterModuleFragment;
    .locals 4
    .param p1    # Lteam/opay/spos/printer/internal/PrinterFragmentTag;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "tag"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 7
    .line 8
    const-class v1, Lteam/opay/spos/printer/internal/IPrinterModuleFragment;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->a(Ljava/lang/Class;)Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lteam/opay/spos/printer/internal/IPrinterModuleFragment;

    .line 25
    .line 26
    invoke-virtual {v1}, Lteam/opay/spos/printer/internal/IPrinterModuleFragment;->getFragmentTag()Lteam/opay/spos/printer/internal/PrinterFragmentTag;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-ne v2, p1, :cond_0

    .line 31
    .line 32
    sget-object v0, Lcl8;->c:Lcl8;

    .line 33
    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v3, "getFragmentTab -> "

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const/4 v2, 0x2

    .line 52
    const/4 v3, 0x0

    .line 53
    invoke-static {v0, p1, v3, v2, v3}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    return-object v1

    .line 57
    :cond_1
    new-instance p1, Lteam/opay/spos/printer/internal/DefaultFragment;

    .line 58
    .line 59
    invoke-direct {p1}, Lteam/opay/spos/printer/internal/DefaultFragment;-><init>()V

    .line 60
    .line 61
    .line 62
    return-object p1
.end method
