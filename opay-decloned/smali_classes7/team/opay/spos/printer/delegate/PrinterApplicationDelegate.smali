.class public final Lteam/opay/spos/printer/delegate/PrinterApplicationDelegate;
.super Lteam/opay/swarmfoundation/frame/ApplicationDelegate;
.source "PrinterApplicationDelegate.kt"

# interfaces
.implements Lteam/opay/KeepNoProguard;


# annotations
.annotation build Lcom/google/auto/service/AutoService;
    value = {
        Lteam/opay/swarmfoundation/frame/ApplicationDelegate;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/spos/printer/delegate/PrinterApplicationDelegate$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \u00082\u00020\u00012\u00020\u0002:\u0001\u0008B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lteam/opay/spos/printer/delegate/PrinterApplicationDelegate;",
        "Lteam/opay/swarmfoundation/frame/ApplicationDelegate;",
        "Lteam/opay/KeepNoProguard;",
        "()V",
        "onCreate",
        "",
        "application",
        "Landroid/app/Application;",
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
.field public static final Companion:Lteam/opay/spos/printer/delegate/PrinterApplicationDelegate$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static applicationContext:Landroid/app/Application;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/spos/printer/delegate/PrinterApplicationDelegate$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/spos/printer/delegate/PrinterApplicationDelegate$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/spos/printer/delegate/PrinterApplicationDelegate;->Companion:Lteam/opay/spos/printer/delegate/PrinterApplicationDelegate$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/swarmfoundation/frame/ApplicationDelegate;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/app/Application;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "application"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lteam/opay/swarmfoundation/frame/ApplicationDelegate;->onCreate(Landroid/app/Application;)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lteam/opay/spos/printer/delegate/PrinterApplicationDelegate;->Companion:Lteam/opay/spos/printer/delegate/PrinterApplicationDelegate$Companion;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lteam/opay/spos/printer/delegate/PrinterApplicationDelegate$Companion;->a(Landroid/app/Application;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
