.class public final Lteam/opay/core/api/GraphQL$UserProfile;
.super Ljava/lang/Object;
.source "graphql.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/core/api/GraphQL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserProfile"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008Q\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u00ab\u0004\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u000c\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\u0006\u0010\u000f\u001a\u00020\u0002\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0013\u0012\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0013\u0012\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0013\u0012\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010 \u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010!\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\"\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010#\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010$\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0008\u0002\u0010%\u001a\u00020\u0013\u0012\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\'\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010(\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010)\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010+\u001a\u0004\u0018\u00010*\u0012\u0008\u0010-\u001a\u0004\u0018\u00010,\u0012\u0008\u0010.\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010/\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u00100\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u00101\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u00102\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u00103\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u00104\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u00106\u001a\u0004\u0018\u000105\u0012\n\u0008\u0002\u00107\u001a\u0004\u0018\u00010\u0013\u0012\n\u0008\u0002\u00108\u001a\u0004\u0018\u00010\u0013\u0012\n\u0008\u0002\u0010:\u001a\u0004\u0018\u000109\u0012\n\u0008\u0002\u0010;\u001a\u0004\u0018\u00010\u0002\u0012\u0010\u0008\u0002\u0010>\u001a\n\u0012\u0004\u0012\u00020=\u0018\u00010<\u0012\n\u0008\u0002\u0010?\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008@\u0010AJ\u0010\u0010B\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008B\u0010CJ\u0010\u0010E\u001a\u00020DH\u00d6\u0001\u00a2\u0006\u0004\u0008E\u0010FJ\u001a\u0010H\u001a\u00020\u00132\u0008\u0010G\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008H\u0010IR\u001a\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008J\u0010K\u001a\u0004\u0008L\u0010CR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008M\u0010K\u001a\u0004\u0008N\u0010CR\u001a\u0010\u0005\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008O\u0010K\u001a\u0004\u0008P\u0010CR\u001a\u0010\u0006\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008Q\u0010K\u001a\u0004\u0008R\u0010CR\u001a\u0010\u0007\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008S\u0010K\u001a\u0004\u0008T\u0010CR\u001a\u0010\u0008\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008U\u0010K\u001a\u0004\u0008V\u0010CR\u001c\u0010\n\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008W\u0010X\u001a\u0004\u0008Y\u0010ZR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008[\u0010K\u001a\u0004\u0008\\\u0010CR\u001a\u0010\u000c\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008]\u0010K\u001a\u0004\u0008^\u0010CR\u001a\u0010\r\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008_\u0010K\u001a\u0004\u0008J\u0010CR\u001a\u0010\u000e\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008`\u0010K\u001a\u0004\u0008a\u0010CR\u001a\u0010\u000f\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008b\u0010K\u001a\u0004\u0008c\u0010CR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008d\u0010K\u001a\u0004\u0008e\u0010CR\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008f\u0010K\u001a\u0004\u0008g\u0010CR\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008h\u0010K\u001a\u0004\u0008i\u0010CR\u001a\u0010\u0014\u001a\u00020\u00138\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\\\u0010j\u001a\u0004\u0008k\u0010lR\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008a\u0010K\u001a\u0004\u0008m\u0010CR\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008c\u0010K\u001a\u0004\u0008n\u0010CR\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008k\u0010K\u001a\u0004\u0008o\u0010CR\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008R\u0010p\u001a\u0004\u0008q\u0010rR\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008Y\u0010K\u001a\u0004\u0008s\u0010CR\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008L\u0010K\u001a\u0004\u0008t\u0010CR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008e\u0010K\u001a\u0004\u0008h\u0010CR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008u\u0010p\u001a\u0004\u0008b\u0010rR\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008v\u0010p\u001a\u0004\u0008`\u0010rR\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008w\u0010K\u001a\u0004\u0008x\u0010CR\u001c\u0010\u001f\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008y\u0010K\u001a\u0004\u0008z\u0010CR\u001c\u0010 \u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008t\u0010K\u001a\u0004\u0008W\u0010CR\u001c\u0010!\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008T\u0010K\u001a\u0004\u0008U\u0010CR\u001c\u0010\"\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008{\u0010K\u001a\u0004\u0008{\u0010CR\u001c\u0010#\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008P\u0010K\u001a\u0004\u0008f\u0010CR\u001c\u0010$\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008|\u0010K\u001a\u0004\u0008S\u0010CR\u001a\u0010%\u001a\u00020\u00138\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008}\u0010j\u001a\u0004\u0008%\u0010lR\u001c\u0010&\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008~\u0010K\u001a\u0004\u0008\u007f\u0010CR\u001c\u0010\'\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008x\u0010K\u001a\u0004\u0008y\u0010CR\u001c\u0010(\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008g\u0010K\u001a\u0004\u0008]\u0010CR\u001c\u0010)\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008^\u0010K\u001a\u0004\u0008~\u0010CR\u001e\u0010+\u001a\u0004\u0018\u00010*8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0005\u0008s\u0010\u0080\u0001\u001a\u0005\u0008Q\u0010\u0081\u0001R\u001e\u0010-\u001a\u0004\u0018\u00010,8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0005\u0008V\u0010\u0082\u0001\u001a\u0005\u0008w\u0010\u0083\u0001R\u001d\u0010.\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\r\n\u0005\u0008\u0084\u0001\u0010K\u001a\u0004\u0008O\u0010CR\u001d\u0010/\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\r\n\u0005\u0008\u0085\u0001\u0010K\u001a\u0004\u0008}\u0010CR\u001d\u00100\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\r\n\u0005\u0008\u0086\u0001\u0010K\u001a\u0004\u0008|\u0010CR\u001c\u00101\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008i\u0010K\u001a\u0004\u0008M\u0010CR\u001d\u00102\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\r\n\u0004\u0008q\u0010K\u001a\u0005\u0008\u0084\u0001\u0010CR\u001e\u00103\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0005\u0008\u0087\u0001\u0010K\u001a\u0005\u0008\u0086\u0001\u0010CR\u001e\u00104\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0005\u0008\u0088\u0001\u0010K\u001a\u0005\u0008\u0085\u0001\u0010CR\u001f\u00106\u001a\u0004\u0018\u0001058\u0006X\u0087\u0004\u00a2\u0006\u000f\n\u0006\u0008\u0089\u0001\u0010\u008a\u0001\u001a\u0005\u0008_\u0010\u008b\u0001R\u001e\u00107\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0005\u0008\u008c\u0001\u0010p\u001a\u0005\u0008\u0087\u0001\u0010rR\u001e\u00108\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0005\u0008\u008d\u0001\u0010p\u001a\u0005\u0008\u0088\u0001\u0010rR\u001f\u0010:\u001a\u0004\u0018\u0001098\u0006X\u0087\u0004\u00a2\u0006\u000f\n\u0006\u0008\u008e\u0001\u0010\u008f\u0001\u001a\u0005\u0008v\u0010\u0090\u0001R\u001d\u0010;\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\r\n\u0005\u0008\u0091\u0001\u0010K\u001a\u0004\u0008u\u0010CR$\u0010>\u001a\n\u0012\u0004\u0012\u00020=\u0018\u00010<8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0005\u0008j\u0010\u0092\u0001\u001a\u0005\u0008d\u0010\u0093\u0001R\u001d\u0010?\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\r\n\u0005\u0008\u0094\u0001\u0010K\u001a\u0004\u0008[\u0010C\u00a8\u0006\u0095\u0001"
    }
    d2 = {
        "Lteam/opay/core/api/GraphQL$UserProfile;",
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
        "kycLevel",
        "role",
        "userToken",
        "",
        "emailVerified",
        "validID",
        "utilityBill",
        "picture",
        "isFinish",
        "stateCode",
        "lgaCode",
        "cityCode",
        "canUpdateName",
        "canUpdateDobAndGender",
        "referrerCode",
        "lastVisitTime",
        "avatarUrl",
        "avatarThumbnailUrl",
        "nickName",
        "city",
        "aggregatorId",
        "isSetPayPin",
        "createDate",
        "lga",
        "businessName",
        "referralCode",
        "Lteam/opay/core/api/GraphQL$AgentUpgrade;",
        "agentUpgrade",
        "Lteam/opay/core/api/GraphQL$KycUpload;",
        "kycUpload",
        "agentRefererCode",
        "posLevelIconUrl",
        "posLevelFileIconUrl",
        "agentLevel",
        "upgradeStatus",
        "upgradeVersion",
        "upgradeStyle",
        "Lteam/opay/core/api/GraphQL$BvnBean;",
        "bvn",
        "isNewOpayUser",
        "isSetSecret",
        "Lteam/opay/core/api/GraphQL$KycUpgradeInfo;",
        "kycUpgradeInfo",
        "kycStatus",
        "",
        "Lteam/opay/core/api/GraphQL$ChannelInfo;",
        "channelInfoList",
        "bankName",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$Gender;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$AgentUpgrade;Lteam/opay/core/api/GraphQL$KycUpload;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$BvnBean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lteam/opay/core/api/GraphQL$KycUpgradeInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V",
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
        "v",
        "b",
        "getAvatar",
        "c",
        "E",
        "d",
        "t",
        "e",
        "C",
        "f",
        "M",
        "g",
        "Lteam/opay/core/api/GraphQL$Gender;",
        "u",
        "()Lteam/opay/core/api/GraphQL$Gender;",
        "h",
        "p",
        "i",
        "K",
        "j",
        "k",
        "q",
        "l",
        "r",
        "m",
        "w",
        "n",
        "J",
        "o",
        "Q",
        "Z",
        "s",
        "()Z",
        "getValidID",
        "getUtilityBill",
        "getPicture",
        "Ljava/lang/Boolean;",
        "R",
        "()Ljava/lang/Boolean;",
        "L",
        "B",
        "x",
        "y",
        "z",
        "I",
        "A",
        "getLastVisitTime",
        "D",
        "F",
        "G",
        "H",
        "getCreateDate",
        "Lteam/opay/core/api/GraphQL$AgentUpgrade;",
        "()Lteam/opay/core/api/GraphQL$AgentUpgrade;",
        "Lteam/opay/core/api/GraphQL$KycUpload;",
        "()Lteam/opay/core/api/GraphQL$KycUpload;",
        "N",
        "O",
        "P",
        "S",
        "T",
        "U",
        "Lteam/opay/core/api/GraphQL$BvnBean;",
        "()Lteam/opay/core/api/GraphQL$BvnBean;",
        "V",
        "W",
        "X",
        "Lteam/opay/core/api/GraphQL$KycUpgradeInfo;",
        "()Lteam/opay/core/api/GraphQL$KycUpgradeInfo;",
        "Y",
        "Ljava/util/List;",
        "()Ljava/util/List;",
        "a0",
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
        value = "lastVisitTime"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final B:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "avatarUrl"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final C:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "avatarThumbnailUrl"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final D:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "nickName"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final E:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "city"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final F:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "aggregatorId"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final G:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isSetPayPin"
    .end annotation
.end field

.field private final H:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "createDate"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final I:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lga"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final J:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "businessName"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final K:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "referralCode"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final L:Lteam/opay/core/api/GraphQL$AgentUpgrade;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "agentUpgrade"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final M:Lteam/opay/core/api/GraphQL$KycUpload;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "kycUpload"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final N:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "agentRefererCode"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final O:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "posLevelIconUrl"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final P:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "posLevelFileIconUrl"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final Q:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "agentLevel"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final R:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "upgradeStatus"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final S:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "upgradeVersion"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final T:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "upgradeStyle"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final U:Lteam/opay/core/api/GraphQL$BvnBean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bvn"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final V:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isNewOpayUser"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final W:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isSetSecret"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final X:Lteam/opay/core/api/GraphQL$KycUpgradeInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "kycUpgradeInfo"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final Y:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "kycStatus"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final Z:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "channelInfoList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$ChannelInfo;",
            ">;"
        }
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

