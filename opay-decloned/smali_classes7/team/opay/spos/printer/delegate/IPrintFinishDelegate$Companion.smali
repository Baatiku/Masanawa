.class public final Lteam/opay/spos/printer/delegate/IPrintFinishDelegate$Companion;
.super Ljava/lang/Object;
.source "IPrintFinishDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/spos/printer/delegate/IPrintFinishDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R!\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lteam/opay/spos/printer/delegate/IPrintFinishDelegate$Companion;",
        "",
        "<init>",
        "()V",
        "",
        "Lteam/opay/spos/printer/delegate/IPrintFinishDelegate;",
        "b",
        "Lid8;",
        "a",
        "()Ljava/util/List;",
        "iPrinterFinishDelegate",
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
.field public static final synthetic a:Lteam/opay/spos/printer/delegate/IPrintFinishDelegate$Companion;

.field public static final b:Lid8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lid8<",
            "Ljava/util/List<",
            "Lteam/opay/spos/printer/delegate/IPrintFinishDelegate;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/spos/printer/delegate/IPrintFinishDelegate$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/spos/printer/delegate/IPrintFinishDelegate$Companion;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lteam/opay/spos/printer/delegate/IPrintFinishDelegate$Companion;->a:Lteam/opay/spos/printer/delegate/IPrintFinishDelegate$Companion;

    .line 7
    .line 8
    sget-object v0, Lteam/opay/spos/printer/delegate/IPrintFinishDelegate$Companion$iPrinterFinishDelegate$2;->INSTANCE:Lteam/opay/spos/printer/delegate/IPrintFinishDelegate$Companion$iPrinterFinishDelegate$2;

    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lteam/opay/spos/printer/delegate/IPrintFinishDelegate$Companion;->b:Lid8;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/spos/printer/delegate/IPrintFinishDelegate;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/spos/printer/delegate/IPrintFinishDelegate$Companion;->b:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/List;

    .line 8
    .line 9
    return-object v0
.end method
