.class public final Lteam/opay/pay/security/intercept/HttpEncryptConfig;
.super Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/security/intercept/HttpEncryptConfig$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/swarmfoundation/contacts/ABTestSwitcher<",
        "Lteam/opay/pay/security/intercept/HttpEncryptConfig;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0007\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\u0008\u001a\u00020\u0000H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u001c\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0086D\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0012"
    }
    d2 = {
        "Lteam/opay/pay/security/intercept/HttpEncryptConfig;",
        "Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;",
        "Lorg/json/JSONObject;",
        "defaultValue",
        "()Lorg/json/JSONObject;",
        "",
        "featureName",
        "()Ljava/lang/String;",
        "getValue",
        "()Lteam/opay/pay/security/intercept/HttpEncryptConfig;",
        "",
        "needEncrypt",
        "Z",
        "getNeedEncrypt",
        "()Z",
        "<init>",
        "()V",
        "Companion",
        "security_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
    pn = ""
    xi = 0x0
    xs = ""
.end annotation


# static fields
.field public static final Companion:Lteam/opay/pay/security/intercept/HttpEncryptConfig$a;

.field public static final isDisableEncryptByDev$delegate:Lid8;


# instance fields
.field public final needEncrypt:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/pay/security/intercept/HttpEncryptConfig$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/pay/security/intercept/HttpEncryptConfig$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lteam/opay/pay/security/intercept/HttpEncryptConfig;->Companion:Lteam/opay/pay/security/intercept/HttpEncryptConfig$a;

    .line 7
    .line 8
    sget-object v0, Lteam/opay/pay/security/intercept/HttpEncryptConfig$Companion$isDisableEncryptByDev$2;->INSTANCE:Lteam/opay/pay/security/intercept/HttpEncryptConfig$Companion$isDisableEncryptByDev$2;

    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lteam/opay/pay/security/intercept/HttpEncryptConfig;->isDisableEncryptByDev$delegate:Lid8;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lteam/opay/pay/security/intercept/HttpEncryptConfig;->needEncrypt:Z

    .line 6
    .line 7
    return-void
.end method

.method public static final synthetic access$isDisableEncryptByDev$cp()Lid8;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/security/intercept/HttpEncryptConfig;->isDisableEncryptByDev$delegate:Lid8;

    .line 2
    .line 3
    return-object v0
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
    iget-boolean v1, p0, Lteam/opay/pay/security/intercept/HttpEncryptConfig;->needEncrypt:Z

    .line 7
    .line 8
    const-string v2, "needEncrypt"

    .line 9
    .line 10
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public featureName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "ng_feature_http_encrypt_config"

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNeedEncrypt()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/security/intercept/HttpEncryptConfig;->needEncrypt:Z

    .line 2
    .line 3
    return v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/security/intercept/HttpEncryptConfig;->getValue()Lteam/opay/pay/security/intercept/HttpEncryptConfig;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lteam/opay/pay/security/intercept/HttpEncryptConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-super {p0}, Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lteam/opay/pay/security/intercept/HttpEncryptConfig;

    return-object v0
.end method
