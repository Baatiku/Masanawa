.class public interface abstract Lteam/opay/spos/printer/delegate/IPrintFinishDelegate;
.super Ljava/lang/Object;
.source "IPrintFinishDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/spos/printer/delegate/IPrintFinishDelegate$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008g\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fJ\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J(\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0017J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\rH\u0016\u00a8\u0006\u0010"
    }
    d2 = {
        "Lteam/opay/spos/printer/delegate/IPrintFinishDelegate;",
        "",
        "firstPrintSuccess",
        "",
        "posPrintFinishInfo",
        "Lteam/opay/spos/printer/internal/PosPrintFinishInfo;",
        "printFinish",
        "code",
        "",
        "deviceCode",
        "isAutoPrint",
        "",
        "orderNo",
        "",
        "startPrint",
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

.annotation build Lteam/opay/core/annotation/Keep;
.end annotation


# static fields
.field public static final Companion:Lteam/opay/spos/printer/delegate/IPrintFinishDelegate$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/spos/printer/delegate/IPrintFinishDelegate$Companion;->a:Lteam/opay/spos/printer/delegate/IPrintFinishDelegate$Companion;

    .line 2
    .line 3
    sput-object v0, Lteam/opay/spos/printer/delegate/IPrintFinishDelegate;->Companion:Lteam/opay/spos/printer/delegate/IPrintFinishDelegate$Companion;

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public abstract firstPrintSuccess(Lteam/opay/spos/printer/internal/PosPrintFinishInfo;)V
    .param p1    # Lteam/opay/spos/printer/internal/PosPrintFinishInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract printFinish(IIZLjava/lang/String;)V
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract printFinish(Lteam/opay/spos/printer/internal/PosPrintFinishInfo;)V
    .param p1    # Lteam/opay/spos/printer/internal/PosPrintFinishInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract startPrint(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