.field private final a0:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bankName"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
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

    .annotation build Lorg/jetbrains/annotations/Nullable;
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
        value = "kycLevel"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final n:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "role"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final o:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "userToken"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final p:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emailVerified"
    .end annotation
.end field

.field private final q:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "validID"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final r:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "utilityBill"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final s:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "picture"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final t:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isFinish"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final u:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stateCode"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final v:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lgaCode"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final w:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cityCode"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final x:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "canUpdateName"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final y:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "canUpdateDobAndGender"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final z:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "referrerCode"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$Gender;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$AgentUpgrade;Lteam/opay/core/api/GraphQL$KycUpload;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$BvnBean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lteam/opay/core/api/GraphQL$KycUpgradeInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 11
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
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    .param p14    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p17    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p18    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p19    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p20    # Ljava/lang/Boolean;
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
    .param p24    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p25    # Ljava/lang/Boolean;
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
    .param p29    # Ljava/lang/String;
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
    .param p34    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p35    # Ljava/lang/String;
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
    .param p38    # Lteam/opay/core/api/GraphQL$AgentUpgrade;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p39    # Lteam/opay/core/api/GraphQL$KycUpload;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p40    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p41    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p42    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p43    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p44    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p45    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p46    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p47    # Lteam/opay/core/api/GraphQL$BvnBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p48    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p49    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p50    # Lteam/opay/core/api/GraphQL$KycUpgradeInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p51    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p52    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p53    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lteam/opay/core/api/GraphQL$Gender;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lteam/opay/core/api/GraphQL$AgentUpgrade;",
            "Lteam/opay/core/api/GraphQL$KycUpload;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lteam/opay/core/api/GraphQL$BvnBean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Lteam/opay/core/api/GraphQL$KycUpgradeInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$ChannelInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    const-string v10, "id"

    invoke-static {p1, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "phone"

    invoke-static {p3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "firstName"

    invoke-static {p4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "middleName"

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "surname"

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "state"

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "address"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "email"

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "emailToVerify"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserProfile;->a:Ljava/lang/String;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserProfile;->b:Ljava/lang/String;

    .line 4
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$UserProfile;->c:Ljava/lang/String;

    .line 5
    iput-object v3, v0, Lteam/opay/core/api/GraphQL$UserProfile;->d:Ljava/lang/String;

    .line 6
    iput-object v4, v0, Lteam/opay/core/api/GraphQL$UserProfile;->e:Ljava/lang/String;

    .line 7
    iput-object v5, v0, Lteam/opay/core/api/GraphQL$UserProfile;->f:Ljava/lang/String;

    move-object/from16 v1, p7

    .line 8
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserProfile;->g:Lteam/opay/core/api/GraphQL$Gender;

    move-object/from16 v1, p8

    .line 9
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserProfile;->h:Ljava/lang/String;

    .line 10
    iput-object v6, v0, Lteam/opay/core/api/GraphQL$UserProfile;->i:Ljava/lang/String;

    .line 11
    iput-object v7, v0, Lteam/opay/core/api/GraphQL$UserProfile;->j:Ljava/lang/String;

    .line 12
    iput-object v8, v0, Lteam/opay/core/api/GraphQL$UserProfile;->k:Ljava/lang/String;

    .line 13
    iput-object v9, v0, Lteam/opay/core/api/GraphQL$UserProfile;->l:Ljava/lang/String;

    move-object/from16 v1, p13

    .line 14
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserProfile;->m:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserProfile;->n:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserProfile;->o:Ljava/lang/String;

    move/from16 v1, p16

    .line 17
    iput-boolean v1, v0, Lteam/opay/core/api/GraphQL$UserProfile;->p:Z

    move-object/from16 v1, p17

    .line 18
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserProfile;->q:Ljava/lang/String;

    move-object/from16 v1, p18

    .line 19
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserProfile;->r:Ljava/lang/String;

    move-object/from16 v1, p19

    .line 20
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserProfile;->s:Ljava/lang/String;

    move-object/from16 v1, p20

    .line 21
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserProfile;->t:Ljava/lang/Boolean;

    move-object/from16 v1, p21

    .line 22
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserProfile;->u:Ljava/lang/String;

    move-object/from16 v1, p22

    .line 23
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserProfile;->v:Ljava/lang/String;

    move-object/from16 v1, p23

    .line 24
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserProfile;->w:Ljava/lang/String;

    move-object/from16 v1, p24

    .line 25
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserProfile;->x:Ljava/lang/Boolean;

    move-object/from16 v1, p25

    .line 26
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserProfile;->y:Ljava/lang/Boolean;

    move-object/from16 v1, p26

    .line 27
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserProfile;->z:Ljava/lang/String;

    move-object/from16 v1, p27

    .line 28
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserProfile;->A:Ljava/lang/String;

    move-object/from16 v1, p28

    .line 29
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserProfile;->B:Ljava/lang/String;

    move-object/from16 v1, p29

    .line 30
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserProfile;->C:Ljava/lang/String;

    move-object/from16 v1, p30

    .line 31
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserProfile;->D:Ljava/lang/String;

    move-object/from16 v1, p31

    .line 32
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserProfile;->E:Ljava/lang/String;

    move-object/from16 v1, p32

    .line 33
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserProfile;->F:Ljava/lang/String;

    move/from16 v1, p33

    .line 34
    iput-boolean v1, v0, Lteam/opay/core/api/GraphQL$UserProfile;->G:Z

    move-object/from16 v1, p34

    .line 35
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserProfile;->H:Ljava/lang/String;

    move-object/from16 v1, p35

    .line 36
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserProfile;->I:Ljava/lang/String;

    move-object/from16 v1, p36

    .line 37
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserProfile;->J:Ljava/lang/String;

    move-object/from16 v1, p37

    .line 38
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserProfile;->K:Ljava/lang/String;

    move-object/from16 v1, p38

    .line 39
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserProfile;->L:Lteam/opay/core/api/GraphQL$AgentUpgrade;

    move-object/from16 v1, p39

    .line 40
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserProfile;->M:Lteam/opay/core/api/GraphQL$KycUpload;

    move-object/from16 v1, p40

    .line 41
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserProfile;->N:Ljava/lang/String;

    move-object/from16 v1, p41

    .line 42
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserProfile;->O:Ljava/lang/String;

    move-object/from16 v1, p42

    .line 43
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserProfile;->P:Ljava/lang/String;

    move-object/from16 v1, p43

    .line 44
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserProfile;->Q:Ljava/lang/String;

    move-object/from16 v1, p44

    .line 45
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserProfile;->R:Ljava/lang/String;

    move-object/from16 v1, p45

    .line 46
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserProfile;->S:Ljava/lang/String;

    move-object/from16 v1, p46

    .line 47
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserProfile;->T:Ljava/lang/String;

    move-object/from16 v1, p47

    .line 48
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserProfile;->U:Lteam/opay/core/api/GraphQL$BvnBean;

    move-object/from16 v1, p48

    .line 49
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserProfile;->V:Ljava/lang/Boolean;

    move-object/from16 v1, p49

    .line 50
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserProfile;->W:Ljava/lang/Boolean;

    move-object/from16 v1, p50

    .line 51
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserProfile;->X:Lteam/opay/core/api/GraphQL$KycUpgradeInfo;

    move-object/from16 v1, p51

    .line 52
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserProfile;->Y:Ljava/lang/String;

    move-object/from16 v1, p52

    .line 53
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserProfile;->Z:Ljava/util/List;

    move-object/from16 v1, p53

    .line 54
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserProfile;->a0:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$Gender;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$AgentUpgrade;Lteam/opay/core/api/GraphQL$KycUpload;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$BvnBean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lteam/opay/core/api/GraphQL$KycUpgradeInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 58

    move/from16 v0, p55

    const/high16 v1, 0x100000

    and-int v2, p54, v1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object/from16 v25, v3

    goto :goto_0

    :cond_0
    move-object/from16 v25, p21

    :goto_0
    const/high16 v2, 0x200000

    and-int v2, p54, v2

    if-eqz v2, :cond_1

    move-object/from16 v26, v3

    goto :goto_1

    :cond_1
    move-object/from16 v26, p22

    :goto_1
    const/high16 v2, 0x400000

    and-int v2, p54, v2

    if-eqz v2, :cond_2

    move-object/from16 v27, v3

    goto :goto_2

    :cond_2
    move-object/from16 v27, p23

    :goto_2
    const/high16 v2, 0x2000000

    and-int v2, p54, v2

    if-eqz v2, :cond_3

    move-object/from16 v30, v3

    goto :goto_3

    :cond_3
    move-object/from16 v30, p26

    :goto_3
    const/high16 v2, 0x4000000

    and-int v2, p54, v2

    if-eqz v2, :cond_4

    move-object/from16 v31, v3

    goto :goto_4

    :cond_4
    move-object/from16 v31, p27

    :goto_4
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    const/16 v37, 0x1

    goto :goto_5

    :cond_5
    move/from16 v37, p33

    :goto_5
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_6

    .line 55
    const-string v2, ""

    move-object/from16 v38, v2

    goto :goto_6

    :cond_6
    move-object/from16 v38, p34

    :goto_6
    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_7

    .line 56
    const-string v2, "claimed"

    move-object/from16 v48, v2

    goto :goto_7

    :cond_7
    move-object/from16 v48, p44

    :goto_7
    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_8

    .line 57
    const-string v2, "UPGRADE_A_VERSION"

    move-object/from16 v49, v2

    goto :goto_8

    :cond_8
    move-object/from16 v49, p45

    :goto_8
    and-int/lit16 v2, v0, 0x2000

    if-eqz v2, :cond_9

    .line 58
    const-string v2, "DEFAULT"

    move-object/from16 v50, v2

    goto :goto_9

    :cond_9
    move-object/from16 v50, p46

    :goto_9
    and-int/lit16 v2, v0, 0x4000

    if-eqz v2, :cond_a

    move-object/from16 v51, v3

    goto :goto_a

    :cond_a
    move-object/from16 v51, p47

    :goto_a
    const v2, 0x8000

    and-int/2addr v2, v0

    if-eqz v2, :cond_b

    move-object/from16 v52, v3

    goto :goto_b

    :cond_b
    move-object/from16 v52, p48

    :goto_b
    const/high16 v2, 0x10000

    and-int/2addr v2, v0

    if-eqz v2, :cond_c

    move-object/from16 v53, v3

    goto :goto_c

    :cond_c
    move-object/from16 v53, p49

    :goto_c
    const/high16 v2, 0x20000

    and-int/2addr v2, v0

    if-eqz v2, :cond_d

    move-object/from16 v54, v3

    goto :goto_d

    :cond_d
    move-object/from16 v54, p50

    :goto_d
    const/high16 v2, 0x40000

    and-int/2addr v2, v0

    if-eqz v2, :cond_e

    move-object/from16 v55, v3

    goto :goto_e

    :cond_e
    move-object/from16 v55, p51

    :goto_e
    const/high16 v2, 0x80000

    and-int/2addr v2, v0

    if-eqz v2, :cond_f

    move-object/from16 v56, v3

    goto :goto_f

    :cond_f
    move-object/from16 v56, p52

    :goto_f
    and-int/2addr v0, v1

    if-eqz v0, :cond_10

    move-object/from16 v57, v3

    goto :goto_10

    :cond_10
    move-object/from16 v57, p53

    :goto_10
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    move-object/from16 v16, p12

    move-object/from16 v17, p13

    move-object/from16 v18, p14

    move-object/from16 v19, p15

    move/from16 v20, p16

    move-object/from16 v21, p17

    move-object/from16 v22, p18

    move-object/from16 v23, p19

    move-object/from16 v24, p20

    move-object/from16 v28, p24

    move-object/from16 v29, p25

    move-object/from16 v32, p28

    move-object/from16 v33, p29

    move-object/from16 v34, p30

    move-object/from16 v35, p31

    move-object/from16 v36, p32

    move-object/from16 v39, p35

    move-object/from16 v40, p36

    move-object/from16 v41, p37

    move-object/from16 v42, p38

    move-object/from16 v43, p39

    move-object/from16 v44, p40

    move-object/from16 v45, p41

    move-object/from16 v46, p42

    move-object/from16 v47, p43

    .line 59
    invoke-direct/range {v4 .. v57}, Lteam/opay/core/api/GraphQL$UserProfile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$Gender;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$AgentUpgrade;Lteam/opay/core/api/GraphQL$KycUpload;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$BvnBean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lteam/opay/core/api/GraphQL$KycUpgradeInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserProfile;->I:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final B()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserProfile;->v:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final C()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserProfile;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final D()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserProfile;->D:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final E()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserProfile;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final F()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserProfile;->P:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final G()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserProfile;->O:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final H()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserProfile;->K:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final I()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserProfile;->z:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final J()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserProfile;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final K()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserProfile;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final L()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserProfile;->u:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final M()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserProfile;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final N()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserProfile;->R:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final O()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserProfile;->T:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final P()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserProfile;->S:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Q()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserProfile;->o:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final R()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserProfile;->t:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final S()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserProfile;->V:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final T()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserProfile;->W:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserProfile;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserProfile;->Q:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserProfile;->N:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Lteam/opay/core/api/GraphQL$AgentUpgrade;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserProfile;->L:Lteam/opay/core/api/GraphQL$AgentUpgrade;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserProfile;->F:Ljava/lang/String;

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
    instance-of v1, p1, Lteam/opay/core/api/GraphQL$UserProfile;

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
    check-cast p1, Lteam/opay/core/api/GraphQL$UserProfile;

    .line 12
    .line 13
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->a:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserProfile;->a:Ljava/lang/String;

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
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->b:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserProfile;->b:Ljava/lang/String;

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
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->c:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserProfile;->c:Ljava/lang/String;

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
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->d:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserProfile;->d:Ljava/lang/String;

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
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->e:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserProfile;->e:Ljava/lang/String;

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
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->f:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserProfile;->f:Ljava/lang/String;

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
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->g:Lteam/opay/core/api/GraphQL$Gender;

    .line 80
    .line 81
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserProfile;->g:Lteam/opay/core/api/GraphQL$Gender;

    .line 82
    .line 83
    if-eq v1, v3, :cond_8

    .line 84
    .line 85
    return v2

    .line 86
    :cond_8
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->h:Ljava/lang/String;

    .line 87
    .line 88
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserProfile;->h:Ljava/lang/String;

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
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->i:Ljava/lang/String;

    .line 98
    .line 99
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserProfile;->i:Ljava/lang/String;

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
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->j:Ljava/lang/String;

    .line 109
    .line 110
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserProfile;->j:Ljava/lang/String;

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
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->k:Ljava/lang/String;

    .line 120
    .line 121
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserProfile;->k:Ljava/lang/String;

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
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->l:Ljava/lang/String;

    .line 131
    .line 132
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserProfile;->l:Ljava/lang/String;

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
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->m:Ljava/lang/String;

    .line 142
    .line 143
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserProfile;->m:Ljava/lang/String;

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
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->n:Ljava/lang/String;

    .line 153
    .line 154
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserProfile;->n:Ljava/lang/String;

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
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->o:Ljava/lang/String;

    .line 164
    .line 165
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserProfile;->o:Ljava/lang/String;

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
    iget-boolean v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->p:Z

    .line 175
    .line 176
    iget-boolean v3, p1, Lteam/opay/core/api/GraphQL$UserProfile;->p:Z

    .line 177
    .line 178
    if-eq v1, v3, :cond_11

    .line 179
    .line 180
    return v2

    .line 181
    :cond_11
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->q:Ljava/lang/String;

    .line 182
    .line 183
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserProfile;->q:Ljava/lang/String;

    .line 184
    .line 185
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    if-nez v1, :cond_12

    .line 190
    .line 191
    return v2

    .line 192
    :cond_12
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->r:Ljava/lang/String;

    .line 193
    .line 194
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserProfile;->r:Ljava/lang/String;

    .line 195
    .line 196
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    if-nez v1, :cond_13

    .line 201
    .line 202
    return v2

    .line 203
    :cond_13
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->s:Ljava/lang/String;

    .line 204
    .line 205
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserProfile;->s:Ljava/lang/String;

    .line 206
    .line 207
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    if-nez v1, :cond_14

    .line 212
    .line 213
    return v2

    .line 214
    :cond_14
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->t:Ljava/lang/Boolean;

    .line 215
    .line 216
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserProfile;->t:Ljava/lang/Boolean;

    .line 217
    .line 218
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    if-nez v1, :cond_15

    .line 223
    .line 224
    return v2

    .line 225
    :cond_15
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->u:Ljava/lang/String;

    .line 226
    .line 227
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserProfile;->u:Ljava/lang/String;

    .line 228
    .line 229
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    if-nez v1, :cond_16

    .line 234
    .line 235
    return v2

    .line 236
    :cond_16
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->v:Ljava/lang/String;

    .line 237
    .line 238
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserProfile;->v:Ljava/lang/String;

    .line 239
    .line 240
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    if-nez v1, :cond_17

    .line 245
    .line 246
    return v2

    .line 247
    :cond_17
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->w:Ljava/lang/String;

    .line 248
    .line 249
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserProfile;->w:Ljava/lang/String;

    .line 250
    .line 251
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    if-nez v1, :cond_18

    .line 256
    .line 257
    return v2

    .line 258
    :cond_18
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->x:Ljava/lang/Boolean;

    .line 259
    .line 260
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserProfile;->x:Ljava/lang/Boolean;

    .line 261
    .line 262
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v1

    .line 266
    if-nez v1, :cond_19

    .line 267
    .line 268
    return v2

    .line 269
    :cond_19
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->y:Ljava/lang/Boolean;

    .line 270
    .line 271
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserProfile;->y:Ljava/lang/Boolean;

    .line 272
    .line 273
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-result v1

    .line 277
    if-nez v1, :cond_1a

    .line 278
    .line 279
    return v2

    .line 280
    :cond_1a
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->z:Ljava/lang/String;

    .line 281
    .line 282
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserProfile;->z:Ljava/lang/String;

    .line 283
    .line 284
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    move-result v1

    .line 288
    if-nez v1, :cond_1b

    .line 289
    .line 290
    return v2

    .line 291
    :cond_1b
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->A:Ljava/lang/String;

    .line 292
    .line 293
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserProfile;->A:Ljava/lang/String;

    .line 294
    .line 295
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    if-nez v1, :cond_1c

    .line 300
    .line 301
    return v2

    .line 302
    :cond_1c
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->B:Ljava/lang/String;

    .line 303
    .line 304
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserProfile;->B:Ljava/lang/String;

    .line 305
    .line 306
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    move-result v1

    .line 310
    if-nez v1, :cond_1d

    .line 311
    .line 312
    return v2

    .line 313
    :cond_1d
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->C:Ljava/lang/String;

    .line 314
    .line 315
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserProfile;->C:Ljava/lang/String;

    .line 316
    .line 317
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    move-result v1

    .line 321
    if-nez v1, :cond_1e

    .line 322
    .line 323
    return v2

    .line 324
    :cond_1e
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->D:Ljava/lang/String;

    .line 325
    .line 326
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserProfile;->D:Ljava/lang/String;

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
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->E:Ljava/lang/String;

    .line 336
    .line 337
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserProfile;->E:Ljava/lang/String;

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
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->F:Ljava/lang/String;

    .line 347
    .line 348
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserProfile;->F:Ljava/lang/String;

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
    iget-boolean v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->G:Z

    .line 358
    .line 359
    iget-boolean v3, p1, Lteam/opay/core/api/GraphQL$UserProfile;->G:Z

    .line 360
    .line 361
    if-eq v1, v3, :cond_22

    .line 362
    .line 363
    return v2

    .line 364
    :cond_22
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->H:Ljava/lang/String;

    .line 365
    .line 366
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserProfile;->H:Ljava/lang/String;

    .line 367
    .line 368
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 369
    .line 370
    .line 371
    move-result v1

    .line 372
    if-nez v1, :cond_23

    .line 373
    .line 374
    return v2

    .line 375
    :cond_23
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->I:Ljava/lang/String;

    .line 376
    .line 377
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserProfile;->I:Ljava/lang/String;

    .line 378
    .line 379
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 380
    .line 381
    .line 382
    move-result v1

    .line 383
    if-nez v1, :cond_24

    .line 384
    .line 385
    return v2

    .line 386
    :cond_24
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->J:Ljava/lang/String;

    .line 387
    .line 388
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserProfile;->J:Ljava/lang/String;

    .line 389
    .line 390
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 391
    .line 392
    .line 393
    move-result v1

    .line 394
    if-nez v1, :cond_25

    .line 395
    .line 396
    return v2

    .line 397
    :cond_25
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->K:Ljava/lang/String;

    .line 398
    .line 399
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserProfile;->K:Ljava/lang/String;

    .line 400
    .line 401
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    move-result v1

    .line 405
    if-nez v1, :cond_26

    .line 406
    .line 407
    return v2

    .line 408
    :cond_26
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->L:Lteam/opay/core/api/GraphQL$AgentUpgrade;

    .line 409
    .line 410
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserProfile;->L:Lteam/opay/core/api/GraphQL$AgentUpgrade;

    .line 411
    .line 412
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 413
    .line 414
    .line 415
    move-result v1

    .line 416
    if-nez v1, :cond_27

    .line 417
    .line 418
    return v2

    .line 419
    :cond_27
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->M:Lteam/opay/core/api/GraphQL$KycUpload;

    .line 420
    .line 421
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserProfile;->M:Lteam/opay/core/api/GraphQL$KycUpload;

    .line 422
    .line 423
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 424
    .line 425
    .line 426
    move-result v1

    .line 427
    if-nez v1, :cond_28

    .line 428
    .line 429
    return v2

    .line 430
    :cond_28
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->N:Ljava/lang/String;

    .line 431
    .line 432
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserProfile;->N:Ljava/lang/String;

    .line 433
    .line 434
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 435
    .line 436
    .line 437
    move-result v1

    .line 438
    if-nez v1, :cond_29

    .line 439
    .line 440
    return v2

    .line 441
    :cond_29
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->O:Ljava/lang/String;

    .line 442
    .line 443
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserProfile;->O:Ljava/lang/String;

    .line 444
    .line 445
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 446
    .line 447
    .line 448
    move-result v1

    .line 449
    if-nez v1, :cond_2a

    .line 450
    .line 451
    return v2

    .line 452
    :cond_2a
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->P:Ljava/lang/String;

    .line 453
    .line 454
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserProfile;->P:Ljava/lang/String;

    .line 455
    .line 456
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 457
    .line 458
    .line 459
    move-result v1

    .line 460
    if-nez v1, :cond_2b

    .line 461
    .line 462
    return v2

    .line 463
    :cond_2b
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->Q:Ljava/lang/String;

    .line 464
    .line 465
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserProfile;->Q:Ljava/lang/String;

    .line 466
    .line 467
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 468
    .line 469
    .line 470
    move-result v1

    .line 471
    if-nez v1, :cond_2c

    .line 472
    .line 473
    return v2

    .line 474
    :cond_2c
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->R:Ljava/lang/String;

    .line 475
    .line 476
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserProfile;->R:Ljava/lang/String;

    .line 477
    .line 478
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 479
    .line 480
    .line 481
    move-result v1

    .line 482
    if-nez v1, :cond_2d

    .line 483
    .line 484
    return v2

    .line 485
    :cond_2d
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->S:Ljava/lang/String;

    .line 486
    .line 487
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserProfile;->S:Ljava/lang/String;

    .line 488
    .line 489
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 490
    .line 491
    .line 492
    move-result v1

    .line 493
    if-nez v1, :cond_2e

    .line 494
    .line 495
    return v2

    .line 496
    :cond_2e
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->T:Ljava/lang/String;

    .line 497
    .line 498
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserProfile;->T:Ljava/lang/String;

    .line 499
    .line 500
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 501
    .line 502
    .line 503
    move-result v1

    .line 504
    if-nez v1, :cond_2f

    .line 505
    .line 506
    return v2

    .line 507
    :cond_2f
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->U:Lteam/opay/core/api/GraphQL$BvnBean;

    .line 508
    .line 509
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserProfile;->U:Lteam/opay/core/api/GraphQL$BvnBean;

    .line 510
    .line 511
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 512
    .line 513
    .line 514
    move-result v1

    .line 515
    if-nez v1, :cond_30

    .line 516
    .line 517
    return v2

    .line 518
    :cond_30
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->V:Ljava/lang/Boolean;

    .line 519
    .line 520
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserProfile;->V:Ljava/lang/Boolean;

    .line 521
    .line 522
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 523
    .line 524
    .line 525
    move-result v1

    .line 526
    if-nez v1, :cond_31

    .line 527
    .line 528
    return v2

    .line 529
    :cond_31
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->W:Ljava/lang/Boolean;

    .line 530
    .line 531
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserProfile;->W:Ljava/lang/Boolean;

    .line 532
    .line 533
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 534
    .line 535
    .line 536
    move-result v1

    .line 537
    if-nez v1, :cond_32

    .line 538
    .line 539
    return v2

    .line 540
    :cond_32
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->X:Lteam/opay/core/api/GraphQL$KycUpgradeInfo;

    .line 541
    .line 542
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserProfile;->X:Lteam/opay/core/api/GraphQL$KycUpgradeInfo;

    .line 543
    .line 544
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 545
    .line 546
    .line 547
    move-result v1

    .line 548
    if-nez v1, :cond_33

    .line 549
    .line 550
    return v2

    .line 551
    :cond_33
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->Y:Ljava/lang/String;

    .line 552
    .line 553
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserProfile;->Y:Ljava/lang/String;

    .line 554
    .line 555
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 556
    .line 557
    .line 558
    move-result v1

    .line 559
    if-nez v1, :cond_34

    .line 560
    .line 561
    return v2

    .line 562
    :cond_34
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->Z:Ljava/util/List;

    .line 563
    .line 564
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserProfile;->Z:Ljava/util/List;

    .line 565
    .line 566
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 567
    .line 568
    .line 569
    move-result v1

    .line 570
    if-nez v1, :cond_35

    .line 571
    .line 572
    return v2

    .line 573
    :cond_35
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->a0:Ljava/lang/String;

    .line 574
    .line 575
    iget-object p1, p1, Lteam/opay/core/api/GraphQL$UserProfile;->a0:Ljava/lang/String;

    .line 576
    .line 577
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 578
    .line 579
    .line 580
    move-result p1

    .line 581
    if-nez p1, :cond_36

    .line 582
    .line 583
    return v2

    .line 584
    :cond_36
    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserProfile;->C:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserProfile;->B:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserProfile;->a0:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserProfile;->a:Ljava/lang/String;

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
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->b:Ljava/lang/String;

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
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->c:Ljava/lang/String;

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
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->d:Ljava/lang/String;

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
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->e:Ljava/lang/String;

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
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->f:Ljava/lang/String;

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
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->g:Lteam/opay/core/api/GraphQL$Gender;

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
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->h:Ljava/lang/String;

    .line 73
    .line 74
    if-nez v1, :cond_2

    .line 75
    .line 76
    const/4 v1, 0x0

    .line 77
    goto :goto_2

    .line 78
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    :goto_2
    add-int/2addr v0, v1

    .line 83
    mul-int/lit8 v0, v0, 0x1f

    .line 84
    .line 85
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->i:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    add-int/2addr v0, v1

    .line 92
    mul-int/lit8 v0, v0, 0x1f

    .line 93
    .line 94
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->j:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    add-int/2addr v0, v1

    .line 101
    mul-int/lit8 v0, v0, 0x1f

    .line 102
    .line 103
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->k:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    add-int/2addr v0, v1

    .line 110
    mul-int/lit8 v0, v0, 0x1f

    .line 111
    .line 112
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->l:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    add-int/2addr v0, v1

    .line 119
    mul-int/lit8 v0, v0, 0x1f

    .line 120
    .line 121
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->m:Ljava/lang/String;

    .line 122
    .line 123
    if-nez v1, :cond_3

    .line 124
    .line 125
    const/4 v1, 0x0

    .line 126
    goto :goto_3

    .line 127
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    :goto_3
    add-int/2addr v0, v1

    .line 132
    mul-int/lit8 v0, v0, 0x1f

    .line 133
    .line 134
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->n:Ljava/lang/String;

    .line 135
    .line 136
    if-nez v1, :cond_4

    .line 137
    .line 138
    const/4 v1, 0x0

    .line 139
    goto :goto_4

    .line 140
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    :goto_4
    add-int/2addr v0, v1

    .line 145
    mul-int/lit8 v0, v0, 0x1f

    .line 146
    .line 147
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->o:Ljava/lang/String;

    .line 148
    .line 149
    if-nez v1, :cond_5

    .line 150
    .line 151
    const/4 v1, 0x0

    .line 152
    goto :goto_5

    .line 153
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    :goto_5
    add-int/2addr v0, v1

    .line 158
    mul-int/lit8 v0, v0, 0x1f

    .line 159
    .line 160
    iget-boolean v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->p:Z

    .line 161
    .line 162
    invoke-static {v1}, Lii8;->a(Z)I

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    add-int/2addr v0, v1

    .line 167
    mul-int/lit8 v0, v0, 0x1f

    .line 168
    .line 169
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->q:Ljava/lang/String;

    .line 170
    .line 171
    if-nez v1, :cond_6

    .line 172
    .line 173
    const/4 v1, 0x0

    .line 174
    goto :goto_6

    .line 175
    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    :goto_6
    add-int/2addr v0, v1

    .line 180
    mul-int/lit8 v0, v0, 0x1f

    .line 181
    .line 182
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->r:Ljava/lang/String;

    .line 183
    .line 184
    if-nez v1, :cond_7

    .line 185
    .line 186
    const/4 v1, 0x0

    .line 187
    goto :goto_7

    .line 188
    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    :goto_7
    add-int/2addr v0, v1

    .line 193
    mul-int/lit8 v0, v0, 0x1f

    .line 194
    .line 195
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->s:Ljava/lang/String;

    .line 196
    .line 197
    if-nez v1, :cond_8

    .line 198
    .line 199
    const/4 v1, 0x0

    .line 200
    goto :goto_8

    .line 201
    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    :goto_8
    add-int/2addr v0, v1

    .line 206
    mul-int/lit8 v0, v0, 0x1f

    .line 207
    .line 208
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->t:Ljava/lang/Boolean;

    .line 209
    .line 210
    if-nez v1, :cond_9

    .line 211
    .line 212
    const/4 v1, 0x0

    .line 213
    goto :goto_9

    .line 214
    :cond_9
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    :goto_9
    add-int/2addr v0, v1

    .line 219
    mul-int/lit8 v0, v0, 0x1f

    .line 220
    .line 221
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->u:Ljava/lang/String;

    .line 222
    .line 223
    if-nez v1, :cond_a

    .line 224
    .line 225
    const/4 v1, 0x0

    .line 226
    goto :goto_a

    .line 227
    :cond_a
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 228
    .line 229
    .line 230
    move-result v1

    .line 231
    :goto_a
    add-int/2addr v0, v1

    .line 232
    mul-int/lit8 v0, v0, 0x1f

    .line 233
    .line 234
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->v:Ljava/lang/String;

    .line 235
    .line 236
    if-nez v1, :cond_b

    .line 237
    .line 238
    const/4 v1, 0x0

    .line 239
    goto :goto_b

    .line 240
    :cond_b
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    :goto_b
    add-int/2addr v0, v1

    .line 245
    mul-int/lit8 v0, v0, 0x1f

    .line 246
    .line 247
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->w:Ljava/lang/String;

    .line 248
    .line 249
    if-nez v1, :cond_c

    .line 250
    .line 251
    const/4 v1, 0x0

    .line 252
    goto :goto_c

    .line 253
    :cond_c
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    :goto_c
    add-int/2addr v0, v1

    .line 258
    mul-int/lit8 v0, v0, 0x1f

    .line 259
    .line 260
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->x:Ljava/lang/Boolean;

    .line 261
    .line 262
    if-nez v1, :cond_d

    .line 263
    .line 264
    const/4 v1, 0x0

    .line 265
    goto :goto_d

    .line 266
    :cond_d
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 267
    .line 268
    .line 269
    move-result v1

    .line 270
    :goto_d
    add-int/2addr v0, v1

    .line 271
    mul-int/lit8 v0, v0, 0x1f

    .line 272
    .line 273
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->y:Ljava/lang/Boolean;

    .line 274
    .line 275
    if-nez v1, :cond_e

    .line 276
    .line 277
    const/4 v1, 0x0

    .line 278
    goto :goto_e

    .line 279
    :cond_e
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 280
    .line 281
    .line 282
    move-result v1

    .line 283
    :goto_e
    add-int/2addr v0, v1

    .line 284
    mul-int/lit8 v0, v0, 0x1f

    .line 285
    .line 286
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->z:Ljava/lang/String;

    .line 287
    .line 288
    if-nez v1, :cond_f

    .line 289
    .line 290
    const/4 v1, 0x0

    .line 291
    goto :goto_f

    .line 292
    :cond_f
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 293
    .line 294
    .line 295
    move-result v1

    .line 296
    :goto_f
    add-int/2addr v0, v1

    .line 297
    mul-int/lit8 v0, v0, 0x1f

    .line 298
    .line 299
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->A:Ljava/lang/String;

    .line 300
    .line 301
    if-nez v1, :cond_10

    .line 302
    .line 303
    const/4 v1, 0x0

    .line 304
    goto :goto_10

    .line 305
    :cond_10
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    :goto_10
    add-int/2addr v0, v1

    .line 310
    mul-int/lit8 v0, v0, 0x1f

    .line 311
    .line 312
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->B:Ljava/lang/String;

    .line 313
    .line 314
    if-nez v1, :cond_11

    .line 315
    .line 316
    const/4 v1, 0x0

    .line 317
    goto :goto_11

    .line 318
    :cond_11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 319
    .line 320
    .line 321
    move-result v1

    .line 322
    :goto_11
    add-int/2addr v0, v1

    .line 323
    mul-int/lit8 v0, v0, 0x1f

    .line 324
    .line 325
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->C:Ljava/lang/String;

    .line 326
    .line 327
    if-nez v1, :cond_12

    .line 328
    .line 329
    const/4 v1, 0x0

    .line 330
    goto :goto_12

    .line 331
    :cond_12
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 332
    .line 333
    .line 334
    move-result v1

    .line 335
    :goto_12
    add-int/2addr v0, v1

    .line 336
    mul-int/lit8 v0, v0, 0x1f

    .line 337
    .line 338
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->D:Ljava/lang/String;

    .line 339
    .line 340
    if-nez v1, :cond_13

    .line 341
    .line 342
    const/4 v1, 0x0

    .line 343
    goto :goto_13

    .line 344
    :cond_13
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 345
    .line 346
    .line 347
    move-result v1

    .line 348
    :goto_13
    add-int/2addr v0, v1

    .line 349
    mul-int/lit8 v0, v0, 0x1f

    .line 350
    .line 351
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->E:Ljava/lang/String;

    .line 352
    .line 353
    if-nez v1, :cond_14

    .line 354
    .line 355
    const/4 v1, 0x0

    .line 356
    goto :goto_14

    .line 357
    :cond_14
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 358
    .line 359
    .line 360
    move-result v1

    .line 361
    :goto_14
    add-int/2addr v0, v1

    .line 362
    mul-int/lit8 v0, v0, 0x1f

    .line 363
    .line 364
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->F:Ljava/lang/String;

    .line 365
    .line 366
    if-nez v1, :cond_15

    .line 367
    .line 368
    const/4 v1, 0x0

    .line 369
    goto :goto_15

    .line 370
    :cond_15
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 371
    .line 372
    .line 373
    move-result v1

    .line 374
    :goto_15
    add-int/2addr v0, v1

    .line 375
    mul-int/lit8 v0, v0, 0x1f

    .line 376
    .line 377
    iget-boolean v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->G:Z

    .line 378
    .line 379
    invoke-static {v1}, Lii8;->a(Z)I

    .line 380
    .line 381
    .line 382
    move-result v1

    .line 383
    add-int/2addr v0, v1

    .line 384
    mul-int/lit8 v0, v0, 0x1f

    .line 385
    .line 386
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->H:Ljava/lang/String;

    .line 387
    .line 388
    if-nez v1, :cond_16

    .line 389
    .line 390
    const/4 v1, 0x0

    .line 391
    goto :goto_16

    .line 392
    :cond_16
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 393
    .line 394
    .line 395
    move-result v1

    .line 396
    :goto_16
    add-int/2addr v0, v1

    .line 397
    mul-int/lit8 v0, v0, 0x1f

    .line 398
    .line 399
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->I:Ljava/lang/String;

    .line 400
    .line 401
    if-nez v1, :cond_17

    .line 402
    .line 403
    const/4 v1, 0x0

    .line 404
    goto :goto_17

    .line 405
    :cond_17
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 406
    .line 407
    .line 408
    move-result v1

    .line 409
    :goto_17
    add-int/2addr v0, v1

    .line 410
    mul-int/lit8 v0, v0, 0x1f

    .line 411
    .line 412
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->J:Ljava/lang/String;

    .line 413
    .line 414
    if-nez v1, :cond_18

    .line 415
    .line 416
    const/4 v1, 0x0

    .line 417
    goto :goto_18

    .line 418
    :cond_18
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 419
    .line 420
    .line 421
    move-result v1

    .line 422
    :goto_18
    add-int/2addr v0, v1

    .line 423
    mul-int/lit8 v0, v0, 0x1f

    .line 424
    .line 425
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->K:Ljava/lang/String;

    .line 426
    .line 427
    if-nez v1, :cond_19

    .line 428
    .line 429
    const/4 v1, 0x0

    .line 430
    goto :goto_19

    .line 431
    :cond_19
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 432
    .line 433
    .line 434
    move-result v1

    .line 435
    :goto_19
    add-int/2addr v0, v1

    .line 436
    mul-int/lit8 v0, v0, 0x1f

    .line 437
    .line 438
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->L:Lteam/opay/core/api/GraphQL$AgentUpgrade;

    .line 439
    .line 440
    if-nez v1, :cond_1a

    .line 441
    .line 442
    const/4 v1, 0x0

    .line 443
    goto :goto_1a

    .line 444
    :cond_1a
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$AgentUpgrade;->hashCode()I

    .line 445
    .line 446
    .line 447
    move-result v1

    .line 448
    :goto_1a
    add-int/2addr v0, v1

    .line 449
    mul-int/lit8 v0, v0, 0x1f

    .line 450
    .line 451
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->M:Lteam/opay/core/api/GraphQL$KycUpload;

    .line 452
    .line 453
    if-nez v1, :cond_1b

    .line 454
    .line 455
    const/4 v1, 0x0

    .line 456
    goto :goto_1b

    .line 457
    :cond_1b
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$KycUpload;->hashCode()I

    .line 458
    .line 459
    .line 460
    move-result v1

    .line 461
    :goto_1b
    add-int/2addr v0, v1

    .line 462
    mul-int/lit8 v0, v0, 0x1f

    .line 463
    .line 464
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->N:Ljava/lang/String;

    .line 465
    .line 466
    if-nez v1, :cond_1c

    .line 467
    .line 468
    const/4 v1, 0x0

    .line 469
    goto :goto_1c

    .line 470
    :cond_1c
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 471
    .line 472
    .line 473
    move-result v1

    .line 474
    :goto_1c
    add-int/2addr v0, v1

    .line 475
    mul-int/lit8 v0, v0, 0x1f

    .line 476
    .line 477
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->O:Ljava/lang/String;

    .line 478
    .line 479
    if-nez v1, :cond_1d

    .line 480
    .line 481
    const/4 v1, 0x0

    .line 482
    goto :goto_1d

    .line 483
    :cond_1d
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 484
    .line 485
    .line 486
    move-result v1

    .line 487
    :goto_1d
    add-int/2addr v0, v1

    .line 488
    mul-int/lit8 v0, v0, 0x1f

    .line 489
    .line 490
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->P:Ljava/lang/String;

    .line 491
    .line 492
    if-nez v1, :cond_1e

    .line 493
    .line 494
    const/4 v1, 0x0

    .line 495
    goto :goto_1e

    .line 496
    :cond_1e
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 497
    .line 498
    .line 499
    move-result v1

    .line 500
    :goto_1e
    add-int/2addr v0, v1

    .line 501
    mul-int/lit8 v0, v0, 0x1f

    .line 502
    .line 503
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->Q:Ljava/lang/String;

    .line 504
    .line 505
    if-nez v1, :cond_1f

    .line 506
    .line 507
    const/4 v1, 0x0

    .line 508
    goto :goto_1f

    .line 509
    :cond_1f
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 510
    .line 511
    .line 512
    move-result v1

    .line 513
    :goto_1f
    add-int/2addr v0, v1

    .line 514
    mul-int/lit8 v0, v0, 0x1f

    .line 515
    .line 516
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->R:Ljava/lang/String;

    .line 517
    .line 518
    if-nez v1, :cond_20

    .line 519
    .line 520
    const/4 v1, 0x0

    .line 521
    goto :goto_20

    .line 522
    :cond_20
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 523
    .line 524
    .line 525
    move-result v1

    .line 526
    :goto_20
    add-int/2addr v0, v1

    .line 527
    mul-int/lit8 v0, v0, 0x1f

    .line 528
    .line 529
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->S:Ljava/lang/String;

    .line 530
    .line 531
    if-nez v1, :cond_21

    .line 532
    .line 533
    const/4 v1, 0x0

    .line 534
    goto :goto_21

    .line 535
    :cond_21
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 536
    .line 537
    .line 538
    move-result v1

    .line 539
    :goto_21
    add-int/2addr v0, v1

    .line 540
    mul-int/lit8 v0, v0, 0x1f

    .line 541
    .line 542
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->T:Ljava/lang/String;

    .line 543
    .line 544
    if-nez v1, :cond_22

    .line 545
    .line 546
    const/4 v1, 0x0

    .line 547
    goto :goto_22

    .line 548
    :cond_22
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 549
    .line 550
    .line 551
    move-result v1

    .line 552
    :goto_22
    add-int/2addr v0, v1

    .line 553
    mul-int/lit8 v0, v0, 0x1f

    .line 554
    .line 555
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->U:Lteam/opay/core/api/GraphQL$BvnBean;

    .line 556
    .line 557
    if-nez v1, :cond_23

    .line 558
    .line 559
    const/4 v1, 0x0

    .line 560
    goto :goto_23

    .line 561
    :cond_23
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$BvnBean;->hashCode()I

    .line 562
    .line 563
    .line 564
    move-result v1

    .line 565
    :goto_23
    add-int/2addr v0, v1

    .line 566
    mul-int/lit8 v0, v0, 0x1f

    .line 567
    .line 568
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->V:Ljava/lang/Boolean;

    .line 569
    .line 570
    if-nez v1, :cond_24

    .line 571
    .line 572
    const/4 v1, 0x0

    .line 573
    goto :goto_24

    .line 574
    :cond_24
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 575
    .line 576
    .line 577
    move-result v1

    .line 578
    :goto_24
    add-int/2addr v0, v1

    .line 579
    mul-int/lit8 v0, v0, 0x1f

    .line 580
    .line 581
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->W:Ljava/lang/Boolean;

    .line 582
    .line 583
    if-nez v1, :cond_25

    .line 584
    .line 585
    const/4 v1, 0x0

    .line 586
    goto :goto_25

    .line 587
    :cond_25
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 588
    .line 589
    .line 590
    move-result v1

    .line 591
    :goto_25
    add-int/2addr v0, v1

    .line 592
    mul-int/lit8 v0, v0, 0x1f

    .line 593
    .line 594
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->X:Lteam/opay/core/api/GraphQL$KycUpgradeInfo;

    .line 595
    .line 596
    if-nez v1, :cond_26

    .line 597
    .line 598
    const/4 v1, 0x0

    .line 599
    goto :goto_26

    .line 600
    :cond_26
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$KycUpgradeInfo;->hashCode()I

    .line 601
    .line 602
    .line 603
    move-result v1

    .line 604
    :goto_26
    add-int/2addr v0, v1

    .line 605
    mul-int/lit8 v0, v0, 0x1f

    .line 606
    .line 607
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->Y:Ljava/lang/String;

    .line 608
    .line 609
    if-nez v1, :cond_27

    .line 610
    .line 611
    const/4 v1, 0x0

    .line 612
    goto :goto_27

    .line 613
    :cond_27
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 614
    .line 615
    .line 616
    move-result v1

    .line 617
    :goto_27
    add-int/2addr v0, v1

    .line 618
    mul-int/lit8 v0, v0, 0x1f

    .line 619
    .line 620
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->Z:Ljava/util/List;

    .line 621
    .line 622
    if-nez v1, :cond_28

    .line 623
    .line 624
    const/4 v1, 0x0

    .line 625
    goto :goto_28

    .line 626
    :cond_28
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 627
    .line 628
    .line 629
    move-result v1

    .line 630
    :goto_28
    add-int/2addr v0, v1

    .line 631
    mul-int/lit8 v0, v0, 0x1f

    .line 632
    .line 633
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserProfile;->a0:Ljava/lang/String;

    .line 634
    .line 635
    if-nez v1, :cond_29

    .line 636
    .line 637
    goto :goto_29

    .line 638
    :cond_29
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 639
    .line 640
    .line 641
    move-result v2

    .line 642
    :goto_29
    add-int/2addr v0, v2

    .line 643
    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserProfile;->J:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j()Lteam/opay/core/api/GraphQL$BvnBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserProfile;->U:Lteam/opay/core/api/GraphQL$BvnBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserProfile;->y:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserProfile;->x:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final m()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$ChannelInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserProfile;->Z:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserProfile;->E:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final o()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserProfile;->w:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserProfile;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserProfile;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserProfile;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final s()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/core/api/GraphQL$UserProfile;->p:Z

    .line 2
    .line 3
    return v0
.end method

.method public final t()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserProfile;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 55
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lteam/opay/core/api/GraphQL$UserProfile;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, v0, Lteam/opay/core/api/GraphQL$UserProfile;->b:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, v0, Lteam/opay/core/api/GraphQL$UserProfile;->c:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, v0, Lteam/opay/core/api/GraphQL$UserProfile;->d:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, v0, Lteam/opay/core/api/GraphQL$UserProfile;->e:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, v0, Lteam/opay/core/api/GraphQL$UserProfile;->f:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v7, v0, Lteam/opay/core/api/GraphQL$UserProfile;->g:Lteam/opay/core/api/GraphQL$Gender;

    .line 16
    .line 17
    iget-object v8, v0, Lteam/opay/core/api/GraphQL$UserProfile;->h:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v9, v0, Lteam/opay/core/api/GraphQL$UserProfile;->i:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v10, v0, Lteam/opay/core/api/GraphQL$UserProfile;->j:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v11, v0, Lteam/opay/core/api/GraphQL$UserProfile;->k:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v12, v0, Lteam/opay/core/api/GraphQL$UserProfile;->l:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v13, v0, Lteam/opay/core/api/GraphQL$UserProfile;->m:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v14, v0, Lteam/opay/core/api/GraphQL$UserProfile;->n:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserProfile;->o:Ljava/lang/String;

    .line 32
    .line 33
    move-object/from16 v16, v15

    .line 34
    .line 35
    iget-boolean v15, v0, Lteam/opay/core/api/GraphQL$UserProfile;->p:Z

    .line 36
    .line 37
    move/from16 v17, v15

    .line 38
    .line 39
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserProfile;->q:Ljava/lang/String;

    .line 40
    .line 41
    move-object/from16 v18, v15

    .line 42
    .line 43
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserProfile;->r:Ljava/lang/String;

    .line 44
    .line 45
    move-object/from16 v19, v15

    .line 46
    .line 47
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserProfile;->s:Ljava/lang/String;

    .line 48
    .line 49
    move-object/from16 v20, v15

    .line 50
    .line 51
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserProfile;->t:Ljava/lang/Boolean;

    .line 52
    .line 53
    move-object/from16 v21, v15

    .line 54
    .line 55
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserProfile;->u:Ljava/lang/String;

    .line 56
    .line 57
    move-object/from16 v22, v15

    .line 58
    .line 59
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserProfile;->v:Ljava/lang/String;

    .line 60
    .line 61
    move-object/from16 v23, v15

    .line 62
    .line 63
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserProfile;->w:Ljava/lang/String;

    .line 64
    .line 65
    move-object/from16 v24, v15

    .line 66
    .line 67
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserProfile;->x:Ljava/lang/Boolean;

    .line 68
    .line 69
    move-object/from16 v25, v15

    .line 70
    .line 71
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserProfile;->y:Ljava/lang/Boolean;

    .line 72
    .line 73
    move-object/from16 v26, v15

    .line 74
    .line 75
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserProfile;->z:Ljava/lang/String;

    .line 76
    .line 77
    move-object/from16 v27, v15

    .line 78
    .line 79
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserProfile;->A:Ljava/lang/String;

    .line 80
    .line 81
    move-object/from16 v28, v15

    .line 82
    .line 83
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserProfile;->B:Ljava/lang/String;

    .line 84
    .line 85
    move-object/from16 v29, v15

    .line 86
    .line 87
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserProfile;->C:Ljava/lang/String;

    .line 88
    .line 89
    move-object/from16 v30, v15

    .line 90
    .line 91
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserProfile;->D:Ljava/lang/String;

    .line 92
    .line 93
    move-object/from16 v31, v15

    .line 94
    .line 95
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserProfile;->E:Ljava/lang/String;

    .line 96
    .line 97
    move-object/from16 v32, v15

    .line 98
    .line 99
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserProfile;->F:Ljava/lang/String;

    .line 100
    .line 101
    move-object/from16 v33, v15

    .line 102
    .line 103
    iget-boolean v15, v0, Lteam/opay/core/api/GraphQL$UserProfile;->G:Z

    .line 104
    .line 105
    move/from16 v34, v15

    .line 106
    .line 107
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserProfile;->H:Ljava/lang/String;

    .line 108
    .line 109
    move-object/from16 v35, v15

    .line 110
    .line 111
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserProfile;->I:Ljava/lang/String;

    .line 112
    .line 113
    move-object/from16 v36, v15

    .line 114
    .line 115
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserProfile;->J:Ljava/lang/String;

    .line 116
    .line 117
    move-object/from16 v37, v15

    .line 118
    .line 119
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserProfile;->K:Ljava/lang/String;

    .line 120
    .line 121
    move-object/from16 v38, v15

    .line 122
    .line 123
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserProfile;->L:Lteam/opay/core/api/GraphQL$AgentUpgrade;

    .line 124
    .line 125
    move-object/from16 v39, v15

    .line 126
    .line 127
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserProfile;->M:Lteam/opay/core/api/GraphQL$KycUpload;

    .line 128
    .line 129
    move-object/from16 v40, v15

    .line 130
    .line 131
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserProfile;->N:Ljava/lang/String;

    .line 132
    .line 133
    move-object/from16 v41, v15

    .line 134
    .line 135
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserProfile;->O:Ljava/lang/String;

    .line 136
    .line 137
    move-object/from16 v42, v15

    .line 138
    .line 139
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserProfile;->P:Ljava/lang/String;

    .line 140
    .line 141
    move-object/from16 v43, v15

    .line 142
    .line 143
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserProfile;->Q:Ljava/lang/String;

    .line 144
    .line 145
    move-object/from16 v44, v15

    .line 146
    .line 147
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserProfile;->R:Ljava/lang/String;

    .line 148
    .line 149
    move-object/from16 v45, v15

    .line 150
    .line 151
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserProfile;->S:Ljava/lang/String;

    .line 152
    .line 153
    move-object/from16 v46, v15

    .line 154
    .line 155
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserProfile;->T:Ljava/lang/String;

    .line 156
    .line 157
    move-object/from16 v47, v15

    .line 158
    .line 159
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserProfile;->U:Lteam/opay/core/api/GraphQL$BvnBean;

    .line 160
    .line 161
    move-object/from16 v48, v15

    .line 162
    .line 163
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserProfile;->V:Ljava/lang/Boolean;

    .line 164
    .line 165
    move-object/from16 v49, v15

    .line 166
    .line 167
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserProfile;->W:Ljava/lang/Boolean;

    .line 168
    .line 169
    move-object/from16 v50, v15

    .line 170
    .line 171
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserProfile;->X:Lteam/opay/core/api/GraphQL$KycUpgradeInfo;

    .line 172
    .line 173
    move-object/from16 v51, v15

    .line 174
    .line 175
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserProfile;->Y:Ljava/lang/String;

    .line 176
    .line 177
    move-object/from16 v52, v15

    .line 178
    .line 179
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserProfile;->Z:Ljava/util/List;

    .line 180
    .line 181
    move-object/from16 v53, v15

    .line 182
    .line 183
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserProfile;->a0:Ljava/lang/String;

    .line 184
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .line 189
    .line 190
    move-object/from16 v54, v15

    .line 191
    .line 192
    const-string v15, "UserProfile(id="

    .line 193
    .line 194
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string v1, ", avatar="

    .line 201
    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    const-string v1, ", phone="

    .line 209
    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    const-string v1, ", firstName="

    .line 217
    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    const-string v1, ", middleName="

    .line 225
    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    const-string v1, ", surname="

    .line 233
    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    const-string v1, ", gender="

    .line 241
    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    const-string v1, ", dob="

    .line 249
    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    const-string v1, ", state="

    .line 257
    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    const-string v1, ", address="

    .line 265
    .line 266
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    const-string v1, ", email="

    .line 273
    .line 274
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    const-string v1, ", emailToVerify="

    .line 281
    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    const-string v1, ", kycLevel="

    .line 289
    .line 290
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    const-string v1, ", role="

    .line 297
    .line 298
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    const-string v1, ", userToken="

    .line 305
    .line 306
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    move-object/from16 v1, v16

    .line 310
    .line 311
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    const-string v1, ", emailVerified="

    .line 315
    .line 316
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    move/from16 v1, v17

    .line 320
    .line 321
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    const-string v1, ", validID="

    .line 325
    .line 326
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    move-object/from16 v1, v18

    .line 330
    .line 331
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    const-string v1, ", utilityBill="

    .line 335
    .line 336
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    move-object/from16 v1, v19

    .line 340
    .line 341
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    const-string v1, ", picture="

    .line 345
    .line 346
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    move-object/from16 v1, v20

    .line 350
    .line 351
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    const-string v1, ", isFinish="

    .line 355
    .line 356
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    move-object/from16 v1, v21

    .line 360
    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    const-string v1, ", stateCode="

    .line 365
    .line 366
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    move-object/from16 v1, v22

    .line 370
    .line 371
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    const-string v1, ", lgaCode="

    .line 375
    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    move-object/from16 v1, v23

    .line 380
    .line 381
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    const-string v1, ", cityCode="

    .line 385
    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    move-object/from16 v1, v24

    .line 390
    .line 391
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    const-string v1, ", canUpdateName="

    .line 395
    .line 396
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    move-object/from16 v1, v25

    .line 400
    .line 401
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    const-string v1, ", canUpdateDobAndGender="

    .line 405
    .line 406
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    move-object/from16 v1, v26

    .line 410
    .line 411
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    const-string v1, ", referrerCode="

    .line 415
    .line 416
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    move-object/from16 v1, v27

    .line 420
    .line 421
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    const-string v1, ", lastVisitTime="

    .line 425
    .line 426
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    move-object/from16 v1, v28

    .line 430
    .line 431
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    const-string v1, ", avatarUrl="

    .line 435
    .line 436
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    move-object/from16 v1, v29

    .line 440
    .line 441
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    .line 443
    .line 444
    const-string v1, ", avatarThumbnailUrl="

    .line 445
    .line 446
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    move-object/from16 v1, v30

    .line 450
    .line 451
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    .line 453
    .line 454
    const-string v1, ", nickName="

    .line 455
    .line 456
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    move-object/from16 v1, v31

    .line 460
    .line 461
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    const-string v1, ", city="

    .line 465
    .line 466
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    move-object/from16 v1, v32

    .line 470
    .line 471
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    const-string v1, ", aggregatorId="

    .line 475
    .line 476
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    move-object/from16 v1, v33

    .line 480
    .line 481
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    const-string v1, ", isSetPayPin="

    .line 485
    .line 486
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    move/from16 v1, v34

    .line 490
    .line 491
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    const-string v1, ", createDate="

    .line 495
    .line 496
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    move-object/from16 v1, v35

    .line 500
    .line 501
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    const-string v1, ", lga="

    .line 505
    .line 506
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    move-object/from16 v1, v36

    .line 510
    .line 511
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    const-string v1, ", businessName="

    .line 515
    .line 516
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    move-object/from16 v1, v37

    .line 520
    .line 521
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    .line 523
    .line 524
    const-string v1, ", referralCode="

    .line 525
    .line 526
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    .line 528
    .line 529
    move-object/from16 v1, v38

    .line 530
    .line 531
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    .line 533
    .line 534
    const-string v1, ", agentUpgrade="

    .line 535
    .line 536
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    .line 538
    .line 539
    move-object/from16 v1, v39

    .line 540
    .line 541
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    const-string v1, ", kycUpload="

    .line 545
    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    .line 548
    .line 549
    move-object/from16 v1, v40

    .line 550
    .line 551
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 552
    .line 553
    .line 554
    const-string v1, ", agentRefererCode="

    .line 555
    .line 556
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    .line 558
    .line 559
    move-object/from16 v1, v41

    .line 560
    .line 561
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    .line 563
    .line 564
    const-string v1, ", posLevelIconUrl="

    .line 565
    .line 566
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    .line 568
    .line 569
    move-object/from16 v1, v42

    .line 570
    .line 571
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    .line 573
    .line 574
    const-string v1, ", posLevelFileIconUrl="

    .line 575
    .line 576
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    .line 578
    .line 579
    move-object/from16 v1, v43

    .line 580
    .line 581
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    .line 583
    .line 584
    const-string v1, ", agentLevel="

    .line 585
    .line 586
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    .line 588
    .line 589
    move-object/from16 v1, v44

    .line 590
    .line 591
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    .line 593
    .line 594
    const-string v1, ", upgradeStatus="

    .line 595
    .line 596
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    .line 598
    .line 599
    move-object/from16 v1, v45

    .line 600
    .line 601
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    .line 603
    .line 604
    const-string v1, ", upgradeVersion="

    .line 605
    .line 606
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    .line 608
    .line 609
    move-object/from16 v1, v46

    .line 610
    .line 611
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    .line 613
    .line 614
    const-string v1, ", upgradeStyle="

    .line 615
    .line 616
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    .line 618
    .line 619
    move-object/from16 v1, v47

    .line 620
    .line 621
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    .line 623
    .line 624
    const-string v1, ", bvn="

    .line 625
    .line 626
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    .line 628
    .line 629
    move-object/from16 v1, v48

    .line 630
    .line 631
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 632
    .line 633
    .line 634
    const-string v1, ", isNewOpayUser="

    .line 635
    .line 636
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    .line 638
    .line 639
    move-object/from16 v1, v49

    .line 640
    .line 641
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 642
    .line 643
    .line 644
    const-string v1, ", isSetSecret="

    .line 645
    .line 646
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    .line 648
    .line 649
    move-object/from16 v1, v50

    .line 650
    .line 651
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 652
    .line 653
    .line 654
    const-string v1, ", kycUpgradeInfo="

    .line 655
    .line 656
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    .line 658
    .line 659
    move-object/from16 v1, v51

    .line 660
    .line 661
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 662
    .line 663
    .line 664
    const-string v1, ", kycStatus="

    .line 665
    .line 666
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    .line 668
    .line 669
    move-object/from16 v1, v52

    .line 670
    .line 671
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    .line 673
    .line 674
    const-string v1, ", channelInfoList="

    .line 675
    .line 676
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    .line 678
    .line 679
    move-object/from16 v1, v53

    .line 680
    .line 681
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 682
    .line 683
    .line 684
    const-string v1, ", bankName="

    .line 685
    .line 686
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    .line 688
    .line 689
    move-object/from16 v1, v54

    .line 690
    .line 691
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    .line 693
    .line 694
    const-string v1, ")"

    .line 695
    .line 696
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    .line 698
    .line 699
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 700
    .line 701
    .line 702
    move-result-object v0

    .line 703
    return-object v0
.end method

.method public final u()Lteam/opay/core/api/GraphQL$Gender;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserProfile;->g:Lteam/opay/core/api/GraphQL$Gender;

    .line 2
    .line 3
    return-object v0
.end method

.method public final v()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserProfile;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final w()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserProfile;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final x()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserProfile;->Y:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final y()Lteam/opay/core/api/GraphQL$KycUpgradeInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserProfile;->X:Lteam/opay/core/api/GraphQL$KycUpgradeInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final z()Lteam/opay/core/api/GraphQL$KycUpload;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserProfile;->M:Lteam/opay/core/api/GraphQL$KycUpload;

    .line 2
    .line 3
    return-object v0
.end method
