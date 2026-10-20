.class public interface abstract Lteam/opay/spos/base/spi/IPosCommonTrackGenerator;
.super Ljava/lang/Object;
.source "IPosCommonTrackGenerator.kt"

# interfaces
.implements Lteam/opay/KeepNoProguard;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/spos/base/spi/IPosCommonTrackGenerator$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008f\u0018\u0000 \u00062\u00020\u0001:\u0001\u0006J\u001a\u0010\u0002\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00040\u0003H&\u00a8\u0006\u0007"
    }
    d2 = {
        "Lteam/opay/spos/base/spi/IPosCommonTrackGenerator;",
        "Lteam/opay/KeepNoProguard;",
        "getCommonTrack",
        "",
        "Lkotlin/Pair;",
        "",
        "Companion",
        "spos-common-base_release"
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
.field public static final Companion:Lteam/opay/spos/base/spi/IPosCommonTrackGenerator$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/spos/base/spi/IPosCommonTrackGenerator$Companion;->a:Lteam/opay/spos/base/spi/IPosCommonTrackGenerator$Companion;

    .line 2
    .line 3
    sput-object v0, Lteam/opay/spos/base/spi/IPosCommonTrackGenerator;->Companion:Lteam/opay/spos/base/spi/IPosCommonTrackGenerator$Companion;

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public abstract getCommonTrack()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
