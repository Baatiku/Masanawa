.class public final Lteam/opay/core/android/arch/ApiError;
.super Ljava/lang/Object;
.source "ApiResponse.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/core/android/arch/ApiError$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0015\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u0000 -2\u00020\u0001:\u0001-B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007B\u001f\u0008\u0016\u0012\u0014\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00050\t\u00a2\u0006\u0004\u0008\u0006\u0010\nB)\u0008\u0016\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u000fJ\t\u0010\u001e\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u001f\u0010 \u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001J\u0006\u0010!\u001a\u00020\rJ\u0013\u0010\"\u001a\u00020#2\u0008\u0010$\u001a\u0004\u0018\u00010%H\u00d6\u0003J\t\u0010&\u001a\u00020\rH\u00d6\u0001J\t\u0010\'\u001a\u00020\u0005H\u00d6\u0001J\u0016\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020\rR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R \u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\"\u0010\u000e\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u001a\u0010\u0015\u001a\u0004\u0008\u001b\u0010\u0013\"\u0004\u0008\u001c\u0010\u001d\u00a8\u0006."
    }
    d2 = {
        "Lteam/opay/core/android/arch/ApiError;",
        "Landroid/os/Parcelable;",
        "type",
        "Lteam/opay/core/android/arch/ErrorType;",
        "message",
        "",
        "<init>",
        "(Lteam/opay/core/android/arch/ErrorType;Ljava/lang/String;)V",
        "pair",
        "Lkotlin/Pair;",
        "(Lkotlin/Pair;)V",
        "apiMessage",
        "httpCode",
        "",
        "apiCode",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getType",
        "()Lteam/opay/core/android/arch/ErrorType;",
        "getMessage",
        "()Ljava/lang/String;",
        "getHttpCode$annotations",
        "()V",
        "getHttpCode",
        "()I",
        "setHttpCode",
        "(I)V",
        "getApiCode$annotations",
        "getApiCode",
        "setApiCode",
        "(Ljava/lang/String;)V",
        "component1",
        "component2",
        "copy",
        "describeContents",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "dest",
        "Landroid/os/Parcel;",
        "flags",
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
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lteam/opay/core/android/arch/ApiError;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lteam/opay/core/android/arch/ApiError$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static NET_ERROR_MSG:Ljava/lang/String; = null
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final OK_HTTP_ERROR_API_CODE:Ljava/lang/String; = "neterror"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final OK_HTTP_ERROR_CODE:I = -0x3ec

.field public static final OK_TIMEOUT_API_CODE:Ljava/lang/String; = "timeout"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static OK_TIMEOUT_MSG:Ljava/lang/String; = null
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SYSTEM_ERROR_MSG:Ljava/lang/String; = "System busy. Please try again later."
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private apiCode:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private httpCode:I

.field private final message:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final type:Lteam/opay/core/android/arch/ErrorType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/core/android/arch/ApiError$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/core/android/arch/ApiError$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/core/android/arch/ApiError;->Companion:Lteam/opay/core/android/arch/ApiError$Companion;

    .line 8
    .line 9
    new-instance v0, Lteam/opay/core/android/arch/ApiError$Creator;

    .line 10
    .line 11
    invoke-direct {v0}, Lteam/opay/core/android/arch/ApiError$Creator;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lteam/opay/core/android/arch/ApiError;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 15
    .line 16
    sget v0, Lteam/opay/pay/R$string;->osdk_no_net_tip:I

    .line 17
    .line 18
    invoke-static {v0}, Ljmf;->k(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lteam/opay/core/android/arch/ApiError;->NET_ERROR_MSG:Ljava/lang/String;

    .line 23
    .line 24
    sget v0, Lteam/opay/pay/R$string;->osdk_timeout_tip:I

    .line 25
    .line 26
    invoke-static {v0}, Ljmf;->k(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lteam/opay/core/android/arch/ApiError;->OK_TIMEOUT_MSG:Ljava/lang/String;

    .line 31
    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 6
    sget-object v0, Lteam/opay/core/android/arch/ApiError;->Companion:Lteam/opay/core/android/arch/ApiError$Companion;

    if-nez p3, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    move-object v1, p3

    :goto_0
    invoke-static {v0, p2, v1, p1}, Lteam/opay/core/android/arch/ApiError$Companion;->a(Lteam/opay/core/android/arch/ApiError$Companion;ILjava/lang/String;Ljava/lang/String;)Lkotlin/Pair;

    move-result-object p1

    invoke-direct {p0, p1}, Lteam/opay/core/android/arch/ApiError;-><init>(Lkotlin/Pair;)V

    .line 7
    iput p2, p0, Lteam/opay/core/android/arch/ApiError;->httpCode:I

    .line 8
    iput-object p3, p0, Lteam/opay/core/android/arch/ApiError;->apiCode:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 4
    const-string p3, ""

    .line 5
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/core/android/arch/ApiError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/Pair;)V
    .locals 1
    .param p1    # Lkotlin/Pair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "+",
            "Lteam/opay/core/android/arch/ErrorType;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pair"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lteam/opay/core/android/arch/ErrorType;

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lteam/opay/core/android/arch/ApiError;-><init>(Lteam/opay/core/android/arch/ErrorType;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lteam/opay/core/android/arch/ErrorType;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lteam/opay/core/android/arch/ErrorType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lteam/opay/core/android/arch/ApiError;->type:Lteam/opay/core/android/arch/ErrorType;

    iput-object p2, p0, Lteam/opay/core/android/arch/ApiError;->message:Ljava/lang/String;

    .line 2
    const-string p1, ""

    iput-object p1, p0, Lteam/opay/core/android/arch/ApiError;->apiCode:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getNET_ERROR_MSG$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/core/android/arch/ApiError;->NET_ERROR_MSG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getOK_TIMEOUT_MSG$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/core/android/arch/ApiError;->OK_TIMEOUT_MSG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$setNET_ERROR_MSG$cp(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lteam/opay/core/android/arch/ApiError;->NET_ERROR_MSG:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setOK_TIMEOUT_MSG$cp(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lteam/opay/core/android/arch/ApiError;->OK_TIMEOUT_MSG:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static synthetic copy$default(Lteam/opay/core/android/arch/ApiError;Lteam/opay/core/android/arch/ErrorType;Ljava/lang/String;ILjava/lang/Object;)Lteam/opay/core/android/arch/ApiError;
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lteam/opay/core/android/arch/ApiError;->type:Lteam/opay/core/android/arch/ErrorType;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lteam/opay/core/android/arch/ApiError;->message:Ljava/lang/String;

    .line 12
    .line 13
    :cond_1
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/android/arch/ApiError;->copy(Lteam/opay/core/android/arch/ErrorType;Ljava/lang/String;)Lteam/opay/core/android/arch/ApiError;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public static synthetic getApiCode$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getHttpCode$annotations()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final component1()Lteam/opay/core/android/arch/ErrorType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/arch/ApiError;->type:Lteam/opay/core/android/arch/ErrorType;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/arch/ApiError;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Lteam/opay/core/android/arch/ErrorType;Ljava/lang/String;)Lteam/opay/core/android/arch/ApiError;
    .locals 1
    .param p1    # Lteam/opay/core/android/arch/ErrorType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/core/android/arch/ApiError;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2}, Lteam/opay/core/android/arch/ApiError;-><init>(Lteam/opay/core/android/arch/ErrorType;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
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
    instance-of v1, p1, Lteam/opay/core/android/arch/ApiError;

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
    check-cast p1, Lteam/opay/core/android/arch/ApiError;

    .line 12
    .line 13
    iget-object v1, p0, Lteam/opay/core/android/arch/ApiError;->type:Lteam/opay/core/android/arch/ErrorType;

    .line 14
    .line 15
    iget-object v3, p1, Lteam/opay/core/android/arch/ApiError;->type:Lteam/opay/core/android/arch/ErrorType;

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Lteam/opay/core/android/arch/ApiError;->message:Ljava/lang/String;

    .line 21
    .line 22
    iget-object p1, p1, Lteam/opay/core/android/arch/ApiError;->message:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    return v0
.end method

.method public final getApiCode()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/arch/ApiError;->apiCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHttpCode()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/core/android/arch/ApiError;->httpCode:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/arch/ApiError;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getType()Lteam/opay/core/android/arch/ErrorType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/arch/ApiError;->type:Lteam/opay/core/android/arch/ErrorType;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/arch/ApiError;->type:Lteam/opay/core/android/arch/ErrorType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lteam/opay/core/android/arch/ApiError;->message:Ljava/lang/String;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    :goto_0
    add-int/2addr v0, v1

    .line 20
    return v0
.end method

.method public final setApiCode(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/core/android/arch/ApiError;->apiCode:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setHttpCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/core/android/arch/ApiError;->httpCode:I

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/arch/ApiError;->type:Lteam/opay/core/android/arch/ErrorType;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/core/android/arch/ApiError;->message:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v3, "ApiError(type="

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v0, ", message="

    .line 19
    .line 20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v0, ")"

    .line 27
    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p2, "dest"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lteam/opay/core/android/arch/ApiError;->type:Lteam/opay/core/android/arch/ErrorType;

    .line 7
    .line 8
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lteam/opay/core/android/arch/ApiError;->message:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
