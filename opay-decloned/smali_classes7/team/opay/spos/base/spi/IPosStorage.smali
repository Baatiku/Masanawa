.class public interface abstract Lteam/opay/spos/base/spi/IPosStorage;
.super Ljava/lang/Object;
.source "IPosStorage.kt"

# interfaces
.implements Lteam/opay/KeepNoProguard;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/spos/base/spi/IPosStorage$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\n\u0008g\u0018\u0000 +2\u00020\u0001:\u0001+J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0008\u0010\u0004\u001a\u00020\u0003H&J\u0008\u0010\u0005\u001a\u00020\u0003H&J\u0008\u0010\u0006\u001a\u00020\u0003H&J\u0008\u0010\u0007\u001a\u00020\u0003H&J\u0008\u0010\u0008\u001a\u00020\u0003H&J\u0008\u0010\t\u001a\u00020\u0003H&J\u0008\u0010\n\u001a\u00020\u0003H&J\u0008\u0010\u000b\u001a\u00020\u0003H&J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH&J\u0010\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0003H&J\u0008\u0010\u0012\u001a\u00020\u0003H&J\u0008\u0010\u0013\u001a\u00020\u0003H&J\u0008\u0010\u0014\u001a\u00020\u0003H&J$\u0010\u0015\u001a\u001e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0016j\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003`\u0017H&J$\u0010\u0018\u001a\u001e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00190\u0016j\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0019`\u0017H&J\u0008\u0010\u001a\u001a\u00020\u000fH&J\u0008\u0010\u001b\u001a\u00020\u001cH&J\u0008\u0010\u001d\u001a\u00020\u001cH&J\u0008\u0010\u001e\u001a\u00020\u001cH&J\u0008\u0010\u001f\u001a\u00020\u001cH&J\u0008\u0010 \u001a\u00020\u0003H&J\u0008\u0010!\u001a\u00020\"H&J\u0008\u0010#\u001a\u00020\u0003H&J\u0008\u0010$\u001a\u00020\u0003H&J\u0008\u0010%\u001a\u00020\u0003H&J\u0008\u0010&\u001a\u00020\u0003H&J\u0008\u0010\'\u001a\u00020\u0003H&J\u0008\u0010(\u001a\u00020\u0003H&J\u0008\u0010)\u001a\u00020\u0003H&J\u0008\u0010*\u001a\u00020\u001cH&\u00a8\u0006,"
    }
    d2 = {
        "Lteam/opay/spos/base/spi/IPosStorage;",
        "Lteam/opay/KeepNoProguard;",
        "acquirer",
        "",
        "adminPinKey",
        "agentAddress",
        "agentMax",
        "agentName",
        "agentNum",
        "agentPhone",
        "agentType",
        "appToken",
        "changeReceiptPrintNumber",
        "",
        "number",
        "",
        "changeSn",
        "testSn",
        "currentAccountType",
        "currentRoleType",
        "employeeAccount",
        "extendMap",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "extendStorageMap",
        "",
        "getReceiptPrintNumber",
        "isHasEffectsectDiscountCustmerSwitch",
        "",
        "isPrintNeedAdminPassword",
        "isQueryCustmerTradeAndDiscountInfoSwitch",
        "isQueryValidDiscountByCardSwitch",
        "limitedAmount",
        "lockTime",
        "",
        "posDeviceName",
        "pospToken",
        "ptspId",
        "sn",
        "supervisorPin",
        "terminalId",
        "warningAmount",
        "withDrawSwitch",
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
.field public static final Companion:Lteam/opay/spos/base/spi/IPosStorage$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/spos/base/spi/IPosStorage$Companion;->a:Lteam/opay/spos/base/spi/IPosStorage$Companion;

    .line 2
    .line 3
    sput-object v0, Lteam/opay/spos/base/spi/IPosStorage;->Companion:Lteam/opay/spos/base/spi/IPosStorage$Companion;

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public abstract acquirer()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract adminPinKey()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract agentAddress()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract agentMax()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract agentName()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract agentNum()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract agentPhone()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract agentType()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract appToken()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract changeReceiptPrintNumber(I)V
.end method

.method public abstract changeSn(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract currentAccountType()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract currentRoleType()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract employeeAccount()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract extendMap()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract extendStorageMap()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getReceiptPrintNumber()I
.end method

.method public abstract isHasEffectsectDiscountCustmerSwitch()Z
.end method

.method public abstract isPrintNeedAdminPassword()Z
.end method

.method public abstract isQueryCustmerTradeAndDiscountInfoSwitch()Z
.end method

.method public abstract isQueryValidDiscountByCardSwitch()Z
.end method

.method public abstract limitedAmount()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract lockTime()J
.end method

.method public abstract posDeviceName()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract pospToken()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract ptspId()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract sn()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract supervisorPin()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract terminalId()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract warningAmount()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract withDrawSwitch()Z
.end method
