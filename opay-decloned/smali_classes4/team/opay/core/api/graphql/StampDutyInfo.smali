.class public final Lteam/opay/core/api/graphql/StampDutyInfo;
.super Ljava/lang/Object;
.source "Api.kt"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/core/api/graphql/StampDutyInfo$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0016\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u0000 ,2\u00020\u00012\u00020\u0002:\u0001,BC\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000e\u0010\u0016\u001a\u00020\u00082\u0006\u0010\u0017\u001a\u00020\nJ\u000e\u0010\u0016\u001a\u00020\u00082\u0006\u0010\u0017\u001a\u00020\u0004J\u000e\u0010\u0018\u001a\u00020\u00082\u0006\u0010\u0017\u001a\u00020\u0004J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0012J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\nH\u00c6\u0003JJ\u0010\u001e\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\nH\u00c6\u0001\u00a2\u0006\u0002\u0010\u001fJ\u0006\u0010 \u001a\u00020!J\u0013\u0010\"\u001a\u00020\u00082\u0008\u0010#\u001a\u0004\u0018\u00010$H\u00d6\u0003J\t\u0010%\u001a\u00020!H\u00d6\u0001J\t\u0010&\u001a\u00020\nH\u00d6\u0001J\u0016\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020!R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000eR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000eR\u001a\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010\u0013\u001a\u0004\u0008\u0011\u0010\u0012R\u0018\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006-"
    }
    d2 = {
        "Lteam/opay/core/api/graphql/StampDutyInfo;",
        "Landroid/os/Parcelable;",
        "Ljava/io/Serializable;",
        "stampDutyAmount",
        "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "stampDutyMinAmount",
        "stampDutyMaxAmount",
        "stampDutyFlag",
        "",
        "hitAB",
        "",
        "<init>",
        "(Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/Boolean;Ljava/lang/String;)V",
        "getStampDutyAmount",
        "()Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "getStampDutyMinAmount",
        "getStampDutyMaxAmount",
        "getStampDutyFlag",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "getHitAB",
        "()Ljava/lang/String;",
        "shouldShowConfirm",
        "input",
        "isOnStempDuty",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "(Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/Boolean;Ljava/lang/String;)Lteam/opay/core/api/graphql/StampDutyInfo;",
        "describeContents",
        "",
        "equals",
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
            "Lteam/opay/core/api/graphql/StampDutyInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lteam/opay/core/api/graphql/StampDutyInfo$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final STAMP_DUTY_CONFIRM:Ljava/lang/String; = "B"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final STAMP_DUTY_TIPS:Ljava/lang/String; = "A"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final hitAB:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hitAB"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final stampDutyAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stampDutyAmount"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final stampDutyFlag:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stampDutyFlag"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final stampDutyMaxAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stampDutyMaxAmount"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final stampDutyMinAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stampDutyMinAmount"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/core/api/graphql/StampDutyInfo$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/core/api/graphql/StampDutyInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/core/api/graphql/StampDutyInfo;->Companion:Lteam/opay/core/api/graphql/StampDutyInfo$Companion;

    .line 8
    .line 9
    new-instance v0, Lteam/opay/core/api/graphql/StampDutyInfo$Creator;

    .line 10
    .line 11
    invoke-direct {v0}, Lteam/opay/core/api/graphql/StampDutyInfo$Creator;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lteam/opay/core/api/graphql/StampDutyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 1
    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lteam/opay/core/api/graphql/StampDutyInfo;-><init>(Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/Boolean;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lteam/opay/core/api/graphql/StampDutyInfo;->stampDutyAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 4
    iput-object p2, p0, Lteam/opay/core/api/graphql/StampDutyInfo;->stampDutyMinAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 5
    iput-object p3, p0, Lteam/opay/core/api/graphql/StampDutyInfo;->stampDutyMaxAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 6
    iput-object p4, p0, Lteam/opay/core/api/graphql/StampDutyInfo;->stampDutyFlag:Ljava/lang/Boolean;

    .line 7
    iput-object p5, p0, Lteam/opay/core/api/graphql/StampDutyInfo;->hitAB:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/Boolean;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 4

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p7, v0

    goto :goto_0

    :cond_0
    move-object p7, p1

    :goto_0
    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    move-object v1, p2

    :goto_1
    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    move-object v2, v0

    goto :goto_2

    :cond_2
    move-object v2, p3

    :goto_2
    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    move-object v3, v0

    goto :goto_3

    :cond_3
    move-object v3, p4

    :goto_3
    and-int/lit8 p1, p6, 0x10

    if-eqz p1, :cond_4

    move-object p6, v0

    goto :goto_4

    :cond_4
    move-object p6, p5

    :goto_4
    move-object p1, p0

    move-object p2, p7

    move-object p3, v1

    move-object p4, v2

    move-object p5, v3

    .line 8
    invoke-direct/range {p1 .. p6}, Lteam/opay/core/api/graphql/StampDutyInfo;-><init>(Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lteam/opay/core/api/graphql/StampDutyInfo;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/Boolean;Ljava/lang/String;ILjava/lang/Object;)Lteam/opay/core/api/graphql/StampDutyInfo;
    .locals 3

    .line 1
    and-int/lit8 p7, p6, 0x1

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lteam/opay/core/api/graphql/StampDutyInfo;->stampDutyAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p7, p6, 0x2

    .line 8
    .line 9
    if-eqz p7, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lteam/opay/core/api/graphql/StampDutyInfo;->stampDutyMinAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 12
    .line 13
    :cond_1
    move-object p7, p2

    .line 14
    and-int/lit8 p2, p6, 0x4

    .line 15
    .line 16
    if-eqz p2, :cond_2

    .line 17
    .line 18
    iget-object p3, p0, Lteam/opay/core/api/graphql/StampDutyInfo;->stampDutyMaxAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 19
    .line 20
    :cond_2
    move-object v0, p3

    .line 21
    and-int/lit8 p2, p6, 0x8

    .line 22
    .line 23
    if-eqz p2, :cond_3

    .line 24
    .line 25
    iget-object p4, p0, Lteam/opay/core/api/graphql/StampDutyInfo;->stampDutyFlag:Ljava/lang/Boolean;

    .line 26
    .line 27
    :cond_3
    move-object v1, p4

    .line 28
    and-int/lit8 p2, p6, 0x10

    .line 29
    .line 30
    if-eqz p2, :cond_4

    .line 31
    .line 32
    iget-object p5, p0, Lteam/opay/core/api/graphql/StampDutyInfo;->hitAB:Ljava/lang/String;

    .line 33
    .line 34
    :cond_4
    move-object v2, p5

    .line 35
    move-object p2, p0

    .line 36
    move-object p3, p1

    .line 37
    move-object p4, p7

    .line 38
    move-object p5, v0

    .line 39
    move-object p6, v1

    .line 40
    move-object p7, v2

    .line 41
    invoke-virtual/range {p2 .. p7}, Lteam/opay/core/api/graphql/StampDutyInfo;->copy(Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/Boolean;Ljava/lang/String;)Lteam/opay/core/api/graphql/StampDutyInfo;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method


# virtual methods
.method public final component1()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/graphql/StampDutyInfo;->stampDutyAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/graphql/StampDutyInfo;->stampDutyMinAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/graphql/StampDutyInfo;->stampDutyMaxAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/graphql/StampDutyInfo;->stampDutyFlag:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/graphql/StampDutyInfo;->hitAB:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/Boolean;Ljava/lang/String;)Lteam/opay/core/api/graphql/StampDutyInfo;
    .locals 7
    .param p1    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Boolean;
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
    new-instance v6, Lteam/opay/core/api/graphql/StampDutyInfo;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move-object v4, p4

    .line 8
    move-object v5, p5

    .line 9
    invoke-direct/range {v0 .. v5}, Lteam/opay/core/api/graphql/StampDutyInfo;-><init>(Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v6
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
    instance-of v1, p1, Lteam/opay/core/api/graphql/StampDutyInfo;

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
    check-cast p1, Lteam/opay/core/api/graphql/StampDutyInfo;

    .line 12
    .line 13
    iget-object v1, p0, Lteam/opay/core/api/graphql/StampDutyInfo;->stampDutyAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 14
    .line 15
    iget-object v3, p1, Lteam/opay/core/api/graphql/StampDutyInfo;->stampDutyAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

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
    iget-object v1, p0, Lteam/opay/core/api/graphql/StampDutyInfo;->stampDutyMinAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 25
    .line 26
    iget-object v3, p1, Lteam/opay/core/api/graphql/StampDutyInfo;->stampDutyMinAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

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
    iget-object v1, p0, Lteam/opay/core/api/graphql/StampDutyInfo;->stampDutyMaxAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 36
    .line 37
    iget-object v3, p1, Lteam/opay/core/api/graphql/StampDutyInfo;->stampDutyMaxAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

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
    iget-object v1, p0, Lteam/opay/core/api/graphql/StampDutyInfo;->stampDutyFlag:Ljava/lang/Boolean;

    .line 47
    .line 48
    iget-object v3, p1, Lteam/opay/core/api/graphql/StampDutyInfo;->stampDutyFlag:Ljava/lang/Boolean;

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
    iget-object v1, p0, Lteam/opay/core/api/graphql/StampDutyInfo;->hitAB:Ljava/lang/String;

    .line 58
    .line 59
    iget-object p1, p1, Lteam/opay/core/api/graphql/StampDutyInfo;->hitAB:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-nez p1, :cond_6

    .line 66
    .line 67
    return v2

    .line 68
    :cond_6
    return v0
.end method

.method public final getHitAB()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/graphql/StampDutyInfo;->hitAB:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStampDutyAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/graphql/StampDutyInfo;->stampDutyAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStampDutyFlag()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/graphql/StampDutyInfo;->stampDutyFlag:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStampDutyMaxAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/graphql/StampDutyInfo;->stampDutyMaxAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStampDutyMinAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/graphql/StampDutyInfo;->stampDutyMinAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/graphql/StampDutyInfo;->stampDutyAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

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
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lteam/opay/core/api/graphql/StampDutyInfo;->stampDutyMinAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

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
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->hashCode()I

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
    iget-object v2, p0, Lteam/opay/core/api/graphql/StampDutyInfo;->stampDutyMaxAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

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
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->hashCode()I

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
    iget-object v2, p0, Lteam/opay/core/api/graphql/StampDutyInfo;->stampDutyFlag:Ljava/lang/Boolean;

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
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

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
    iget-object v2, p0, Lteam/opay/core/api/graphql/StampDutyInfo;->hitAB:Ljava/lang/String;

    .line 54
    .line 55
    if-nez v2, :cond_4

    .line 56
    .line 57
    goto :goto_4

    .line 58
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    :goto_4
    add-int/2addr v0, v1

    .line 63
    return v0
.end method

.method public final isOnStempDuty(Lteam/opay/core/api/GraphQL$CurrencyAmount;)Z
    .locals 5
    .param p1    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "input"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/core/api/graphql/StampDutyInfo;->stampDutyMaxAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    sget-object v0, Lteam/opay/core/api/GraphQL$CurrencyAmount;->Companion:Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;

    .line 11
    .line 12
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->c()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_0
    iget-object v1, p0, Lteam/opay/core/api/graphql/StampDutyInfo;->stampDutyMinAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    sget-object v1, Lteam/opay/core/api/GraphQL$CurrencyAmount;->Companion:Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;

    .line 21
    .line 22
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :cond_1
    iget-object v2, p0, Lteam/opay/core/api/graphql/StampDutyInfo;->stampDutyFlag:Ljava/lang/Boolean;

    .line 27
    .line 28
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    const/4 v3, 0x0

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    return v3

    .line 38
    :cond_2
    invoke-virtual {p1, v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->minus(Lteam/opay/core/api/GraphQL$CurrencyAmount;)Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    sget-object v2, Lteam/opay/core/api/GraphQL$CurrencyAmount;->Companion:Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;

    .line 43
    .line 44
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v1, v4}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->compareTo(Lteam/opay/core/api/GraphQL$CurrencyAmount;)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    const/4 v4, 0x1

    .line 53
    if-ltz v1, :cond_3

    .line 54
    .line 55
    const/4 v1, 0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_3
    const/4 v1, 0x0

    .line 58
    :goto_0
    invoke-virtual {v0, p1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->minus(Lteam/opay/core/api/GraphQL$CurrencyAmount;)Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {p1, v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->compareTo(Lteam/opay/core/api/GraphQL$CurrencyAmount;)I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-ltz p1, :cond_4

    .line 71
    .line 72
    const/4 p1, 0x1

    .line 73
    goto :goto_1

    .line 74
    :cond_4
    const/4 p1, 0x0

    .line 75
    :goto_1
    if-eqz v1, :cond_5

    .line 76
    .line 77
    if-eqz p1, :cond_5

    .line 78
    .line 79
    const/4 v3, 0x1

    .line 80
    :cond_5
    return v3
.end method

.method public final shouldShowConfirm(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    sget-object v1, Lteam/opay/core/api/Country;->NIGERIA:Lteam/opay/core/api/Country;

    invoke-virtual {v1}, Lteam/opay/core/api/Country;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lteam/opay/core/api/graphql/StampDutyInfo;->shouldShowConfirm(Lteam/opay/core/api/GraphQL$CurrencyAmount;)Z

    move-result p1

    return p1
.end method

.method public final shouldShowConfirm(Lteam/opay/core/api/GraphQL$CurrencyAmount;)Z
    .locals 6
    .param p1    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lteam/opay/core/api/graphql/StampDutyInfo;->hitAB:Ljava/lang/String;

    const-string v1, "B"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    sget-object v0, Lteam/opay/pay/home/tabs/ac/StampDutyConfigSwicher;->Companion:Lteam/opay/pay/home/tabs/ac/StampDutyConfigSwicher$Companion;

    invoke-virtual {v0}, Lteam/opay/pay/home/tabs/ac/StampDutyConfigSwicher$Companion;->a()Lteam/opay/pay/home/tabs/ac/StampDutyConfigSwicher;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lteam/opay/pay/home/tabs/ac/StampDutyConfigSwicher;->getConfirmDto()Lteam/opay/pay/home/tabs/ac/StampDutyCofirmDto;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    new-instance v0, Lteam/opay/core/settings/NoClearStorage;

    invoke-static {}, Ljmf;->i()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lteam/opay/core/settings/NoClearStorage;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {v0}, Lteam/opay/core/settings/NoClearStorage;->H0()Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 5
    :cond_2
    invoke-virtual {v0}, Lteam/opay/core/settings/NoClearStorage;->G0()J

    move-result-wide v2

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v4, v2

    if-lez v0, :cond_3

    .line 7
    invoke-virtual {p0, p1}, Lteam/opay/core/api/graphql/StampDutyInfo;->isOnStempDuty(Lteam/opay/core/api/GraphQL$CurrencyAmount;)Z

    move-result p1

    return p1

    :cond_3
    :goto_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/graphql/StampDutyInfo;->stampDutyAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/core/api/graphql/StampDutyInfo;->stampDutyMinAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/core/api/graphql/StampDutyInfo;->stampDutyMaxAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/core/api/graphql/StampDutyInfo;->stampDutyFlag:Ljava/lang/Boolean;

    .line 8
    .line 9
    iget-object v4, p0, Lteam/opay/core/api/graphql/StampDutyInfo;->hitAB:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v6, "StampDutyInfo(stampDutyAmount="

    .line 17
    .line 18
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v0, ", stampDutyMinAmount="

    .line 25
    .line 26
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v0, ", stampDutyMaxAmount="

    .line 33
    .line 34
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, ", stampDutyFlag="

    .line 41
    .line 42
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v0, ", hitAB="

    .line 49
    .line 50
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v0, ")"

    .line 57
    .line 58
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "dest"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/core/api/graphql/StampDutyInfo;->stampDutyAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1, p2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->writeToParcel(Landroid/os/Parcel;I)V

    .line 20
    .line 21
    .line 22
    :goto_0
    iget-object v0, p0, Lteam/opay/core/api/graphql/StampDutyInfo;->stampDutyMinAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1, p2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->writeToParcel(Landroid/os/Parcel;I)V

    .line 34
    .line 35
    .line 36
    :goto_1
    iget-object v0, p0, Lteam/opay/core/api/graphql/StampDutyInfo;->stampDutyMaxAmount:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1, p2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->writeToParcel(Landroid/os/Parcel;I)V

    .line 48
    .line 49
    .line 50
    :goto_2
    iget-object p2, p0, Lteam/opay/core/api/graphql/StampDutyInfo;->stampDutyFlag:Ljava/lang/Boolean;

    .line 51
    .line 52
    if-nez p2, :cond_3

    .line 53
    .line 54
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    .line 67
    .line 68
    :goto_3
    iget-object p2, p0, Lteam/opay/core/api/graphql/StampDutyInfo;->hitAB:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method
