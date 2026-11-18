.class public final enum Lteam/opay/core/api/GraphQL$Gender;
.super Ljava/lang/Enum;
.source "graphql.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/core/api/GraphQL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Gender"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lteam/opay/core/api/GraphQL$Gender;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lteam/opay/core/api/GraphQL$Gender;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "MALE",
        "FEMALE",
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
.field private static final synthetic $ENTRIES:Lwo5;

.field private static final synthetic $VALUES:[Lteam/opay/core/api/GraphQL$Gender;

.field public static final enum FEMALE:Lteam/opay/core/api/GraphQL$Gender;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "female"
    .end annotation
.end field

.field public static final enum MALE:Lteam/opay/core/api/GraphQL$Gender;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "male"
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lteam/opay/core/api/GraphQL$Gender;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lteam/opay/core/api/GraphQL$Gender;

    .line 3
    .line 4
    sget-object v1, Lteam/opay/core/api/GraphQL$Gender;->MALE:Lteam/opay/core/api/GraphQL$Gender;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lteam/opay/core/api/GraphQL$Gender;->FEMALE:Lteam/opay/core/api/GraphQL$Gender;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lteam/opay/core/api/GraphQL$Gender;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "male"

    .line 5
    .line 6
    const-string v3, "MALE"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/core/api/GraphQL$Gender;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lteam/opay/core/api/GraphQL$Gender;->MALE:Lteam/opay/core/api/GraphQL$Gender;

    .line 12
    .line 13
    new-instance v0, Lteam/opay/core/api/GraphQL$Gender;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "female"

    .line 17
    .line 18
    const-string v3, "FEMALE"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/core/api/GraphQL$Gender;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lteam/opay/core/api/GraphQL$Gender;->FEMALE:Lteam/opay/core/api/GraphQL$Gender;

    .line 24
    .line 25
    invoke-static {}, Lteam/opay/core/api/GraphQL$Gender;->$values()[Lteam/opay/core/api/GraphQL$Gender;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lteam/opay/core/api/GraphQL$Gender;->$VALUES:[Lteam/opay/core/api/GraphQL$Gender;

    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lwo5;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lteam/opay/core/api/GraphQL$Gender;->$ENTRIES:Lwo5;

    .line 36
    .line 37
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lteam/opay/core/api/GraphQL$Gender;->value:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static getEntries()Lwo5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lwo5<",
            "Lteam/opay/core/api/GraphQL$Gender;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/core/api/GraphQL$Gender;->$ENTRIES:Lwo5;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lteam/opay/core/api/GraphQL$Gender;
    .locals 1

    .line 1
    const-class v0, Lteam/opay/core/api/GraphQL$Gender;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lteam/opay/core/api/GraphQL$Gender;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lteam/opay/core/api/GraphQL$Gender;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/core/api/GraphQL$Gender;->$VALUES:[Lteam/opay/core/api/GraphQL$Gender;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lteam/opay/core/api/GraphQL$Gender;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$Gender;->value:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
