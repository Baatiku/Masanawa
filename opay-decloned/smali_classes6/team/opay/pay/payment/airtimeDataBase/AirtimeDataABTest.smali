.class public final Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataABTest;
.super Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;
.source "AirtimeDataABTest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataABTest$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/swarmfoundation/contacts/ABTestSwitcher<",
        "Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataABTest;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000  2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001 B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u001c\u001a\u00020\u001dH\u0016J\u0008\u0010\u001e\u001a\u00020\u0005H\u0016J\u0008\u0010\u001f\u001a\u00020\u0000H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\tR\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0007\"\u0004\u0008\u0015\u0010\tR\u001a\u0010\u0016\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0007\"\u0004\u0008\u0018\u0010\tR\u001a\u0010\u0019\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0010\"\u0004\u0008\u001b\u0010\u0012\u00a8\u0006!"
    }
    d2 = {
        "Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataABTest;",
        "Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;",
        "<init>",
        "()V",
        "airtime_text",
        "",
        "getAirtime_text",
        "()Ljava/lang/String;",
        "setAirtime_text",
        "(Ljava/lang/String;)V",
        "airtime_ussd",
        "getAirtime_ussd",
        "setAirtime_ussd",
        "airtime_show",
        "",
        "getAirtime_show",
        "()Z",
        "setAirtime_show",
        "(Z)V",
        "data_text",
        "getData_text",
        "setData_text",
        "data_ussd",
        "getData_ussd",
        "setData_ussd",
        "data_show",
        "getData_show",
        "setData_show",
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
.field public static final Companion:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataABTest$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private airtime_show:Z

.field private airtime_text:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private airtime_ussd:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private data_show:Z

.field private data_text:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private data_ussd:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataABTest$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataABTest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataABTest;->Companion:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataABTest$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Buy airtime fast & easy with *955#"

    .line 5
    .line 6
    iput-object v0, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataABTest;->airtime_text:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "*955#"

    .line 9
    .line 10
    iput-object v0, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataABTest;->airtime_ussd:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "Buy data fast & easy with *955#"

    .line 13
    .line 14
    iput-object v1, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataABTest;->data_text:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataABTest;->data_ussd:Ljava/lang/String;

    .line 17
    .line 18
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
    const-string v1, "airtime_text"

    .line 7
    .line 8
    iget-object v2, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataABTest;->airtime_text:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "airtime_ussd"

    .line 14
    .line 15
    iget-object v2, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataABTest;->airtime_ussd:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    const-string v1, "airtime_show"

    .line 21
    .line 22
    iget-boolean v2, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataABTest;->airtime_show:Z

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    const-string v1, "data_text"

    .line 28
    .line 29
    iget-object v2, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataABTest;->data_text:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    .line 33
    .line 34
    const-string v1, "data_ussd"

    .line 35
    .line 36
    iget-object v2, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataABTest;->data_ussd:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    .line 40
    .line 41
    const-string v1, "data_show"

    .line 42
    .line 43
    iget-boolean v2, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataABTest;->data_show:Z

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 46
    .line 47
    .line 48
    return-object v0
.end method

.method public featureName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "ng_airtime_data_ussd_banner_config"

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAirtime_show()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataABTest;->airtime_show:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getAirtime_text()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataABTest;->airtime_text:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAirtime_ussd()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataABTest;->airtime_ussd:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getData_show()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataABTest;->data_show:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getData_text()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataABTest;->data_text:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getData_ussd()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataABTest;->data_ussd:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataABTest;->getValue()Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataABTest;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataABTest;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-super {p0}, Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataABTest;

    return-object v0
.end method

.method public final setAirtime_show(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataABTest;->airtime_show:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setAirtime_text(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataABTest;->airtime_text:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setAirtime_ussd(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataABTest;->airtime_ussd:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setData_show(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataABTest;->data_show:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setData_text(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataABTest;->data_text:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setData_ussd(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataABTest;->data_ussd:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
