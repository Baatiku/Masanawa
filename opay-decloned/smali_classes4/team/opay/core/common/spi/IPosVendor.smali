.class public interface abstract Lteam/opay/core/common/spi/IPosVendor;
.super Ljava/lang/Object;
.source "IPosVendor.kt"

# interfaces
.implements Lteam/opay/KeepNoProguard;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/core/common/spi/IPosVendor$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008f\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000cJ7\u0010\t\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u001e\u0010\u0008\u001a\u001a\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u00060\u0004j\u0002`\u0007H&\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\r"
    }
    d2 = {
        "Lteam/opay/core/common/spi/IPosVendor;",
        "Lteam/opay/KeepNoProguard;",
        "Landroidx/fragment/app/FragmentActivity;",
        "activity",
        "Lkotlin/Function2;",
        "",
        "",
        "Lteam/opay/core/common/spi/ResultHandler;",
        "handler",
        "startScan",
        "(Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function2;)V",
        "Companion",
        "a",
        "common-base_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lteam/opay/core/common/spi/IPosVendor$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/core/common/spi/IPosVendor$a;->a:Lteam/opay/core/common/spi/IPosVendor$a;

    .line 2
    .line 3
    sput-object v0, Lteam/opay/core/common/spi/IPosVendor;->Companion:Lteam/opay/core/common/spi/IPosVendor$a;

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public abstract startScan(Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function2;)V
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method
