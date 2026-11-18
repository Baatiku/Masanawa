.class public final Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;
.super Ljava/lang/Object;
.source "FaceApiService.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/face/net/KycFaceRsp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KycTaskRsp"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0019\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001BK\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0010J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u0010\u0010 \u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0010J\t\u0010!\u001a\u00020\u000bH\u00c6\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\rH\u00c6\u0003J`\u0010#\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\rH\u00c6\u0001\u00a2\u0006\u0002\u0010$J\u0013\u0010%\u001a\u00020\u00032\u0008\u0010&\u001a\u0004\u0018\u00010\'H\u00d6\u0003J\t\u0010(\u001a\u00020)H\u00d6\u0001J\t\u0010*\u001a\u00020\u0005H\u00d6\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010\u0011\u001a\u0004\u0008\u0002\u0010\u0010R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0013R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010\u0011\u001a\u0004\u0008\u0017\u0010\u0010R\u0016\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0018\u0010\u000c\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\u00a8\u0006+"
    }
    d2 = {
        "Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;",
        "Ljava/io/Serializable;",
        "isFinish",
        "",
        "kycLevel",
        "",
        "currentComplianceLevel",
        "taskNode",
        "Lteam/opay/pay/kyc/base/KycTaskNode;",
        "verifyResult",
        "dialogResponse",
        "Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;",
        "extensions",
        "Lteam/opay/pay/kyc/base/KycExtensions;",
        "<init>",
        "(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/kyc/base/KycTaskNode;Ljava/lang/Boolean;Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;Lteam/opay/pay/kyc/base/KycExtensions;)V",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "getKycLevel",
        "()Ljava/lang/String;",
        "getCurrentComplianceLevel",
        "getTaskNode",
        "()Lteam/opay/pay/kyc/base/KycTaskNode;",
        "getVerifyResult",
        "getDialogResponse",
        "()Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;",
        "getExtensions",
        "()Lteam/opay/pay/kyc/base/KycExtensions;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "copy",
        "(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/kyc/base/KycTaskNode;Ljava/lang/Boolean;Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;Lteam/opay/pay/kyc/base/KycExtensions;)Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
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


# instance fields
.field private final currentComplianceLevel:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "currentComplianceLevel"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final dialogResponse:Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dialogResponse"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final extensions:Lteam/opay/pay/kyc/base/KycExtensions;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "extensions"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final isFinish:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "finished"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final kycLevel:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "kycLevel"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final taskNode:Lteam/opay/pay/kyc/base/KycTaskNode;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "taskNode"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final verifyResult:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "verifyResult"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/kyc/base/KycTaskNode;Ljava/lang/Boolean;Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;Lteam/opay/pay/kyc/base/KycExtensions;)V
    .locals 1
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lteam/opay/pay/kyc/base/KycTaskNode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lteam/opay/pay/kyc/base/KycExtensions;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "dialogResponse"

    .line 2
    .line 3
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->isFinish:Ljava/lang/Boolean;

    .line 10
    .line 11
    iput-object p2, p0, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->kycLevel:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p3, p0, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->currentComplianceLevel:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p4, p0, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->taskNode:Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 16
    .line 17
    iput-object p5, p0, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->verifyResult:Ljava/lang/Boolean;

    .line 18
    .line 19
    iput-object p6, p0, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->dialogResponse:Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;

    .line 20
    .line 21
    iput-object p7, p0, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->extensions:Lteam/opay/pay/kyc/base/KycExtensions;

    .line 22
    .line 23
    return-void
.end method

.method public static synthetic copy$default(Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/kyc/base/KycTaskNode;Ljava/lang/Boolean;Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;Lteam/opay/pay/kyc/base/KycExtensions;ILjava/lang/Object;)Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;
    .locals 5

    .line 1
    and-int/lit8 p9, p8, 0x1

    .line 2
    .line 3
    if-eqz p9, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->isFinish:Ljava/lang/Boolean;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p9, p8, 0x2

    .line 8
    .line 9
    if-eqz p9, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->kycLevel:Ljava/lang/String;

    .line 12
    .line 13
    :cond_1
    move-object p9, p2

    .line 14
    and-int/lit8 p2, p8, 0x4

    .line 15
    .line 16
    if-eqz p2, :cond_2

    .line 17
    .line 18
    iget-object p3, p0, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->currentComplianceLevel:Ljava/lang/String;

    .line 19
    .line 20
    :cond_2
    move-object v0, p3

    .line 21
    and-int/lit8 p2, p8, 0x8

    .line 22
    .line 23
    if-eqz p2, :cond_3

    .line 24
    .line 25
    iget-object p4, p0, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->taskNode:Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 26
    .line 27
    :cond_3
    move-object v1, p4

    .line 28
    and-int/lit8 p2, p8, 0x10

    .line 29
    .line 30
    if-eqz p2, :cond_4

    .line 31
    .line 32
    iget-object p5, p0, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->verifyResult:Ljava/lang/Boolean;

    .line 33
    .line 34
    :cond_4
    move-object v2, p5

    .line 35
    and-int/lit8 p2, p8, 0x20

    .line 36
    .line 37
    if-eqz p2, :cond_5

    .line 38
    .line 39
    iget-object p6, p0, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->dialogResponse:Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;

    .line 40
    .line 41
    :cond_5
    move-object v3, p6

    .line 42
    and-int/lit8 p2, p8, 0x40

    .line 43
    .line 44
    if-eqz p2, :cond_6

    .line 45
    .line 46
    iget-object p7, p0, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->extensions:Lteam/opay/pay/kyc/base/KycExtensions;

    .line 47
    .line 48
    :cond_6
    move-object v4, p7

    .line 49
    move-object p2, p0

    .line 50
    move-object p3, p1

    .line 51
    move-object p4, p9

    .line 52
    move-object p5, v0

    .line 53
    move-object p6, v1

    .line 54
    move-object p7, v2

    .line 55
    move-object p8, v3

    .line 56
    move-object p9, v4

    .line 57
    invoke-virtual/range {p2 .. p9}, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->copy(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/kyc/base/KycTaskNode;Ljava/lang/Boolean;Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;Lteam/opay/pay/kyc/base/KycExtensions;)Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->isFinish:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->kycLevel:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->currentComplianceLevel:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()Lteam/opay/pay/kyc/base/KycTaskNode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->taskNode:Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component5()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->verifyResult:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component6()Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->dialogResponse:Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component7()Lteam/opay/pay/kyc/base/KycExtensions;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->extensions:Lteam/opay/pay/kyc/base/KycExtensions;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/kyc/base/KycTaskNode;Ljava/lang/Boolean;Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;Lteam/opay/pay/kyc/base/KycExtensions;)Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;
    .locals 9
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lteam/opay/pay/kyc/base/KycTaskNode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lteam/opay/pay/kyc/base/KycExtensions;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "dialogResponse"

    .line 2
    .line 3
    move-object v7, p6

    .line 4
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;

    .line 8
    .line 9
    move-object v1, v0

    .line 10
    move-object v2, p1

    .line 11
    move-object v3, p2

    .line 12
    move-object v4, p3

    .line 13
    move-object v5, p4

    .line 14
    move-object v6, p5

    .line 15
    move-object/from16 v8, p7

    .line 16
    .line 17
    invoke-direct/range {v1 .. v8}, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/kyc/base/KycTaskNode;Ljava/lang/Boolean;Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;Lteam/opay/pay/kyc/base/KycExtensions;)V

    .line 18
    .line 19
    .line 20
    return-object v0
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
    instance-of v1, p1, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;

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
    check-cast p1, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;

    .line 12
    .line 13
    iget-object v1, p0, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->isFinish:Ljava/lang/Boolean;

    .line 14
    .line 15
    iget-object v3, p1, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->isFinish:Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->kycLevel:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->kycLevel:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->currentComplianceLevel:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v3, p1, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->currentComplianceLevel:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget-object v1, p0, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->taskNode:Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 47
    .line 48
    iget-object v3, p1, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->taskNode:Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 49
    .line 50
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_5

    .line 55
    .line 56
    return v2

    .line 57
    :cond_5
    iget-object v1, p0, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->verifyResult:Ljava/lang/Boolean;

    .line 58
    .line 59
    iget-object v3, p1, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->verifyResult:Ljava/lang/Boolean;

    .line 60
    .line 61
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_6

    .line 66
    .line 67
    return v2

    .line 68
    :cond_6
    iget-object v1, p0, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->dialogResponse:Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;

    .line 69
    .line 70
    iget-object v3, p1, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->dialogResponse:Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;

    .line 71
    .line 72
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_7

    .line 77
    .line 78
    return v2

    .line 79
    :cond_7
    iget-object v1, p0, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->extensions:Lteam/opay/pay/kyc/base/KycExtensions;

    .line 80
    .line 81
    iget-object p1, p1, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->extensions:Lteam/opay/pay/kyc/base/KycExtensions;

    .line 82
    .line 83
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-nez p1, :cond_8

    .line 88
    .line 89
    return v2

    .line 90
    :cond_8
    return v0
.end method

.method public final getCurrentComplianceLevel()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->currentComplianceLevel:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDialogResponse()Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->dialogResponse:Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getExtensions()Lteam/opay/pay/kyc/base/KycExtensions;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->extensions:Lteam/opay/pay/kyc/base/KycExtensions;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getKycLevel()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->kycLevel:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTaskNode()Lteam/opay/pay/kyc/base/KycTaskNode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->taskNode:Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getVerifyResult()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->verifyResult:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->isFinish:Ljava/lang/Boolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->kycLevel:Ljava/lang/String;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    :goto_1
    add-int/2addr v0, v2

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object v2, p0, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->currentComplianceLevel:Ljava/lang/String;

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    :goto_2
    add-int/2addr v0, v2

    .line 38
    mul-int/lit8 v0, v0, 0x1f

    .line 39
    .line 40
    iget-object v2, p0, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->taskNode:Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 41
    .line 42
    if-nez v2, :cond_3

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    goto :goto_3

    .line 46
    :cond_3
    invoke-virtual {v2}, Lteam/opay/pay/kyc/base/KycTaskNode;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    :goto_3
    add-int/2addr v0, v2

    .line 51
    mul-int/lit8 v0, v0, 0x1f

    .line 52
    .line 53
    iget-object v2, p0, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->verifyResult:Ljava/lang/Boolean;

    .line 54
    .line 55
    if-nez v2, :cond_4

    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    goto :goto_4

    .line 59
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    :goto_4
    add-int/2addr v0, v2

    .line 64
    mul-int/lit8 v0, v0, 0x1f

    .line 65
    .line 66
    iget-object v2, p0, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->dialogResponse:Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;

    .line 67
    .line 68
    invoke-virtual {v2}, Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;->hashCode()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    add-int/2addr v0, v2

    .line 73
    mul-int/lit8 v0, v0, 0x1f

    .line 74
    .line 75
    iget-object v2, p0, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->extensions:Lteam/opay/pay/kyc/base/KycExtensions;

    .line 76
    .line 77
    if-nez v2, :cond_5

    .line 78
    .line 79
    goto :goto_5

    .line 80
    :cond_5
    invoke-virtual {v2}, Lteam/opay/pay/kyc/base/KycExtensions;->hashCode()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    :goto_5
    add-int/2addr v0, v1

    .line 85
    return v0
.end method

.method public final isFinish()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->isFinish:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->isFinish:Ljava/lang/Boolean;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->kycLevel:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->currentComplianceLevel:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->taskNode:Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 8
    .line 9
    iget-object v4, p0, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->verifyResult:Ljava/lang/Boolean;

    .line 10
    .line 11
    iget-object v5, p0, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->dialogResponse:Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;

    .line 12
    .line 13
    iget-object v6, p0, Lteam/opay/face/net/KycFaceRsp$KycTaskRsp;->extensions:Lteam/opay/pay/kyc/base/KycExtensions;

    .line 14
    .line 15
    new-instance v7, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v8, "KycTaskRsp(isFinish="

    .line 21
    .line 22
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v0, ", kycLevel="

    .line 29
    .line 30
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, ", currentComplianceLevel="

    .line 37
    .line 38
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v0, ", taskNode="

    .line 45
    .line 46
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v0, ", verifyResult="

    .line 53
    .line 54
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v0, ", dialogResponse="

    .line 61
    .line 62
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v0, ", extensions="

    .line 69
    .line 70
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v0, ")"

    .line 77
    .line 78
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    return-object v0
.end method
