.class public final Lteam/opay/pay/home/tabs/ac/AcTransferToAaTransferSwitcher;
.super Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;
.source "AcTransferToAaTransferSwitcher.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/home/tabs/ac/AcTransferToAaTransferSwitcher$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/swarmfoundation/contacts/ABTestSwitcher<",
        "Lteam/opay/pay/home/tabs/ac/AcTransferToAaTransferSwitcher;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00192\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0019B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u0008\u0010\u0017\u001a\u00020\u0005H\u0016J\u0008\u0010\u0018\u001a\u00020\u0000H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082D\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u000f\"\u0004\u0008\u0014\u0010\u0011\u00a8\u0006\u001a"
    }
    d2 = {
        "Lteam/opay/pay/home/tabs/ac/AcTransferToAaTransferSwitcher;",
        "Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;",
        "<init>",
        "()V",
        "key",
        "",
        "open",
        "",
        "getOpen",
        "()Z",
        "setOpen",
        "(Z)V",
        "totalNum",
        "",
        "getTotalNum",
        "()I",
        "setTotalNum",
        "(I)V",
        "userNum",
        "getUserNum",
        "setUserNum",
        "defaultValue",
        "Lorg/json/JSONObject;",
        "featureName",
        "getValue",
        "Companion",
        "sdk_release"
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
.field public static final Companion:Lteam/opay/pay/home/tabs/ac/AcTransferToAaTransferSwitcher$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final key:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private open:Z

.field private totalNum:I

.field private userNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/home/tabs/ac/AcTransferToAaTransferSwitcher$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/home/tabs/ac/AcTransferToAaTransferSwitcher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/home/tabs/ac/AcTransferToAaTransferSwitcher;->Companion:Lteam/opay/pay/home/tabs/ac/AcTransferToAaTransferSwitcher$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "feature_key_ac_transfer_to_aa_cashout"

    .line 5
    .line 6
    iput-object v0, p0, Lteam/opay/pay/home/tabs/ac/AcTransferToAaTransferSwitcher;->key:Ljava/lang/String;

    .line 7
    .line 8
    const/16 v0, 0xa

    .line 9
    .line 10
    iput v0, p0, Lteam/opay/pay/home/tabs/ac/AcTransferToAaTransferSwitcher;->totalNum:I

    .line 11
    .line 12
    const/4 v0, 0x5

    .line 13
    iput v0, p0, Lteam/opay/pay/home/tabs/ac/AcTransferToAaTransferSwitcher;->userNum:I

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public defaultValue()Lorg/json/JSONObject;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "open"

    .line 7
    .line 8
    iget-boolean v2, p0, Lteam/opay/pay/home/tabs/ac/AcTransferToAaTransferSwitcher;->open:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "totalNum"

    .line 14
    .line 15
    iget v2, p0, Lteam/opay/pay/home/tabs/ac/AcTransferToAaTransferSwitcher;->totalNum:I

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    const-string v1, "userNum"

    .line 21
    .line 22
    iget v2, p0, Lteam/opay/pay/home/tabs/ac/AcTransferToAaTransferSwitcher;->userNum:I

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method public featureName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/tabs/ac/AcTransferToAaTransferSwitcher;->key:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOpen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/home/tabs/ac/AcTransferToAaTransferSwitcher;->open:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getTotalNum()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/home/tabs/ac/AcTransferToAaTransferSwitcher;->totalNum:I

    .line 2
    .line 3
    return v0
.end method

.method public final getUserNum()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/home/tabs/ac/AcTransferToAaTransferSwitcher;->userNum:I

    .line 2
    .line 3
    return v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/AcTransferToAaTransferSwitcher;->getValue()Lteam/opay/pay/home/tabs/ac/AcTransferToAaTransferSwitcher;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lteam/opay/pay/home/tabs/ac/AcTransferToAaTransferSwitcher;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lteam/opay/pay/home/tabs/ac/AcTransferToAaTransferSwitcher;

    return-object v0
.end method

.method public final setOpen(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/home/tabs/ac/AcTransferToAaTransferSwitcher;->open:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setTotalNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/pay/home/tabs/ac/AcTransferToAaTransferSwitcher;->totalNum:I

    .line 2
    .line 3
    return-void
.end method

.method public final setUserNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/pay/home/tabs/ac/AcTransferToAaTransferSwitcher;->userNum:I

    .line 2
    .line 3
    return-void
.end method
