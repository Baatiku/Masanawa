.class public final Lteam/opay/pay/kyc/customer/InputCountryReq;
.super Ljava/lang/Object;
.source "KycApiService.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008$\u0008\u0086\u0008\u0018\u00002\u00020\u0001Bm\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0010\u0010\u0012\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0010\u0010\u0015\u001a\u00020\u0014H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u001a\u0010\u0019\u001a\u00020\u00182\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0019\u0010\u001aR\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u0013\"\u0004\u0008\u001e\u0010\u001fR\"\u0010\u0004\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008 \u0010\u001c\u001a\u0004\u0008!\u0010\u0013\"\u0004\u0008\"\u0010\u001fR$\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008#\u0010\u001c\u001a\u0004\u0008$\u0010\u0013\"\u0004\u0008%\u0010\u001fR\"\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R\"\u0010\u0008\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008,\u0010\u001c\u001a\u0004\u0008-\u0010\u0013\"\u0004\u0008.\u0010\u001fR$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008/\u0010\u001c\u001a\u0004\u00080\u0010\u0013\"\u0004\u0008&\u0010\u001fR$\u0010\n\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u00081\u0010\u001c\u001a\u0004\u00082\u0010\u0013\"\u0004\u0008,\u0010\u001fR$\u0010\u000c\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u00083\u00104\u001a\u0004\u0008\u001b\u00105\"\u0004\u0008/\u00106R$\u0010\r\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u00087\u00104\u001a\u0004\u0008#\u00105\"\u0004\u00083\u00106R$\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u00088\u00109\u001a\u0004\u0008 \u0010:\"\u0004\u00081\u0010;\u00a8\u0006<"
    }
    d2 = {
        "Lteam/opay/pay/kyc/customer/InputCountryReq;",
        "",
        "",
        "scene",
        "taskScene",
        "bizSecurityId",
        "",
        "taskRecordId",
        "taskId",
        "country",
        "countryCode2",
        "Lteam/opay/pay/kyc/customer/CardImage;",
        "passport",
        "visa",
        "Lteam/opay/pay/kyc/customer/CardResidenceImage;",
        "residence",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/kyc/customer/CardImage;Lteam/opay/pay/kyc/customer/CardImage;Lteam/opay/pay/kyc/customer/CardResidenceImage;)V",
        "toString",
        "()Ljava/lang/String;",
        "",
        "hashCode",
        "()I",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "a",
        "Ljava/lang/String;",
        "getScene",
        "setScene",
        "(Ljava/lang/String;)V",
        "b",
        "getTaskScene",
        "setTaskScene",
        "c",
        "getBizSecurityId",
        "setBizSecurityId",
        "d",
        "J",
        "getTaskRecordId",
        "()J",
        "setTaskRecordId",
        "(J)V",
        "e",
        "getTaskId",
        "setTaskId",
        "f",
        "getCountry",
        "g",
        "getCountryCode2",
        "h",
        "Lteam/opay/pay/kyc/customer/CardImage;",
        "()Lteam/opay/pay/kyc/customer/CardImage;",
        "(Lteam/opay/pay/kyc/customer/CardImage;)V",
        "i",
        "j",
        "Lteam/opay/pay/kyc/customer/CardResidenceImage;",
        "()Lteam/opay/pay/kyc/customer/CardResidenceImage;",
        "(Lteam/opay/pay/kyc/customer/CardResidenceImage;)V",
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
.field private a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "scene"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "taskScene"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bizSecurityId"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "taskRecordId"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "taskId"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "country"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "countryCode2"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private h:Lteam/opay/pay/kyc/customer/CardImage;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "passport"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private i:Lteam/opay/pay/kyc/customer/CardImage;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "visa"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private j:Lteam/opay/pay/kyc/customer/CardResidenceImage;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "residence"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/kyc/customer/CardImage;Lteam/opay/pay/kyc/customer/CardImage;Lteam/opay/pay/kyc/customer/CardResidenceImage;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Lteam/opay/pay/kyc/customer/CardImage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Lteam/opay/pay/kyc/customer/CardImage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Lteam/opay/pay/kyc/customer/CardResidenceImage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "scene"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskScene"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskId"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lteam/opay/pay/kyc/customer/InputCountryReq;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lteam/opay/pay/kyc/customer/InputCountryReq;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lteam/opay/pay/kyc/customer/InputCountryReq;->c:Ljava/lang/String;

    .line 5
    iput-wide p4, p0, Lteam/opay/pay/kyc/customer/InputCountryReq;->d:J

    .line 6
    iput-object p6, p0, Lteam/opay/pay/kyc/customer/InputCountryReq;->e:Ljava/lang/String;

    .line 7
    iput-object p7, p0, Lteam/opay/pay/kyc/customer/InputCountryReq;->f:Ljava/lang/String;

    .line 8
    iput-object p8, p0, Lteam/opay/pay/kyc/customer/InputCountryReq;->g:Ljava/lang/String;

    .line 9
    iput-object p9, p0, Lteam/opay/pay/kyc/customer/InputCountryReq;->h:Lteam/opay/pay/kyc/customer/CardImage;

    .line 10
    iput-object p10, p0, Lteam/opay/pay/kyc/customer/InputCountryReq;->i:Lteam/opay/pay/kyc/customer/CardImage;

    .line 11
    iput-object p11, p0, Lteam/opay/pay/kyc/customer/InputCountryReq;->j:Lteam/opay/pay/kyc/customer/CardResidenceImage;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/kyc/customer/CardImage;Lteam/opay/pay/kyc/customer/CardImage;Lteam/opay/pay/kyc/customer/CardResidenceImage;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 15

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v10, v2

    goto :goto_0

    :cond_0
    move-object/from16 v10, p7

    :goto_0
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_1

    move-object v11, v2

    goto :goto_1

    :cond_1
    move-object/from16 v11, p8

    :goto_1
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_2

    move-object v12, v2

    goto :goto_2

    :cond_2
    move-object/from16 v12, p9

    :goto_2
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_3

    move-object v13, v2

    goto :goto_3

    :cond_3
    move-object/from16 v13, p10

    :goto_3
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_4

    move-object v14, v2

    goto :goto_4

    :cond_4
    move-object/from16 v14, p11

    :goto_4
    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-wide/from16 v7, p4

    move-object/from16 v9, p6

    .line 12
    invoke-direct/range {v3 .. v14}, Lteam/opay/pay/kyc/customer/InputCountryReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/kyc/customer/CardImage;Lteam/opay/pay/kyc/customer/CardImage;Lteam/opay/pay/kyc/customer/CardResidenceImage;)V

    return-void
