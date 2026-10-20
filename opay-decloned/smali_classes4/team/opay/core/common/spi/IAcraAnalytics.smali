.class public interface abstract Lteam/opay/core/common/spi/IAcraAnalytics;
.super Ljava/lang/Object;
.source "IAnalytics.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/core/common/spi/IAcraAnalytics$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008g\u0018\u0000 \u00102\u00020\u0001:\u0001\u0011J\u001f\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J#\u0010\u000c\u001a\u00020\u00052\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0008\u0002\u0010\u000b\u001a\u00020\nH&\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0019\u0010\u000e\u001a\u00020\u00052\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H&\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0012"
    }
    d2 = {
        "Lteam/opay/core/common/spi/IAcraAnalytics;",
        "",
        "",
        "key",
        "value",
        "",
        "putCustomData",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "",
        "e",
        "",
        "endApplication",
        "handleException",
        "(Ljava/lang/Throwable;Z)V",
        "logException",
        "(Ljava/lang/Throwable;)V",
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

.annotation build Lteam/opay/core/annotation/Keep;
.end annotation


# static fields
.field public static final Companion:Lteam/opay/core/common/spi/IAcraAnalytics$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/core/common/spi/IAcraAnalytics$a;->a:Lteam/opay/core/common/spi/IAcraAnalytics$a;

    .line 2
    .line 3
    sput-object v0, Lteam/opay/core/common/spi/IAcraAnalytics;->Companion:Lteam/opay/core/common/spi/IAcraAnalytics$a;

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public abstract handleException(Ljava/lang/Throwable;Z)V
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract logException(Ljava/lang/Throwable;)V
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract putCustomData(Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
