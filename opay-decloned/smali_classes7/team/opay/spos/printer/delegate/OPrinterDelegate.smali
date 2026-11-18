.class public interface abstract Lteam/opay/spos/printer/delegate/OPrinterDelegate;
.super Ljava/lang/Object;
.source "OPrinterDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/spos/printer/delegate/OPrinterDelegate$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008g\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011J\u0008\u0010\u0002\u001a\u00020\u0003H&J \u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH&J\"\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000e2\u0010\u0008\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0010H&\u00a8\u0006\u0012"
    }
    d2 = {
        "Lteam/opay/spos/printer/delegate/OPrinterDelegate;",
        "",
        "getDevice",
        "",
        "printImage",
        "",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "isLast",
        "",
        "call",
        "Lteam/opay/spos/printer/internal/PrintSafeWeakCallback;",
        "printerInit",
        "context",
        "Landroid/content/Context;",
        "initFinishedCallback",
        "Lkotlin/Function0;",
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
.field public static final Companion:Lteam/opay/spos/printer/delegate/OPrinterDelegate$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/spos/printer/delegate/OPrinterDelegate$Companion;->a:Lteam/opay/spos/printer/delegate/OPrinterDelegate$Companion;

    .line 2
    .line 3
    sput-object v0, Lteam/opay/spos/printer/delegate/OPrinterDelegate;->Companion:Lteam/opay/spos/printer/delegate/OPrinterDelegate$Companion;

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public abstract getDevice()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract printImage(Landroid/graphics/Bitmap;ZLteam/opay/spos/printer/internal/PrintSafeWeakCallback;)V
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/spos/printer/internal/PrintSafeWeakCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract printerInit(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method