.end method


# virtual methods
.method public final a()Lteam/opay/pay/kyc/customer/CardImage;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/customer/InputCountryReq;->h:Lteam/opay/pay/kyc/customer/CardImage;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Lteam/opay/pay/kyc/customer/CardResidenceImage;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/customer/InputCountryReq;->j:Lteam/opay/pay/kyc/customer/CardResidenceImage;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Lteam/opay/pay/kyc/customer/CardImage;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/customer/InputCountryReq;->i:Lteam/opay/pay/kyc/customer/CardImage;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/customer/InputCountryReq;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/customer/InputCountryReq;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
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
    instance-of v1, p1, Lteam/opay/pay/kyc/customer/InputCountryReq;

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
    check-cast p1, Lteam/opay/pay/kyc/customer/InputCountryReq;

    .line 12
    .line 13
    iget-object v1, p0, Lteam/opay/pay/kyc/customer/InputCountryReq;->a:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lteam/opay/pay/kyc/customer/InputCountryReq;->a:Ljava/lang/String;

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
    iget-object v1, p0, Lteam/opay/pay/kyc/customer/InputCountryReq;->b:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lteam/opay/pay/kyc/customer/InputCountryReq;->b:Ljava/lang/String;

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
    iget-object v1, p0, Lteam/opay/pay/kyc/customer/InputCountryReq;->c:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v3, p1, Lteam/opay/pay/kyc/customer/InputCountryReq;->c:Ljava/lang/String;

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
    iget-wide v3, p0, Lteam/opay/pay/kyc/customer/InputCountryReq;->d:J

    .line 47
    .line 48
    iget-wide v5, p1, Lteam/opay/pay/kyc/customer/InputCountryReq;->d:J

    .line 49
    .line 50
    cmp-long v1, v3, v5

    .line 51
    .line 52
    if-eqz v1, :cond_5

    .line 53
    .line 54
    return v2

    .line 55
    :cond_5
    iget-object v1, p0, Lteam/opay/pay/kyc/customer/InputCountryReq;->e:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v3, p1, Lteam/opay/pay/kyc/customer/InputCountryReq;->e:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_6

    .line 64
    .line 65
    return v2

    .line 66
    :cond_6
    iget-object v1, p0, Lteam/opay/pay/kyc/customer/InputCountryReq;->f:Ljava/lang/String;

    .line 67
    .line 68
    iget-object v3, p1, Lteam/opay/pay/kyc/customer/InputCountryReq;->f:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-nez v1, :cond_7

    .line 75
    .line 76
    return v2

    .line 77
    :cond_7
    iget-object v1, p0, Lteam/opay/pay/kyc/customer/InputCountryReq;->g:Ljava/lang/String;

    .line 78
    .line 79
    iget-object v3, p1, Lteam/opay/pay/kyc/customer/InputCountryReq;->g:Ljava/lang/String;

    .line 80
    .line 81
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-nez v1, :cond_8

    .line 86
    .line 87
    return v2

    .line 88
    :cond_8
    iget-object v1, p0, Lteam/opay/pay/kyc/customer/InputCountryReq;->h:Lteam/opay/pay/kyc/customer/CardImage;

    .line 89
    .line 90
    iget-object v3, p1, Lteam/opay/pay/kyc/customer/InputCountryReq;->h:Lteam/opay/pay/kyc/customer/CardImage;

    .line 91
    .line 92
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-nez v1, :cond_9

    .line 97
    .line 98
    return v2

    .line 99
    :cond_9
    iget-object v1, p0, Lteam/opay/pay/kyc/customer/InputCountryReq;->i:Lteam/opay/pay/kyc/customer/CardImage;

    .line 100
    .line 101
    iget-object v3, p1, Lteam/opay/pay/kyc/customer/InputCountryReq;->i:Lteam/opay/pay/kyc/customer/CardImage;

    .line 102
    .line 103
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-nez v1, :cond_a

    .line 108
    .line 109
    return v2

    .line 110
    :cond_a
    iget-object v1, p0, Lteam/opay/pay/kyc/customer/InputCountryReq;->j:Lteam/opay/pay/kyc/customer/CardResidenceImage;

    .line 111
    .line 112
    iget-object p1, p1, Lteam/opay/pay/kyc/customer/InputCountryReq;->j:Lteam/opay/pay/kyc/customer/CardResidenceImage;

    .line 113
    .line 114
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-nez p1, :cond_b

    .line 119
    .line 120
    return v2

    .line 121
    :cond_b
    return v0
