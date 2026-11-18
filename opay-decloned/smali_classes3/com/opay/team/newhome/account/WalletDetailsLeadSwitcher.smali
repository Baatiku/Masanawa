.class public final Lcom/opay/team/newhome/account/WalletDetailsLeadSwitcher;
.super Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;
.source "WalletDetailsLeadSwitcher.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opay/team/newhome/account/WalletDetailsLeadSwitcher$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/swarmfoundation/contacts/ABTestSwitcher<",
        "Lcom/opay/team/newhome/account/WalletDetailsLeadSwitcher;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000  2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001 B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u001a\u001a\u00020\u001bH\u0016J\u0008\u0010\u001c\u001a\u00020\u0011H\u0016J\u0008\u0010\u001d\u001a\u00020\u0000H\u0016J\u0006\u0010\u001e\u001a\u00020\u0005J\u0006\u0010\u001f\u001a\u00020\u0005R\u0014\u0010\u0004\u001a\u00020\u0005X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\tX\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000c\u001a\u00020\tX\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000bR\u0014\u0010\u000e\u001a\u00020\tX\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000bR\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0013R\u0013\u0010\u0016\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0013R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/opay/team/newhome/account/WalletDetailsLeadSwitcher;",
        "Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;",
        "<init>",
        "()V",
        "jumpNew",
        "",
        "getJumpNew",
        "()Z",
        "bannerTimeFrame",
        "",
        "getBannerTimeFrame",
        "()I",
        "show",
        "getShow",
        "click",
        "getClick",
        "intersestAction",
        "",
        "getIntersestAction",
        "()Ljava/lang/String;",
        "bottomAction",
        "getBottomAction",
        "bottomHintText",
        "getBottomHintText",
        "storage",
        "Lteam/opay/core/settings/NoClearStorage;",
        "defaultValue",
        "Lorg/json/JSONObject;",
        "featureName",
        "getValue",
        "inTimeFrame",
        "shouldShow",
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
.field public static final Companion:Lcom/opay/team/newhome/account/WalletDetailsLeadSwitcher$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final bannerTimeFrame:I

.field private final bottomAction:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final bottomHintText:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final click:I

.field private final intersestAction:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final jumpNew:Z

.field private final show:I

