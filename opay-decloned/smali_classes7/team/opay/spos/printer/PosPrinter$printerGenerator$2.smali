.class final Lteam/opay/spos/printer/PosPrinter$printerGenerator$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PosPrinter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/spos/printer/PosPrinter;-><init>(Landroid/content/Context;Lkyb;Lteam/opay/spos/printer/internal/PrinterConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lka7;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u0004\u0018\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lka7;",
        "invoke",
        "()Lka7;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final INSTANCE:Lteam/opay/spos/printer/PosPrinter$printerGenerator$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/spos/printer/PosPrinter$printerGenerator$2;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/spos/printer/PosPrinter$printerGenerator$2;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lteam/opay/spos/printer/PosPrinter$printerGenerator$2;->INSTANCE:Lteam/opay/spos/printer/PosPrinter$printerGenerator$2;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/spos/printer/PosPrinter$printerGenerator$2;->invoke()Lka7;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lka7;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    sget-object v0, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    const-class v1, Lka7;

    invoke-virtual {v0, v1}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lka7;

    return-object v0
.end method
