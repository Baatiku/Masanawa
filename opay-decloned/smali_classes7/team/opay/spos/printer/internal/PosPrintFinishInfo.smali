.class public final Lteam/opay/spos/printer/internal/PosPrintFinishInfo;
.super Ljava/lang/Object;
.source "PrintActionDispatch.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0017\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0006\u0010\n\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u000bJ\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0006H\u00c6\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0006H\u00c6\u0003JI\u0010\u001d\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u001e\u001a\u00020\u00062\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u00d6\u0003J\t\u0010!\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\"\u001a\u00020\u0008H\u00d6\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u001e\u0010\u0004\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\r\"\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0011R\u001e\u0010\n\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u0018\u0010\t\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0015\u00a8\u0006#"
    }
    d2 = {
        "Lteam/opay/spos/printer/internal/PosPrintFinishInfo;",
        "Ljava/io/Serializable;",
        "code",
        "",
        "deviceCode",
        "isAutoPrint",
        "",
        "orderType",
        "",
        "orderNo",
        "isFirstPrintSuccess",
        "(IIZLjava/lang/String;Ljava/lang/String;Z)V",
        "getCode",
        "()I",
        "getDeviceCode",
        "setDeviceCode",
        "(I)V",
        "()Z",
        "setFirstPrintSuccess",
        "(Z)V",
        "getOrderNo",
        "()Ljava/lang/String;",
        "getOrderType",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
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


# instance fields
.field private final code:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "code"
    .end annotation
.end field

.field private deviceCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deviceCode"
    .end annotation
.end field

.field private final isAutoPrint:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isAutoPrint"
    .end annotation
.end field

.field private isFirstPrintSuccess:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isFirstPrintSuccess"
    .end annotation
.end field

.field private final orderNo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "orderNo"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final orderType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "orderType"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;->code:I

    .line 3
    iput p2, p0, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;->deviceCode:I

    .line 4
    iput-boolean p3, p0, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;->isAutoPrint:Z

    .line 5
    iput-object p4, p0, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;->orderType:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;->orderNo:Ljava/lang/String;

    .line 7
    iput-boolean p6, p0, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;->isFirstPrintSuccess:Z

    return-void
.end method

.method public synthetic constructor <init>(IIZLjava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p7, 0x8

    .line 8
    const-string v1, ""

    if-eqz v0, :cond_0

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, p4

    :goto_0
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_1

    move-object v7, v1

    goto :goto_1

    :cond_1
    move-object v7, p5

    :goto_1
    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v8, p6

    invoke-direct/range {v2 .. v8}, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;-><init>(IIZLjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lteam/opay/spos/printer/internal/PosPrintFinishInfo;IIZLjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lteam/opay/spos/printer/internal/PosPrintFinishInfo;
    .locals 4

    .line 1
    and-int/lit8 p8, p7, 0x1

    .line 2
    .line 3
    if-eqz p8, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;->code:I

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p8, p7, 0x2

    .line 8
    .line 9
    if-eqz p8, :cond_1

    .line 10
    .line 11
    iget p2, p0, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;->deviceCode:I

    .line 12
    .line 13
    :cond_1
    move p8, p2

    .line 14
    and-int/lit8 p2, p7, 0x4

    .line 15
    .line 16
    if-eqz p2, :cond_2

    .line 17
    .line 18
    iget-boolean p3, p0, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;->isAutoPrint:Z

    .line 19
    .line 20
    :cond_2
    move v0, p3

    .line 21
    and-int/lit8 p2, p7, 0x8

    .line 22
    .line 23
    if-eqz p2, :cond_3

    .line 24
    .line 25
    iget-object p4, p0, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;->orderType:Ljava/lang/String;

    .line 26
    .line 27
    :cond_3
    move-object v1, p4

    .line 28
    and-int/lit8 p2, p7, 0x10

    .line 29
    .line 30
    if-eqz p2, :cond_4

    .line 31
    .line 32
    iget-object p5, p0, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;->orderNo:Ljava/lang/String;

    .line 33
    .line 34
    :cond_4
    move-object v2, p5

    .line 35
    and-int/lit8 p2, p7, 0x20

    .line 36
    .line 37
    if-eqz p2, :cond_5

    .line 38
    .line 39
    iget-boolean p6, p0, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;->isFirstPrintSuccess:Z

    .line 40
    .line 41
    :cond_5
    move v3, p6

    .line 42
    move-object p2, p0

    .line 43
    move p3, p1

    .line 44
    move p4, p8

    .line 45
    move p5, v0

    .line 46
    move-object p6, v1

    .line 47
    move-object p7, v2

    .line 48
    move p8, v3

    .line 49
    invoke-virtual/range {p2 .. p8}, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;->copy(IIZLjava/lang/String;Ljava/lang/String;Z)Lteam/opay/spos/printer/internal/PosPrintFinishInfo;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;->code:I

    .line 2
    .line 3
    return v0
.end method

.method public final component2()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;->deviceCode:I

    .line 2
    .line 3
    return v0
.end method

.method public final component3()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;->isAutoPrint:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;->orderType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;->orderNo:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component6()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;->isFirstPrintSuccess:Z

    .line 2
    .line 3
    return v0
.end method

.method public final copy(IIZLjava/lang/String;Ljava/lang/String;Z)Lteam/opay/spos/printer/internal/PosPrintFinishInfo;
    .locals 8
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v7, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;

    .line 2
    .line 3
    move-object v0, v7

    .line 4
    move v1, p1

    .line 5
    move v2, p2

    .line 6
    move v3, p3

    .line 7
    move-object v4, p4

    .line 8
    move-object v5, p5

    .line 9
    move v6, p6

    .line 10
    invoke-direct/range {v0 .. v6}, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;-><init>(IIZLjava/lang/String;Ljava/lang/String;Z)V

    .line 11
    .line 12
    .line 13
    return-object v7
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;

    .line 12
    .line 13
    iget v1, p0, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;->code:I

    .line 14
    .line 15
    iget v3, p1, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;->code:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget v1, p0, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;->deviceCode:I

    .line 21
    .line 22
    iget v3, p1, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;->deviceCode:I

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget-boolean v1, p0, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;->isAutoPrint:Z

    .line 28
    .line 29
    iget-boolean v3, p1, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;->isAutoPrint:Z

    .line 30
    .line 31
    if-eq v1, v3, :cond_4

    .line 32
    .line 33
    return v2

    .line 34
    :cond_4
    iget-object v1, p0, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;->orderType:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v3, p1, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;->orderType:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_5

    .line 43
    .line 44
    return v2

    .line 45
    :cond_5
    iget-object v1, p0, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;->orderNo:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v3, p1, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;->orderNo:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_6

    .line 54
    .line 55
    return v2

    .line 56
    :cond_6
    iget-boolean v1, p0, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;->isFirstPrintSuccess:Z

    .line 57
    .line 58
    iget-boolean p1, p1, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;->isFirstPrintSuccess:Z

    .line 59
    .line 60
    if-eq v1, p1, :cond_7

    .line 61
    .line 62
    return v2

    .line 63
    :cond_7
    return v0
.end method

.method public final getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;->code:I

    .line 2
    .line 3
    return v0
.end method

.method public final getDeviceCode()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;->deviceCode:I

    .line 2
    .line 3
    return v0
.end method

.method public final getOrderNo()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;->orderNo:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOrderType()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;->orderType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget v0, p0, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;->code:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget v1, p0, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;->deviceCode:I

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget-boolean v1, p0, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;->isAutoPrint:Z

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    :cond_0
    add-int/2addr v0, v1

    .line 17
    mul-int/lit8 v0, v0, 0x1f

    .line 18
    .line 19
    iget-object v1, p0, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;->orderType:Ljava/lang/String;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    :goto_0
    add-int/2addr v0, v1

    .line 31
    mul-int/lit8 v0, v0, 0x1f

    .line 32
    .line 33
    iget-object v1, p0, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;->orderNo:Ljava/lang/String;

    .line 34
    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    :goto_1
    add-int/2addr v0, v3

    .line 43
    mul-int/lit8 v0, v0, 0x1f

    .line 44
    .line 45
    iget-boolean v1, p0, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;->isFirstPrintSuccess:Z

    .line 46
    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_3
    move v2, v1

    .line 51
    :goto_2
    add-int/2addr v0, v2

    .line 52
    return v0
.end method

.method public final isAutoPrint()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;->isAutoPrint:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isFirstPrintSuccess()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;->isFirstPrintSuccess:Z

    .line 2
    .line 3
    return v0
.end method

.method public final setDeviceCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;->deviceCode:I

    .line 2
    .line 3
    return-void
.end method

.method public final setFirstPrintSuccess(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;->isFirstPrintSuccess:Z

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "PosPrintFinishInfo(code="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;->code:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", deviceCode="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;->deviceCode:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", isAutoPrint="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-boolean v1, p0, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;->isAutoPrint:Z

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", orderType="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;->orderType:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", orderNo="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;->orderNo:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", isFirstPrintSuccess="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-boolean v1, p0, Lteam/opay/spos/printer/internal/PosPrintFinishInfo;->isFirstPrintSuccess:Z

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const/16 v1, 0x29

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    return-object v0
.end method