.end method

.method public final f(Lteam/opay/pay/kyc/customer/CardImage;)V
    .locals 0
    .param p1    # Lteam/opay/pay/kyc/customer/CardImage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/customer/InputCountryReq;->h:Lteam/opay/pay/kyc/customer/CardImage;

    .line 2
    .line 3
    return-void
.end method

.method public final g(Lteam/opay/pay/kyc/customer/CardResidenceImage;)V
    .locals 0
    .param p1    # Lteam/opay/pay/kyc/customer/CardResidenceImage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/customer/InputCountryReq;->j:Lteam/opay/pay/kyc/customer/CardResidenceImage;

    .line 2
    .line 3
    return-void
.end method

.method public final h(Lteam/opay/pay/kyc/customer/CardImage;)V
    .locals 0
    .param p1    # Lteam/opay/pay/kyc/customer/CardImage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/customer/InputCountryReq;->i:Lteam/opay/pay/kyc/customer/CardImage;

    .line 2
    .line 3
    return-void
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/customer/InputCountryReq;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lteam/opay/pay/kyc/customer/InputCountryReq;->b:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget-object v1, p0, Lteam/opay/pay/kyc/customer/InputCountryReq;->c:Ljava/lang/String;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    :goto_0
    add-int/2addr v0, v1

    .line 30
    mul-int/lit8 v0, v0, 0x1f

    .line 31
    .line 32
    iget-wide v3, p0, Lteam/opay/pay/kyc/customer/InputCountryReq;->d:J

    .line 33
    .line 34
    invoke-static {v3, v4}, Lv3b;->a(J)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    add-int/2addr v0, v1

    .line 39
    mul-int/lit8 v0, v0, 0x1f

    .line 40
    .line 41
    iget-object v1, p0, Lteam/opay/pay/kyc/customer/InputCountryReq;->e:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    add-int/2addr v0, v1

    .line 48
    mul-int/lit8 v0, v0, 0x1f

    .line 49
    .line 50
    iget-object v1, p0, Lteam/opay/pay/kyc/customer/InputCountryReq;->f:Ljava/lang/String;

    .line 51
    .line 52
    if-nez v1, :cond_1

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    :goto_1
    add-int/2addr v0, v1

    .line 61
    mul-int/lit8 v0, v0, 0x1f

    .line 62
    .line 63
    iget-object v1, p0, Lteam/opay/pay/kyc/customer/InputCountryReq;->g:Ljava/lang/String;

    .line 64
    .line 65
    if-nez v1, :cond_2

    .line 66
    .line 67
    const/4 v1, 0x0

    .line 68
    goto :goto_2

    .line 69
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    :goto_2
    add-int/2addr v0, v1

    .line 74
    mul-int/lit8 v0, v0, 0x1f

    .line 75
    .line 76
    iget-object v1, p0, Lteam/opay/pay/kyc/customer/InputCountryReq;->h:Lteam/opay/pay/kyc/customer/CardImage;

    .line 77
    .line 78
    if-nez v1, :cond_3

    .line 79
    .line 80
    const/4 v1, 0x0

    .line 81
    goto :goto_3

    .line 82
    :cond_3
    invoke-virtual {v1}, Lteam/opay/pay/kyc/customer/CardImage;->hashCode()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    :goto_3
    add-int/2addr v0, v1

    .line 87
    mul-int/lit8 v0, v0, 0x1f

    .line 88
    .line 89
    iget-object v1, p0, Lteam/opay/pay/kyc/customer/InputCountryReq;->i:Lteam/opay/pay/kyc/customer/CardImage;

    .line 90
    .line 91
    if-nez v1, :cond_4

    .line 92
    .line 93
    const/4 v1, 0x0

    .line 94
    goto :goto_4

    .line 95
    :cond_4
    invoke-virtual {v1}, Lteam/opay/pay/kyc/customer/CardImage;->hashCode()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    :goto_4
    add-int/2addr v0, v1

    .line 100
    mul-int/lit8 v0, v0, 0x1f

    .line 101
    .line 102
    iget-object v1, p0, Lteam/opay/pay/kyc/customer/InputCountryReq;->j:Lteam/opay/pay/kyc/customer/CardResidenceImage;

    .line 103
    .line 104
    if-nez v1, :cond_5

    .line 105
    .line 106
    goto :goto_5

    .line 107
    :cond_5
    invoke-virtual {v1}, Lteam/opay/pay/kyc/customer/CardResidenceImage;->hashCode()I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    :goto_5
    add-int/2addr v0, v2

    .line 112
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 13
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/customer/InputCountryReq;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/kyc/customer/InputCountryReq;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/pay/kyc/customer/InputCountryReq;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-wide v3, p0, Lteam/opay/pay/kyc/customer/InputCountryReq;->d:J

    .line 8
    .line 9
    iget-object v5, p0, Lteam/opay/pay/kyc/customer/InputCountryReq;->e:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v6, p0, Lteam/opay/pay/kyc/customer/InputCountryReq;->f:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v7, p0, Lteam/opay/pay/kyc/customer/InputCountryReq;->g:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v8, p0, Lteam/opay/pay/kyc/customer/InputCountryReq;->h:Lteam/opay/pay/kyc/customer/CardImage;

    .line 16
    .line 17
    iget-object v9, p0, Lteam/opay/pay/kyc/customer/InputCountryReq;->i:Lteam/opay/pay/kyc/customer/CardImage;

    .line 18
    .line 19
    iget-object v10, p0, Lteam/opay/pay/kyc/customer/InputCountryReq;->j:Lteam/opay/pay/kyc/customer/CardResidenceImage;

    .line 20
    .line 21
    new-instance v11, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v12, "InputCountryReq(scene="

    .line 27
    .line 28
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v0, ", taskScene="

    .line 35
    .line 36
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v0, ", bizSecurityId="

    .line 43
    .line 44
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v0, ", taskRecordId="

    .line 51
    .line 52
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v0, ", taskId="

    .line 59
    .line 60
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v0, ", country="

    .line 67
    .line 68
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v0, ", countryCode2="

    .line 75
    .line 76
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v0, ", passport="

    .line 83
    .line 84
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v0, ", visa="

    .line 91
    .line 92
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v0, ", residence="

    .line 99
    .line 100
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v0, ")"

    .line 107
    .line 108
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    return-object v0
.end method
