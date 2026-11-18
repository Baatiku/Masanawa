.class public final Lteam/opay/core/api/GraphQL$User;
.super Ljava/lang/Object;
.source "graphql.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/core/api/GraphQL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "User"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0008\n\u0002\u0008V\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u00a9\u0003\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\u000c\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\u0006\u0010\u000f\u001a\u00020\u0002\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u0012\u0006\u0010\u0013\u001a\u00020\u0002\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0011\u0012\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010 \u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0008\u0002\u0010!\u001a\u00020\u0011\u0012\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010&\u0012\n\u0008\u0002\u0010(\u001a\u0004\u0018\u00010\u0011\u0012\n\u0008\u0002\u0010)\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010*\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010+\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010,\u001a\u0004\u0018\u00010\u0011\u0012\u0008\u0010-\u001a\u0004\u0018\u00010\u0011\u0012\n\u0008\u0002\u0010.\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0004\u0008/\u00100J\u0010\u00101\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u00081\u00102J\u0010\u00104\u001a\u000203H\u00d6\u0001\u00a2\u0006\u0004\u00084\u00105J\u001a\u00107\u001a\u00020\u00112\u0008\u00106\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u00087\u00108R\u001a\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u00089\u0010:\u001a\u0004\u0008;\u00102R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008<\u0010:\u001a\u0004\u0008=\u00102R\u001a\u0010\u0005\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008>\u0010:\u001a\u0004\u0008?\u00102R\u001a\u0010\u0006\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008@\u0010:\u001a\u0004\u0008>\u00102R\u001a\u0010\u0007\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008;\u0010:\u001a\u0004\u0008A\u00102R\u001a\u0010\u0008\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008B\u0010:\u001a\u0004\u0008C\u00102R\u001c\u0010\n\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008A\u0010D\u001a\u0004\u0008@\u0010ER\u001a\u0010\u000b\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008?\u0010:\u001a\u0004\u0008F\u00102R\u001a\u0010\u000c\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008G\u0010:\u001a\u0004\u0008H\u00102R\u001a\u0010\r\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008C\u0010:\u001a\u0004\u0008I\u00102R\u001a\u0010\u000e\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008J\u0010:\u001a\u0004\u0008K\u00102R\u001a\u0010\u000f\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008L\u0010:\u001a\u0004\u0008M\u00102R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008N\u0010:\u001a\u0004\u0008O\u00102R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008P\u0010Q\u001a\u0004\u0008\u0012\u0010RR\"\u0010\u0013\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008S\u0010:\u001a\u0004\u0008B\u00102\"\u0004\u0008N\u0010TR$\u0010\u0014\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008U\u0010:\u001a\u0004\u0008G\u00102\"\u0004\u0008P\u0010TR\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008V\u0010:\u001a\u0004\u0008J\u00102R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008W\u0010Q\u001a\u0004\u0008X\u0010RR\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008Y\u0010:\u001a\u0004\u0008Z\u00102R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008[\u0010:\u001a\u0004\u0008\\\u00102R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008]\u0010:\u001a\u0004\u0008^\u00102R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008_\u0010:\u001a\u0004\u0008`\u00102R\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008a\u0010:\u001a\u0004\u0008b\u00102R\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008c\u0010:\u001a\u0004\u0008d\u00102R\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008e\u0010:\u001a\u0004\u0008<\u00102R\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008f\u0010:\u001a\u0004\u0008g\u00102R\u001c\u0010\u001f\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008h\u0010:\u001a\u0004\u0008i\u00102R\u001c\u0010 \u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008j\u0010:\u001a\u0004\u0008k\u00102R\"\u0010!\u001a\u00020\u00118\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008l\u0010m\u001a\u0004\u0008L\u0010n\"\u0004\u0008S\u0010oR\u001c\u0010\"\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008p\u0010:\u001a\u0004\u0008q\u00102R\u001c\u0010#\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008r\u0010:\u001a\u0004\u0008s\u00102R\u001c\u0010$\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008t\u0010:\u001a\u0004\u0008u\u00102R\u001c\u0010%\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008v\u0010:\u001a\u0004\u0008w\u00102R\u001c\u0010\'\u001a\u0004\u0018\u00010&8\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008x\u0010y\u001a\u0004\u0008z\u0010{R\u001c\u0010(\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008|\u0010Q\u001a\u0004\u0008(\u0010RR\u001c\u0010)\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008}\u0010:\u001a\u0004\u0008~\u00102R\u001d\u0010*\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\r\n\u0004\u0008\u007f\u0010:\u001a\u0005\u0008\u0080\u0001\u00102R\u001e\u0010+\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0005\u0008\u0081\u0001\u0010:\u001a\u0005\u0008\u0082\u0001\u00102R\u001e\u0010,\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0005\u0008\u0083\u0001\u0010Q\u001a\u0005\u0008\u0084\u0001\u0010RR\u001e\u0010-\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0005\u0008\u0085\u0001\u0010Q\u001a\u0005\u0008\u0086\u0001\u0010RR\u001d\u0010.\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004\u00a2\u0006\r\n\u0005\u0008\u0087\u0001\u0010Q\u001a\u0004\u0008.\u0010RR\u0012\u0010\u0088\u0001\u001a\u00020\u00118F\u00a2\u0006\u0006\u001a\u0004\u00089\u0010n\u00a8\u0006\u0089\u0001"
    }
    d2 = {
        "Lteam/opay/core/api/GraphQL$User;",
        "",
        "",
        "id",
        "avatar",
        "phone",
        "firstName",
        "middleName",
        "surname",
        "Lteam/opay/core/api/GraphQL$Gender;",
        "gender",
        "dob",
        "state",
        "address",
        "email",
        "emailToVerify",
        "facePicture",
        "",
        "isShowRegisterTask",
        "kycLevel",
        "role",
        "userToken",
        "emailVerified",
        "validID",
        "utilityBill",
        "picture",
        "referrerCode",
        "lastVisitTime",
        "avatarUrl",
        "avatarThumbnailUrl",
        "nickName",
        "city",
        "aggregatorId",
        "isSetPayPin",
        "createDate",
        "posLevelIconUrl",
        "posLevelFileIconUrl",
        "agentLevel",
        "Lteam/opay/core/api/GraphQL$BvnBean;",
        "bvn",
        "isFinish",
        "stateCode",
        "lgaCode",
        "cityCode",
        "canUpdateName",
        "canUpdateDobAndGender",
        "isNewOpayUser",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$Gender;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$BvnBean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V",
        "toString",
        "()Ljava/lang/String;",
        "",
        "hashCode",
        "()I",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "a",
        "Ljava/lang/String;",
        "e",
        "b",
        "getAvatar",
        "c",
        "h",
        "d",
        "g",
        "f",
        "j",
        "Lteam/opay/core/api/GraphQL$Gender;",
        "()Lteam/opay/core/api/GraphQL$Gender;",
        "getDob",
        "i",
        "getState",
        "getAddress",
        "k",
        "getEmail",
        "l",
        "getEmailToVerify",
        "m",
        "getFacePicture",
        "n",
        "Ljava/lang/Boolean;",
        "()Ljava/lang/Boolean;",
        "o",
        "(Ljava/lang/String;)V",
        "p",
        "q",
        "r",
        "getEmailVerified",
        "s",
        "getValidID",
        "t",
        "getUtilityBill",
        "u",
        "getPicture",
        "v",
        "getReferrerCode",
        "w",
        "getLastVisitTime",
        "x",
        "getAvatarUrl",
        "y",
        "z",
        "getNickName",
        "A",
        "getCity",
        "B",
        "getAggregatorId",
        "C",
        "Z",
        "()Z",
        "(Z)V",
        "D",
        "getCreateDate",
        "E",
        "getPosLevelIconUrl",
        "F",
        "getPosLevelFileIconUrl",
        "G",
        "getAgentLevel",
        "H",
        "Lteam/opay/core/api/GraphQL$BvnBean;",
        "getBvn",
        "()Lteam/opay/core/api/GraphQL$BvnBean;",
        "I",
        "J",
        "getStateCode",
        "K",
        "getLgaCode",
        "L",
        "getCityCode",
        "M",
        "getCanUpdateName",
        "N",
        "getCanUpdateDobAndGender",
        "O",
        "agent",
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
.field private final A:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "city"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final B:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "aggregatorId"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private C:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isSetPayPin"
    .end annotation
.end field

.field private final D:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "createDate"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final E:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "posLevelIconUrl"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final F:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "posLevelFileIconUrl"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final G:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "agentLevel"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final H:Lteam/opay/core/api/GraphQL$BvnBean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bvn"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final I:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isFinish"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final J:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stateCode"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final K:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lgaCode"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final L:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cityCode"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final M:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "canUpdateName"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final N:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "canUpdateDobAndGender"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final O:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isNewOpayUser"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "avatar"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "phoneNumber"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "firstName"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "middleName"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final f:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "surname"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final g:Lteam/opay/core/api/GraphQL$Gender;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gender"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final h:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dob"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final i:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "state"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final j:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "address"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final k:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "email"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final l:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emailToVerify"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final m:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "facePicture"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final n:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isShowRegisterTask"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private o:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "kycLevel"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private p:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "role"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final q:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "userToken"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final r:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emailVerified"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final s:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "validID"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final t:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "utilityBill"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final u:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "picture"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final v:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "referrerCode"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final w:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lastVisitTime"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final x:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "avatarUrl"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final y:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "avatarThumbnailUrl"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final z:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "nickName"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$Gender;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$BvnBean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 13
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lteam/opay/core/api/GraphQL$Gender;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p13    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p16    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p17    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p18    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p19    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p20    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p21    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p22    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p23    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p24    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p25    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p26    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p27    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p28    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p30    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p31    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p32    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p33    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p34    # Lteam/opay/core/api/GraphQL$BvnBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p35    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p36    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p37    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p38    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p39    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p40    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p41    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p15

    const-string v12, "id"

    invoke-static {p1, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "phone"

    invoke-static {v2, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "firstName"

    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "middleName"

    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "surname"

    invoke-static {v5, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "dob"

    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "state"

    invoke-static {v7, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "address"

    invoke-static {v8, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "email"

    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "emailToVerify"

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "kycLevel"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$User;->a:Ljava/lang/String;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$User;->b:Ljava/lang/String;

    .line 4
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$User;->c:Ljava/lang/String;

    .line 5
    iput-object v3, v0, Lteam/opay/core/api/GraphQL$User;->d:Ljava/lang/String;

    .line 6
    iput-object v4, v0, Lteam/opay/core/api/GraphQL$User;->e:Ljava/lang/String;

    .line 7
    iput-object v5, v0, Lteam/opay/core/api/GraphQL$User;->f:Ljava/lang/String;

    move-object/from16 v1, p7

    .line 8
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$User;->g:Lteam/opay/core/api/GraphQL$Gender;

    .line 9
    iput-object v6, v0, Lteam/opay/core/api/GraphQL$User;->h:Ljava/lang/String;

    .line 10
    iput-object v7, v0, Lteam/opay/core/api/GraphQL$User;->i:Ljava/lang/String;

    .line 11
    iput-object v8, v0, Lteam/opay/core/api/GraphQL$User;->j:Ljava/lang/String;

    .line 12
    iput-object v9, v0, Lteam/opay/core/api/GraphQL$User;->k:Ljava/lang/String;

    .line 13
    iput-object v10, v0, Lteam/opay/core/api/GraphQL$User;->l:Ljava/lang/String;

    move-object/from16 v1, p13

    .line 14
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$User;->m:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$User;->n:Ljava/lang/Boolean;

    .line 16
    iput-object v11, v0, Lteam/opay/core/api/GraphQL$User;->o:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$User;->p:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 18
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$User;->q:Ljava/lang/String;

    move-object/from16 v1, p18

    .line 19
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$User;->r:Ljava/lang/Boolean;

    move-object/from16 v1, p19

    .line 20
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$User;->s:Ljava/lang/String;

    move-object/from16 v1, p20

    .line 21
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$User;->t:Ljava/lang/String;

    move-object/from16 v1, p21

    .line 22
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$User;->u:Ljava/lang/String;

    move-object/from16 v1, p22

    .line 23
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$User;->v:Ljava/lang/String;

    move-object/from16 v1, p23

    .line 24
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$User;->w:Ljava/lang/String;

    move-object/from16 v1, p24

    .line 25
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$User;->x:Ljava/lang/String;

    move-object/from16 v1, p25

    .line 26
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$User;->y:Ljava/lang/String;

    move-object/from16 v1, p26

    .line 27
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$User;->z:Ljava/lang/String;

    move-object/from16 v1, p27

    .line 28
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$User;->A:Ljava/lang/String;

    move-object/from16 v1, p28

    .line 29
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$User;->B:Ljava/lang/String;

    move/from16 v1, p29

    .line 30
    iput-boolean v1, v0, Lteam/opay/core/api/GraphQL$User;->C:Z

    move-object/from16 v1, p30

    .line 31
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$User;->D:Ljava/lang/String;

    move-object/from16 v1, p31

    .line 32
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$User;->E:Ljava/lang/String;

    move-object/from16 v1, p32

    .line 33
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$User;->F:Ljava/lang/String;

    move-object/from16 v1, p33

    .line 34
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$User;->G:Ljava/lang/String;

    move-object/from16 v1, p34

    .line 35
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$User;->H:Lteam/opay/core/api/GraphQL$BvnBean;

    move-object/from16 v1, p35

    .line 36
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$User;->I:Ljava/lang/Boolean;

    move-object/from16 v1, p36

    .line 37
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$User;->J:Ljava/lang/String;

    move-object/from16 v1, p37

    .line 38
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$User;->K:Ljava/lang/String;

    move-object/from16 v1, p38

    .line 39
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$User;->L:Ljava/lang/String;

    move-object/from16 v1, p39

    .line 40
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$User;->M:Ljava/lang/Boolean;

    move-object/from16 v1, p40

    .line 41
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$User;->N:Ljava/lang/Boolean;

    move-object/from16 v1, p41

    .line 42
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$User;->O:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$Gender;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$BvnBean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 45

    move/from16 v0, p43

    const/high16 v1, 0x200000

    and-int v1, p42, v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object/from16 v25, v2

    goto :goto_0

    :cond_0
    move-object/from16 v25, p22

    :goto_0
    const/high16 v1, 0x400000

    and-int v1, p42, v1

    if-eqz v1, :cond_1

    move-object/from16 v26, v2

    goto :goto_1

    :cond_1
    move-object/from16 v26, p23

    :goto_1
    const/high16 v1, 0x800000

    and-int v1, p42, v1

    if-eqz v1, :cond_2

    move-object/from16 v27, v2

    goto :goto_2

    :cond_2
    move-object/from16 v27, p24

    :goto_2
    const/high16 v1, 0x1000000

    and-int v1, p42, v1

    if-eqz v1, :cond_3

    move-object/from16 v28, v2

    goto :goto_3

    :cond_3
    move-object/from16 v28, p25

    :goto_3
    const/high16 v1, 0x2000000

    and-int v1, p42, v1

    if-eqz v1, :cond_4

    move-object/from16 v29, v2

    goto :goto_4

    :cond_4
    move-object/from16 v29, p26

    :goto_4
    const/high16 v1, 0x10000000

    and-int v1, p42, v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    const/16 v32, 0x1

    goto :goto_5

    :cond_5
    move/from16 v32, p29

    :goto_5
    const/high16 v1, 0x20000000

    and-int v1, p42, v1

    .line 43
    const-string v3, ""

    if-eqz v1, :cond_6

    move-object/from16 v33, v3

    goto :goto_6

    :cond_6
    move-object/from16 v33, p30

    :goto_6
    const/high16 v1, 0x40000000    # 2.0f

    and-int v1, p42, v1

    if-eqz v1, :cond_7

    move-object/from16 v34, v3

    goto :goto_7

    :cond_7
    move-object/from16 v34, p31

    :goto_7
    const/high16 v1, -0x80000000

    and-int v1, p42, v1

    if-eqz v1, :cond_8

    move-object/from16 v35, v3

    goto :goto_8

    :cond_8
    move-object/from16 v35, p32

    :goto_8
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_9

    move-object/from16 v36, v3

    goto :goto_9

    :cond_9
    move-object/from16 v36, p33

    :goto_9
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_a

    move-object/from16 v37, v2

    goto :goto_a

    :cond_a
    move-object/from16 v37, p34

    :goto_a
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_b

    move-object/from16 v38, v2

    goto :goto_b

    :cond_b
    move-object/from16 v38, p35

    :goto_b
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_c

    move-object/from16 v39, v2

    goto :goto_c

    :cond_c
    move-object/from16 v39, p36

    :goto_c
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_d

    move-object/from16 v40, v2

    goto :goto_d

    :cond_d
    move-object/from16 v40, p37

    :goto_d
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_e

    move-object/from16 v41, v2

    goto :goto_e

    :cond_e
    move-object/from16 v41, p38

    :goto_e
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_f

    move-object/from16 v44, v2

    goto :goto_f

    :cond_f
    move-object/from16 v44, p41

    :goto_f
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    move-object/from16 v17, p14

    move-object/from16 v18, p15

    move-object/from16 v19, p16

    move-object/from16 v20, p17

    move-object/from16 v21, p18

    move-object/from16 v22, p19

    move-object/from16 v23, p20

    move-object/from16 v24, p21

    move-object/from16 v30, p27

    move-object/from16 v31, p28

    move-object/from16 v42, p39

    move-object/from16 v43, p40

    invoke-direct/range {v3 .. v44}, Lteam/opay/core/api/GraphQL$User;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$Gender;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$BvnBean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$User;->p:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "getDefault(...)"

    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "toLowerCase(...)"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    const-string v1, "agent"

    .line 26
    .line 27
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$User;->y:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$User;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Lteam/opay/core/api/GraphQL$Gender;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$User;->g:Lteam/opay/core/api/GraphQL$Gender;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$User;->a:Ljava/lang/String;

    .line 2
    .line 3
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
    instance-of v1, p1, Lteam/opay/core/api/GraphQL$User;

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
    check-cast p1, Lteam/opay/core/api/GraphQL$User;

    .line 12
    .line 13
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->a:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$User;->a:Ljava/lang/String;

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
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->b:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$User;->b:Ljava/lang/String;

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
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->c:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$User;->c:Ljava/lang/String;

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
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->d:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$User;->d:Ljava/lang/String;

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
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->e:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$User;->e:Ljava/lang/String;

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
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->f:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$User;->f:Ljava/lang/String;

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
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->g:Lteam/opay/core/api/GraphQL$Gender;

    .line 80
    .line 81
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$User;->g:Lteam/opay/core/api/GraphQL$Gender;

    .line 82
    .line 83
    if-eq v1, v3, :cond_8

    .line 84
    .line 85
    return v2

    .line 86
    :cond_8
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->h:Ljava/lang/String;

    .line 87
    .line 88
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$User;->h:Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-nez v1, :cond_9

    .line 95
    .line 96
    return v2

    .line 97
    :cond_9
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->i:Ljava/lang/String;

    .line 98
    .line 99
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$User;->i:Ljava/lang/String;

    .line 100
    .line 101
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-nez v1, :cond_a

    .line 106
    .line 107
    return v2

    .line 108
    :cond_a
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->j:Ljava/lang/String;

    .line 109
    .line 110
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$User;->j:Ljava/lang/String;

    .line 111
    .line 112
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-nez v1, :cond_b

    .line 117
    .line 118
    return v2

    .line 119
    :cond_b
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->k:Ljava/lang/String;

    .line 120
    .line 121
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$User;->k:Ljava/lang/String;

    .line 122
    .line 123
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-nez v1, :cond_c

    .line 128
    .line 129
    return v2

    .line 130
    :cond_c
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->l:Ljava/lang/String;

    .line 131
    .line 132
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$User;->l:Ljava/lang/String;

    .line 133
    .line 134
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-nez v1, :cond_d

    .line 139
    .line 140
    return v2

    .line 141
    :cond_d
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->m:Ljava/lang/String;

    .line 142
    .line 143
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$User;->m:Ljava/lang/String;

    .line 144
    .line 145
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-nez v1, :cond_e

    .line 150
    .line 151
    return v2

    .line 152
    :cond_e
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->n:Ljava/lang/Boolean;

    .line 153
    .line 154
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$User;->n:Ljava/lang/Boolean;

    .line 155
    .line 156
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-nez v1, :cond_f

    .line 161
    .line 162
    return v2

    .line 163
    :cond_f
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->o:Ljava/lang/String;

    .line 164
    .line 165
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$User;->o:Ljava/lang/String;

    .line 166
    .line 167
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    if-nez v1, :cond_10

    .line 172
    .line 173
    return v2

    .line 174
    :cond_10
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->p:Ljava/lang/String;

    .line 175
    .line 176
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$User;->p:Ljava/lang/String;

    .line 177
    .line 178
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    if-nez v1, :cond_11

    .line 183
    .line 184
    return v2

    .line 185
    :cond_11
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->q:Ljava/lang/String;

    .line 186
    .line 187
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$User;->q:Ljava/lang/String;

    .line 188
    .line 189
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    if-nez v1, :cond_12

    .line 194
    .line 195
    return v2

    .line 196
    :cond_12
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->r:Ljava/lang/Boolean;

    .line 197
    .line 198
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$User;->r:Ljava/lang/Boolean;

    .line 199
    .line 200
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    if-nez v1, :cond_13

    .line 205
    .line 206
    return v2

    .line 207
    :cond_13
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->s:Ljava/lang/String;

    .line 208
    .line 209
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$User;->s:Ljava/lang/String;

    .line 210
    .line 211
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    if-nez v1, :cond_14

    .line 216
    .line 217
    return v2

    .line 218
    :cond_14
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->t:Ljava/lang/String;

    .line 219
    .line 220
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$User;->t:Ljava/lang/String;

    .line 221
    .line 222
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    if-nez v1, :cond_15

    .line 227
    .line 228
    return v2

    .line 229
    :cond_15
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->u:Ljava/lang/String;

    .line 230
    .line 231
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$User;->u:Ljava/lang/String;

    .line 232
    .line 233
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    if-nez v1, :cond_16

    .line 238
    .line 239
    return v2

    .line 240
    :cond_16
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->v:Ljava/lang/String;

    .line 241
    .line 242
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$User;->v:Ljava/lang/String;

    .line 243
    .line 244
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v1

    .line 248
    if-nez v1, :cond_17

    .line 249
    .line 250
    return v2

    .line 251
    :cond_17
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->w:Ljava/lang/String;

    .line 252
    .line 253
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$User;->w:Ljava/lang/String;

    .line 254
    .line 255
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    if-nez v1, :cond_18

    .line 260
    .line 261
    return v2

    .line 262
    :cond_18
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->x:Ljava/lang/String;

    .line 263
    .line 264
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$User;->x:Ljava/lang/String;

    .line 265
    .line 266
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v1

    .line 270
    if-nez v1, :cond_19

    .line 271
    .line 272
    return v2

    .line 273
    :cond_19
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->y:Ljava/lang/String;

    .line 274
    .line 275
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$User;->y:Ljava/lang/String;

    .line 276
    .line 277
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result v1

    .line 281
    if-nez v1, :cond_1a

    .line 282
    .line 283
    return v2

    .line 284
    :cond_1a
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->z:Ljava/lang/String;

    .line 285
    .line 286
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$User;->z:Ljava/lang/String;

    .line 287
    .line 288
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v1

    .line 292
    if-nez v1, :cond_1b

    .line 293
    .line 294
    return v2

    .line 295
    :cond_1b
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->A:Ljava/lang/String;

    .line 296
    .line 297
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$User;->A:Ljava/lang/String;

    .line 298
    .line 299
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    move-result v1

    .line 303
    if-nez v1, :cond_1c

    .line 304
    .line 305
    return v2

    .line 306
    :cond_1c
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->B:Ljava/lang/String;

    .line 307
    .line 308
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$User;->B:Ljava/lang/String;

    .line 309
    .line 310
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result v1

    .line 314
    if-nez v1, :cond_1d

    .line 315
    .line 316
    return v2

    .line 317
    :cond_1d
    iget-boolean v1, p0, Lteam/opay/core/api/GraphQL$User;->C:Z

    .line 318
    .line 319
    iget-boolean v3, p1, Lteam/opay/core/api/GraphQL$User;->C:Z

    .line 320
    .line 321
    if-eq v1, v3, :cond_1e

    .line 322
    .line 323
    return v2

    .line 324
    :cond_1e
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->D:Ljava/lang/String;

    .line 325
    .line 326
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$User;->D:Ljava/lang/String;

    .line 327
    .line 328
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    move-result v1

    .line 332
    if-nez v1, :cond_1f

    .line 333
    .line 334
    return v2

    .line 335
    :cond_1f
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->E:Ljava/lang/String;

    .line 336
    .line 337
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$User;->E:Ljava/lang/String;

    .line 338
    .line 339
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    move-result v1

    .line 343
    if-nez v1, :cond_20

    .line 344
    .line 345
    return v2

    .line 346
    :cond_20
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->F:Ljava/lang/String;

    .line 347
    .line 348
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$User;->F:Ljava/lang/String;

    .line 349
    .line 350
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    move-result v1

    .line 354
    if-nez v1, :cond_21

    .line 355
    .line 356
    return v2

    .line 357
    :cond_21
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->G:Ljava/lang/String;

    .line 358
    .line 359
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$User;->G:Ljava/lang/String;

    .line 360
    .line 361
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    move-result v1

    .line 365
    if-nez v1, :cond_22

    .line 366
    .line 367
    return v2

    .line 368
    :cond_22
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->H:Lteam/opay/core/api/GraphQL$BvnBean;

    .line 369
    .line 370
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$User;->H:Lteam/opay/core/api/GraphQL$BvnBean;

    .line 371
    .line 372
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    move-result v1

    .line 376
    if-nez v1, :cond_23

    .line 377
    .line 378
    return v2

    .line 379
    :cond_23
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->I:Ljava/lang/Boolean;

    .line 380
    .line 381
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$User;->I:Ljava/lang/Boolean;

    .line 382
    .line 383
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    move-result v1

    .line 387
    if-nez v1, :cond_24

    .line 388
    .line 389
    return v2

    .line 390
    :cond_24
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->J:Ljava/lang/String;

    .line 391
    .line 392
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$User;->J:Ljava/lang/String;

    .line 393
    .line 394
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 395
    .line 396
    .line 397
    move-result v1

    .line 398
    if-nez v1, :cond_25

    .line 399
    .line 400
    return v2

    .line 401
    :cond_25
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->K:Ljava/lang/String;

    .line 402
    .line 403
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$User;->K:Ljava/lang/String;

    .line 404
    .line 405
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    move-result v1

    .line 409
    if-nez v1, :cond_26

    .line 410
    .line 411
    return v2

    .line 412
    :cond_26
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->L:Ljava/lang/String;

    .line 413
    .line 414
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$User;->L:Ljava/lang/String;

    .line 415
    .line 416
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 417
    .line 418
    .line 419
    move-result v1

    .line 420
    if-nez v1, :cond_27

    .line 421
    .line 422
    return v2

    .line 423
    :cond_27
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->M:Ljava/lang/Boolean;

    .line 424
    .line 425
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$User;->M:Ljava/lang/Boolean;

    .line 426
    .line 427
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 428
    .line 429
    .line 430
    move-result v1

    .line 431
    if-nez v1, :cond_28

    .line 432
    .line 433
    return v2

    .line 434
    :cond_28
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->N:Ljava/lang/Boolean;

    .line 435
    .line 436
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$User;->N:Ljava/lang/Boolean;

    .line 437
    .line 438
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 439
    .line 440
    .line 441
    move-result v1

    .line 442
    if-nez v1, :cond_29

    .line 443
    .line 444
    return v2

    .line 445
    :cond_29
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->O:Ljava/lang/Boolean;

    .line 446
    .line 447
    iget-object p1, p1, Lteam/opay/core/api/GraphQL$User;->O:Ljava/lang/Boolean;

    .line 448
    .line 449
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 450
    .line 451
    .line 452
    move-result p1

    .line 453
    if-nez p1, :cond_2a

    .line 454
    .line 455
    return v2

    .line 456
    :cond_2a
    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$User;->o:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$User;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$User;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$User;->a:Ljava/lang/String;

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
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->b:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    :goto_0
    add-int/2addr v0, v1

    .line 21
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    .line 23
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->c:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    add-int/2addr v0, v1

    .line 30
    mul-int/lit8 v0, v0, 0x1f

    .line 31
    .line 32
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->d:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

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
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->e:Ljava/lang/String;

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
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->f:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    add-int/2addr v0, v1

    .line 57
    mul-int/lit8 v0, v0, 0x1f

    .line 58
    .line 59
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->g:Lteam/opay/core/api/GraphQL$Gender;

    .line 60
    .line 61
    if-nez v1, :cond_1

    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    :goto_1
    add-int/2addr v0, v1

    .line 70
    mul-int/lit8 v0, v0, 0x1f

    .line 71
    .line 72
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->h:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    add-int/2addr v0, v1

    .line 79
    mul-int/lit8 v0, v0, 0x1f

    .line 80
    .line 81
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->i:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    add-int/2addr v0, v1

    .line 88
    mul-int/lit8 v0, v0, 0x1f

    .line 89
    .line 90
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->j:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    add-int/2addr v0, v1

    .line 97
    mul-int/lit8 v0, v0, 0x1f

    .line 98
    .line 99
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->k:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    add-int/2addr v0, v1

    .line 106
    mul-int/lit8 v0, v0, 0x1f

    .line 107
    .line 108
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->l:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    add-int/2addr v0, v1

    .line 115
    mul-int/lit8 v0, v0, 0x1f

    .line 116
    .line 117
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->m:Ljava/lang/String;

    .line 118
    .line 119
    if-nez v1, :cond_2

    .line 120
    .line 121
    const/4 v1, 0x0

    .line 122
    goto :goto_2

    .line 123
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    :goto_2
    add-int/2addr v0, v1

    .line 128
    mul-int/lit8 v0, v0, 0x1f

    .line 129
    .line 130
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->n:Ljava/lang/Boolean;

    .line 131
    .line 132
    if-nez v1, :cond_3

    .line 133
    .line 134
    const/4 v1, 0x0

    .line 135
    goto :goto_3

    .line 136
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    :goto_3
    add-int/2addr v0, v1

    .line 141
    mul-int/lit8 v0, v0, 0x1f

    .line 142
    .line 143
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->o:Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    add-int/2addr v0, v1

    .line 150
    mul-int/lit8 v0, v0, 0x1f

    .line 151
    .line 152
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->p:Ljava/lang/String;

    .line 153
    .line 154
    if-nez v1, :cond_4

    .line 155
    .line 156
    const/4 v1, 0x0

    .line 157
    goto :goto_4

    .line 158
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    :goto_4
    add-int/2addr v0, v1

    .line 163
    mul-int/lit8 v0, v0, 0x1f

    .line 164
    .line 165
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->q:Ljava/lang/String;

    .line 166
    .line 167
    if-nez v1, :cond_5

    .line 168
    .line 169
    const/4 v1, 0x0

    .line 170
    goto :goto_5

    .line 171
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    :goto_5
    add-int/2addr v0, v1

    .line 176
    mul-int/lit8 v0, v0, 0x1f

    .line 177
    .line 178
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->r:Ljava/lang/Boolean;

    .line 179
    .line 180
    if-nez v1, :cond_6

    .line 181
    .line 182
    const/4 v1, 0x0

    .line 183
    goto :goto_6

    .line 184
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    :goto_6
    add-int/2addr v0, v1

    .line 189
    mul-int/lit8 v0, v0, 0x1f

    .line 190
    .line 191
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->s:Ljava/lang/String;

    .line 192
    .line 193
    if-nez v1, :cond_7

    .line 194
    .line 195
    const/4 v1, 0x0

    .line 196
    goto :goto_7

    .line 197
    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    :goto_7
    add-int/2addr v0, v1

    .line 202
    mul-int/lit8 v0, v0, 0x1f

    .line 203
    .line 204
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->t:Ljava/lang/String;

    .line 205
    .line 206
    if-nez v1, :cond_8

    .line 207
    .line 208
    const/4 v1, 0x0

    .line 209
    goto :goto_8

    .line 210
    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    :goto_8
    add-int/2addr v0, v1

    .line 215
    mul-int/lit8 v0, v0, 0x1f

    .line 216
    .line 217
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->u:Ljava/lang/String;

    .line 218
    .line 219
    if-nez v1, :cond_9

    .line 220
    .line 221
    const/4 v1, 0x0

    .line 222
    goto :goto_9

    .line 223
    :cond_9
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    :goto_9
    add-int/2addr v0, v1

    .line 228
    mul-int/lit8 v0, v0, 0x1f

    .line 229
    .line 230
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->v:Ljava/lang/String;

    .line 231
    .line 232
    if-nez v1, :cond_a

    .line 233
    .line 234
    const/4 v1, 0x0

    .line 235
    goto :goto_a

    .line 236
    :cond_a
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    :goto_a
    add-int/2addr v0, v1

    .line 241
    mul-int/lit8 v0, v0, 0x1f

    .line 242
    .line 243
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->w:Ljava/lang/String;

    .line 244
    .line 245
    if-nez v1, :cond_b

    .line 246
    .line 247
    const/4 v1, 0x0

    .line 248
    goto :goto_b

    .line 249
    :cond_b
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    :goto_b
    add-int/2addr v0, v1

    .line 254
    mul-int/lit8 v0, v0, 0x1f

    .line 255
    .line 256
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->x:Ljava/lang/String;

    .line 257
    .line 258
    if-nez v1, :cond_c

    .line 259
    .line 260
    const/4 v1, 0x0

    .line 261
    goto :goto_c

    .line 262
    :cond_c
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 263
    .line 264
    .line 265
    move-result v1

    .line 266
    :goto_c
    add-int/2addr v0, v1

    .line 267
    mul-int/lit8 v0, v0, 0x1f

    .line 268
    .line 269
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->y:Ljava/lang/String;

    .line 270
    .line 271
    if-nez v1, :cond_d

    .line 272
    .line 273
    const/4 v1, 0x0

    .line 274
    goto :goto_d

    .line 275
    :cond_d
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    :goto_d
    add-int/2addr v0, v1

    .line 280
    mul-int/lit8 v0, v0, 0x1f

    .line 281
    .line 282
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->z:Ljava/lang/String;

    .line 283
    .line 284
    if-nez v1, :cond_e

    .line 285
    .line 286
    const/4 v1, 0x0

    .line 287
    goto :goto_e

    .line 288
    :cond_e
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 289
    .line 290
    .line 291
    move-result v1

    .line 292
    :goto_e
    add-int/2addr v0, v1

    .line 293
    mul-int/lit8 v0, v0, 0x1f

    .line 294
    .line 295
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->A:Ljava/lang/String;

    .line 296
    .line 297
    if-nez v1, :cond_f

    .line 298
    .line 299
    const/4 v1, 0x0

    .line 300
    goto :goto_f

    .line 301
    :cond_f
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 302
    .line 303
    .line 304
    move-result v1

    .line 305
    :goto_f
    add-int/2addr v0, v1

    .line 306
    mul-int/lit8 v0, v0, 0x1f

    .line 307
    .line 308
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->B:Ljava/lang/String;

    .line 309
    .line 310
    if-nez v1, :cond_10

    .line 311
    .line 312
    const/4 v1, 0x0

    .line 313
    goto :goto_10

    .line 314
    :cond_10
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 315
    .line 316
    .line 317
    move-result v1

    .line 318
    :goto_10
    add-int/2addr v0, v1

    .line 319
    mul-int/lit8 v0, v0, 0x1f

    .line 320
    .line 321
    iget-boolean v1, p0, Lteam/opay/core/api/GraphQL$User;->C:Z

    .line 322
    .line 323
    invoke-static {v1}, Lii8;->a(Z)I

    .line 324
    .line 325
    .line 326
    move-result v1

    .line 327
    add-int/2addr v0, v1

    .line 328
    mul-int/lit8 v0, v0, 0x1f

    .line 329
    .line 330
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->D:Ljava/lang/String;

    .line 331
    .line 332
    if-nez v1, :cond_11

    .line 333
    .line 334
    const/4 v1, 0x0

    .line 335
    goto :goto_11

    .line 336
    :cond_11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 337
    .line 338
    .line 339
    move-result v1

    .line 340
    :goto_11
    add-int/2addr v0, v1

    .line 341
    mul-int/lit8 v0, v0, 0x1f

    .line 342
    .line 343
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->E:Ljava/lang/String;

    .line 344
    .line 345
    if-nez v1, :cond_12

    .line 346
    .line 347
    const/4 v1, 0x0

    .line 348
    goto :goto_12

    .line 349
    :cond_12
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 350
    .line 351
    .line 352
    move-result v1

    .line 353
    :goto_12
    add-int/2addr v0, v1

    .line 354
    mul-int/lit8 v0, v0, 0x1f

    .line 355
    .line 356
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->F:Ljava/lang/String;

    .line 357
    .line 358
    if-nez v1, :cond_13

    .line 359
    .line 360
    const/4 v1, 0x0

    .line 361
    goto :goto_13

    .line 362
    :cond_13
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 363
    .line 364
    .line 365
    move-result v1

    .line 366
    :goto_13
    add-int/2addr v0, v1

    .line 367
    mul-int/lit8 v0, v0, 0x1f

    .line 368
    .line 369
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->G:Ljava/lang/String;

    .line 370
    .line 371
    if-nez v1, :cond_14

    .line 372
    .line 373
    const/4 v1, 0x0

    .line 374
    goto :goto_14

    .line 375
    :cond_14
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 376
    .line 377
    .line 378
    move-result v1

    .line 379
    :goto_14
    add-int/2addr v0, v1

    .line 380
    mul-int/lit8 v0, v0, 0x1f

    .line 381
    .line 382
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->H:Lteam/opay/core/api/GraphQL$BvnBean;

    .line 383
    .line 384
    if-nez v1, :cond_15

    .line 385
    .line 386
    const/4 v1, 0x0

    .line 387
    goto :goto_15

    .line 388
    :cond_15
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$BvnBean;->hashCode()I

    .line 389
    .line 390
    .line 391
    move-result v1

    .line 392
    :goto_15
    add-int/2addr v0, v1

    .line 393
    mul-int/lit8 v0, v0, 0x1f

    .line 394
    .line 395
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->I:Ljava/lang/Boolean;

    .line 396
    .line 397
    if-nez v1, :cond_16

    .line 398
    .line 399
    const/4 v1, 0x0

    .line 400
    goto :goto_16

    .line 401
    :cond_16
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 402
    .line 403
    .line 404
    move-result v1

    .line 405
    :goto_16
    add-int/2addr v0, v1

    .line 406
    mul-int/lit8 v0, v0, 0x1f

    .line 407
    .line 408
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->J:Ljava/lang/String;

    .line 409
    .line 410
    if-nez v1, :cond_17

    .line 411
    .line 412
    const/4 v1, 0x0

    .line 413
    goto :goto_17

    .line 414
    :cond_17
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 415
    .line 416
    .line 417
    move-result v1

    .line 418
    :goto_17
    add-int/2addr v0, v1

    .line 419
    mul-int/lit8 v0, v0, 0x1f

    .line 420
    .line 421
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->K:Ljava/lang/String;

    .line 422
    .line 423
    if-nez v1, :cond_18

    .line 424
    .line 425
    const/4 v1, 0x0

    .line 426
    goto :goto_18

    .line 427
    :cond_18
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 428
    .line 429
    .line 430
    move-result v1

    .line 431
    :goto_18
    add-int/2addr v0, v1

    .line 432
    mul-int/lit8 v0, v0, 0x1f

    .line 433
    .line 434
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->L:Ljava/lang/String;

    .line 435
    .line 436
    if-nez v1, :cond_19

    .line 437
    .line 438
    const/4 v1, 0x0

    .line 439
    goto :goto_19

    .line 440
    :cond_19
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 441
    .line 442
    .line 443
    move-result v1

    .line 444
    :goto_19
    add-int/2addr v0, v1

    .line 445
    mul-int/lit8 v0, v0, 0x1f

    .line 446
    .line 447
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->M:Ljava/lang/Boolean;

    .line 448
    .line 449
    if-nez v1, :cond_1a

    .line 450
    .line 451
    const/4 v1, 0x0

    .line 452
    goto :goto_1a

    .line 453
    :cond_1a
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 454
    .line 455
    .line 456
    move-result v1

    .line 457
    :goto_1a
    add-int/2addr v0, v1

    .line 458
    mul-int/lit8 v0, v0, 0x1f

    .line 459
    .line 460
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->N:Ljava/lang/Boolean;

    .line 461
    .line 462
    if-nez v1, :cond_1b

    .line 463
    .line 464
    const/4 v1, 0x0

    .line 465
    goto :goto_1b

    .line 466
    :cond_1b
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 467
    .line 468
    .line 469
    move-result v1

    .line 470
    :goto_1b
    add-int/2addr v0, v1

    .line 471
    mul-int/lit8 v0, v0, 0x1f

    .line 472
    .line 473
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$User;->O:Ljava/lang/Boolean;

    .line 474
    .line 475
    if-nez v1, :cond_1c

    .line 476
    .line 477
    goto :goto_1c

    .line 478
    :cond_1c
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 479
    .line 480
    .line 481
    move-result v2

    .line 482
    :goto_1c
    add-int/2addr v0, v2

    .line 483
    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$User;->p:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$User;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$User;->q:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/core/api/GraphQL$User;->C:Z

    .line 2
    .line 3
    return v0
.end method

.method public final m(Ljava/lang/String;)V
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
    iput-object p1, p0, Lteam/opay/core/api/GraphQL$User;->o:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final n(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/core/api/GraphQL$User;->p:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final o(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/core/api/GraphQL$User;->C:Z

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 43
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lteam/opay/core/api/GraphQL$User;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, v0, Lteam/opay/core/api/GraphQL$User;->b:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, v0, Lteam/opay/core/api/GraphQL$User;->c:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, v0, Lteam/opay/core/api/GraphQL$User;->d:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, v0, Lteam/opay/core/api/GraphQL$User;->e:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, v0, Lteam/opay/core/api/GraphQL$User;->f:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v7, v0, Lteam/opay/core/api/GraphQL$User;->g:Lteam/opay/core/api/GraphQL$Gender;

    .line 16
    .line 17
    iget-object v8, v0, Lteam/opay/core/api/GraphQL$User;->h:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v9, v0, Lteam/opay/core/api/GraphQL$User;->i:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v10, v0, Lteam/opay/core/api/GraphQL$User;->j:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v11, v0, Lteam/opay/core/api/GraphQL$User;->k:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v12, v0, Lteam/opay/core/api/GraphQL$User;->l:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v13, v0, Lteam/opay/core/api/GraphQL$User;->m:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v14, v0, Lteam/opay/core/api/GraphQL$User;->n:Ljava/lang/Boolean;

    .line 30
    .line 31
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$User;->o:Ljava/lang/String;

    .line 32
    .line 33
    move-object/from16 v16, v15

    .line 34
    .line 35
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$User;->p:Ljava/lang/String;

    .line 36
    .line 37
    move-object/from16 v17, v15

    .line 38
    .line 39
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$User;->q:Ljava/lang/String;

    .line 40
    .line 41
    move-object/from16 v18, v15

    .line 42
    .line 43
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$User;->r:Ljava/lang/Boolean;

    .line 44
    .line 45
    move-object/from16 v19, v15

    .line 46
    .line 47
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$User;->s:Ljava/lang/String;

    .line 48
    .line 49
    move-object/from16 v20, v15

    .line 50
    .line 51
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$User;->t:Ljava/lang/String;

    .line 52
    .line 53
    move-object/from16 v21, v15

    .line 54
    .line 55
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$User;->u:Ljava/lang/String;

    .line 56
    .line 57
    move-object/from16 v22, v15

    .line 58
    .line 59
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$User;->v:Ljava/lang/String;

    .line 60
    .line 61
    move-object/from16 v23, v15

    .line 62
    .line 63
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$User;->w:Ljava/lang/String;

    .line 64
    .line 65
    move-object/from16 v24, v15

    .line 66
    .line 67
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$User;->x:Ljava/lang/String;

    .line 68
    .line 69
    move-object/from16 v25, v15

    .line 70
    .line 71
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$User;->y:Ljava/lang/String;

    .line 72
    .line 73
    move-object/from16 v26, v15

    .line 74
    .line 75
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$User;->z:Ljava/lang/String;

    .line 76
    .line 77
    move-object/from16 v27, v15

    .line 78
    .line 79
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$User;->A:Ljava/lang/String;

    .line 80
    .line 81
    move-object/from16 v28, v15

    .line 82
    .line 83
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$User;->B:Ljava/lang/String;

    .line 84
    .line 85
    move-object/from16 v29, v15

    .line 86
    .line 87
    iget-boolean v15, v0, Lteam/opay/core/api/GraphQL$User;->C:Z

    .line 88
    .line 89
    move/from16 v30, v15

    .line 90
    .line 91
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$User;->D:Ljava/lang/String;

    .line 92
    .line 93
    move-object/from16 v31, v15

    .line 94
    .line 95
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$User;->E:Ljava/lang/String;

    .line 96
    .line 97
    move-object/from16 v32, v15

    .line 98
    .line 99
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$User;->F:Ljava/lang/String;

    .line 100
    .line 101
    move-object/from16 v33, v15

    .line 102
    .line 103
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$User;->G:Ljava/lang/String;

    .line 104
    .line 105
    move-object/from16 v34, v15

    .line 106
    .line 107
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$User;->H:Lteam/opay/core/api/GraphQL$BvnBean;

    .line 108
    .line 109
    move-object/from16 v35, v15

    .line 110
    .line 111
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$User;->I:Ljava/lang/Boolean;

    .line 112
    .line 113
    move-object/from16 v36, v15

    .line 114
    .line 115
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$User;->J:Ljava/lang/String;

    .line 116
    .line 117
    move-object/from16 v37, v15

    .line 118
    .line 119
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$User;->K:Ljava/lang/String;

    .line 120
    .line 121
    move-object/from16 v38, v15

    .line 122
    .line 123
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$User;->L:Ljava/lang/String;

    .line 124
    .line 125
    move-object/from16 v39, v15

    .line 126
    .line 127
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$User;->M:Ljava/lang/Boolean;

    .line 128
    .line 129
    move-object/from16 v40, v15

    .line 130
    .line 131
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$User;->N:Ljava/lang/Boolean;

    .line 132
    .line 133
    move-object/from16 v41, v15

    .line 134
    .line 135
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$User;->O:Ljava/lang/Boolean;

    .line 136
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    move-object/from16 v42, v15

    .line 143
    .line 144
    const-string v15, "User(id="

    .line 145
    .line 146
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v1, ", avatar="

    .line 153
    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v1, ", phone="

    .line 161
    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string v1, ", firstName="

    .line 169
    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v1, ", middleName="

    .line 177
    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string v1, ", surname="

    .line 185
    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    const-string v1, ", gender="

    .line 193
    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string v1, ", dob="

    .line 201
    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    const-string v1, ", state="

    .line 209
    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    const-string v1, ", address="

    .line 217
    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    const-string v1, ", email="

    .line 225
    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    const-string v1, ", emailToVerify="

    .line 233
    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    const-string v1, ", facePicture="

    .line 241
    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    const-string v1, ", isShowRegisterTask="

    .line 249
    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    const-string v1, ", kycLevel="

    .line 257
    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    move-object/from16 v1, v16

    .line 262
    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    const-string v1, ", role="

    .line 267
    .line 268
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    move-object/from16 v1, v17

    .line 272
    .line 273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    const-string v1, ", userToken="

    .line 277
    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    move-object/from16 v1, v18

    .line 282
    .line 283
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    const-string v1, ", emailVerified="

    .line 287
    .line 288
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    move-object/from16 v1, v19

    .line 292
    .line 293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    const-string v1, ", validID="

    .line 297
    .line 298
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    move-object/from16 v1, v20

    .line 302
    .line 303
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    const-string v1, ", utilityBill="

    .line 307
    .line 308
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    move-object/from16 v1, v21

    .line 312
    .line 313
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    const-string v1, ", picture="

    .line 317
    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    move-object/from16 v1, v22

    .line 322
    .line 323
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    const-string v1, ", referrerCode="

    .line 327
    .line 328
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    move-object/from16 v1, v23

    .line 332
    .line 333
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    const-string v1, ", lastVisitTime="

    .line 337
    .line 338
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    move-object/from16 v1, v24

    .line 342
    .line 343
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    const-string v1, ", avatarUrl="

    .line 347
    .line 348
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    move-object/from16 v1, v25

    .line 352
    .line 353
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    const-string v1, ", avatarThumbnailUrl="

    .line 357
    .line 358
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    move-object/from16 v1, v26

    .line 362
    .line 363
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    const-string v1, ", nickName="

    .line 367
    .line 368
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    move-object/from16 v1, v27

    .line 372
    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    const-string v1, ", city="

    .line 377
    .line 378
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    move-object/from16 v1, v28

    .line 382
    .line 383
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    const-string v1, ", aggregatorId="

    .line 387
    .line 388
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    move-object/from16 v1, v29

    .line 392
    .line 393
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    const-string v1, ", isSetPayPin="

    .line 397
    .line 398
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    move/from16 v1, v30

    .line 402
    .line 403
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    const-string v1, ", createDate="

    .line 407
    .line 408
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    move-object/from16 v1, v31

    .line 412
    .line 413
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    const-string v1, ", posLevelIconUrl="

    .line 417
    .line 418
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    move-object/from16 v1, v32

    .line 422
    .line 423
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    const-string v1, ", posLevelFileIconUrl="

    .line 427
    .line 428
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    move-object/from16 v1, v33

    .line 432
    .line 433
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    const-string v1, ", agentLevel="

    .line 437
    .line 438
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    move-object/from16 v1, v34

    .line 442
    .line 443
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    const-string v1, ", bvn="

    .line 447
    .line 448
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    move-object/from16 v1, v35

    .line 452
    .line 453
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    const-string v1, ", isFinish="

    .line 457
    .line 458
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    move-object/from16 v1, v36

    .line 462
    .line 463
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    const-string v1, ", stateCode="

    .line 467
    .line 468
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    move-object/from16 v1, v37

    .line 472
    .line 473
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    const-string v1, ", lgaCode="

    .line 477
    .line 478
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    move-object/from16 v1, v38

    .line 482
    .line 483
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    const-string v1, ", cityCode="

    .line 487
    .line 488
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    move-object/from16 v1, v39

    .line 492
    .line 493
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    const-string v1, ", canUpdateName="

    .line 497
    .line 498
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    move-object/from16 v1, v40

    .line 502
    .line 503
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 504
    .line 505
    .line 506
    const-string v1, ", canUpdateDobAndGender="

    .line 507
    .line 508
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    .line 510
    .line 511
    move-object/from16 v1, v41

    .line 512
    .line 513
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    const-string v1, ", isNewOpayUser="

    .line 517
    .line 518
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    .line 520
    .line 521
    move-object/from16 v1, v42

    .line 522
    .line 523
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 524
    .line 525
    .line 526
    const-string v1, ")"

    .line 527
    .line 528
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    return-object v0
.end method