.field private final storage:Lteam/opay/core/settings/NoClearStorage;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/opay/team/newhome/account/WalletDetailsLeadSwitcher$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/opay/team/newhome/account/WalletDetailsLeadSwitcher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/opay/team/newhome/account/WalletDetailsLeadSwitcher;->Companion:Lcom/opay/team/newhome/account/WalletDetailsLeadSwitcher$Companion;

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
    const/16 v0, 0x48

    .line 5
    .line 6
    iput v0, p0, Lcom/opay/team/newhome/account/WalletDetailsLeadSwitcher;->bannerTimeFrame:I

    .line 7
    .line 8
    const/4 v0, 0x3

    .line 9
    iput v0, p0, Lcom/opay/team/newhome/account/WalletDetailsLeadSwitcher;->show:I

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lcom/opay/team/newhome/account/WalletDetailsLeadSwitcher;->click:I

    .line 13
    .line 14
    const-string v0, "https://owealthh5.opayweb.com/interest-detail"

    .line 15
    .line 16
    iput-object v0, p0, Lcom/opay/team/newhome/account/WalletDetailsLeadSwitcher;->intersestAction:Ljava/lang/String;

    .line 17
    .line 18
    const-string v0, "otravel://securitycenter/entrance"

    .line 19
    .line 20
    iput-object v0, p0, Lcom/opay/team/newhome/account/WalletDetailsLeadSwitcher;->bottomAction:Ljava/lang/String;

    .line 21
    .line 22
    sget v0, Lteam/opay/pay/R$string;->osdk_new_wallet_details_bottom_hint:I

    .line 23
    .line 24
    invoke-static {v0}, Ljmf;->k(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/opay/team/newhome/account/WalletDetailsLeadSwitcher;->bottomHintText:Ljava/lang/String;

    .line 29
    .line 30
    new-instance v0, Lteam/opay/core/settings/NoClearStorage;

    .line 31
    .line 32
    invoke-static {}, Ljmf;->i()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-direct {v0, v1}, Lteam/opay/core/settings/NoClearStorage;-><init>(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/opay/team/newhome/account/WalletDetailsLeadSwitcher;->storage:Lteam/opay/core/settings/NoClearStorage;

    .line 40
    .line 41
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
    const-string v1, "jumpNew"

    .line 7
    .line 8
    iget-boolean v2, p0, Lcom/opay/team/newhome/account/WalletDetailsLeadSwitcher;->jumpNew:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "show"

    .line 14
    .line 15
    iget v2, p0, Lcom/opay/team/newhome/account/WalletDetailsLeadSwitcher;->show:I

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    const-string v1, "click"

    .line 21
    .line 22
    iget v2, p0, Lcom/opay/team/newhome/account/WalletDetailsLeadSwitcher;->click:I

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    const-string v1, "intersestAction"

    .line 28
    .line 29
    iget-object v2, p0, Lcom/opay/team/newhome/account/WalletDetailsLeadSwitcher;->intersestAction:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    .line 33
    .line 34
    const-string v1, "bottomAction"

    .line 35
    .line 36
    iget-object v2, p0, Lcom/opay/team/newhome/account/WalletDetailsLeadSwitcher;->bottomAction:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    .line 40
    .line 41
    const-string v1, "bottomHintText"

    .line 42
    .line 43
    iget-object v2, p0, Lcom/opay/team/newhome/account/WalletDetailsLeadSwitcher;->bottomHintText:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

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
    const-string v0, "key_jump_to_new_wallet"

    .line 2
    .line 3
    return-object v0
.end method

.method public final getBannerTimeFrame()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/team/newhome/account/WalletDetailsLeadSwitcher;->bannerTimeFrame:I

    .line 2
    .line 3
    return v0
.end method

.method public final getBottomAction()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/account/WalletDetailsLeadSwitcher;->bottomAction:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getBottomHintText()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/account/WalletDetailsLeadSwitcher;->bottomHintText:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getClick()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/team/newhome/account/WalletDetailsLeadSwitcher;->click:I

    .line 2
    .line 3
    return v0
.end method

.method public final getIntersestAction()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/account/WalletDetailsLeadSwitcher;->intersestAction:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getJumpNew()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/opay/team/newhome/account/WalletDetailsLeadSwitcher;->jumpNew:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getShow()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/team/newhome/account/WalletDetailsLeadSwitcher;->show:I

    .line 2
    .line 3
    return v0
.end method

.method public getValue()Lcom/opay/team/newhome/account/WalletDetailsLeadSwitcher;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/opay/team/newhome/account/WalletDetailsLeadSwitcher;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/opay/team/newhome/account/WalletDetailsLeadSwitcher;->getValue()Lcom/opay/team/newhome/account/WalletDetailsLeadSwitcher;

    move-result-object v0

    return-object v0
.end method

.method public final inTimeFrame()Z
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/opay/team/newhome/account/WalletDetailsLeadSwitcher;->storage:Lteam/opay/core/settings/NoClearStorage;

    .line 6
    .line 7
    invoke-virtual {v2}, Lteam/opay/core/settings/NoClearStorage;->l0()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    sub-long/2addr v0, v2

    .line 12
    long-to-float v0, v0

    .line 13
    const v1, 0x4a5bba00    # 3600000.0f

    .line 14
    .line 15
    .line 16
    div-float/2addr v0, v1

    .line 17
    iget v1, p0, Lcom/opay/team/newhome/account/WalletDetailsLeadSwitcher;->bannerTimeFrame:I

    .line 18
    .line 19
    int-to-float v1, v1

    .line 20
    cmpg-float v0, v0, v1

    .line 21
    .line 22
    if-gez v0, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    :goto_0
    return v0
.end method

.method public final shouldShow()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/opay/team/newhome/account/WalletDetailsLeadSwitcher;->inTimeFrame()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/opay/team/newhome/account/WalletDetailsLeadSwitcher;->storage:Lteam/opay/core/settings/NoClearStorage;

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Lteam/opay/core/settings/NoClearStorage;->T1(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/opay/team/newhome/account/WalletDetailsLeadSwitcher;->storage:Lteam/opay/core/settings/NoClearStorage;

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Lteam/opay/core/settings/NoClearStorage;->S1(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/opay/team/newhome/account/WalletDetailsLeadSwitcher;->storage:Lteam/opay/core/settings/NoClearStorage;

    .line 20
    .line 21
    const-wide/16 v2, 0x0

    .line 22
    .line 23
    invoke-virtual {v0, v2, v3}, Lteam/opay/core/settings/NoClearStorage;->U1(J)V

    .line 24
    .line 25
    .line 26
    return v1

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/opay/team/newhome/account/WalletDetailsLeadSwitcher;->storage:Lteam/opay/core/settings/NoClearStorage;

    .line 28
    .line 29
    invoke-virtual {v0}, Lteam/opay/core/settings/NoClearStorage;->k0()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iget v3, p0, Lcom/opay/team/newhome/account/WalletDetailsLeadSwitcher;->show:I

    .line 34
    .line 35
    if-ge v0, v3, :cond_1

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v0, 0x0

    .line 40
    :goto_0
    iget-object v3, p0, Lcom/opay/team/newhome/account/WalletDetailsLeadSwitcher;->storage:Lteam/opay/core/settings/NoClearStorage;

    .line 41
    .line 42
    invoke-virtual {v3}, Lteam/opay/core/settings/NoClearStorage;->j0()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    iget v4, p0, Lcom/opay/team/newhome/account/WalletDetailsLeadSwitcher;->click:I

    .line 47
    .line 48
    if-ge v3, v4, :cond_2

    .line 49
    .line 50
    const/4 v3, 0x1

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    const/4 v3, 0x0

    .line 53
    :goto_1
    if-eqz v0, :cond_3

    .line 54
    .line 55
    if-eqz v3, :cond_3

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_3
    const/4 v1, 0x0

    .line 59
    :goto_2
    return v1
.end method
