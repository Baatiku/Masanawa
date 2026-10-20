.class public final Lteam/opay/pay/oshare/inter/impl/TwitterImpl;
.super Ljava/lang/Object;
.source "TwitterImpl.kt"

# interfaces
.implements Lteam/opay/pay/oshare/inter/IShare;


# annotations
.annotation build Lcom/google/auto/service/AutoService;
    value = {
        Lteam/opay/pay/oshare/inter/IShare;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/oshare/inter/impl/TwitterImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0001\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J+\u0010\u000b\u001a\u00020\n2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J)\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u000c\u00a8\u0006\u0014"
    }
    d2 = {
        "Lteam/opay/pay/oshare/inter/impl/TwitterImpl;",
        "Lteam/opay/pay/oshare/inter/IShare;",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "context",
        "Lteam/opay/pay/oshare/api/OShareData;",
        "data",
        "Lhfa;",
        "callback",
        "",
        "shareToTwitter",
        "(Landroid/content/Context;Lteam/opay/pay/oshare/api/OShareData;Lhfa;)V",
        "Lteam/opay/pay/oshare/api/OSharePlatform;",
        "sharePlatformPlatform",
        "",
        "match",
        "(Lteam/opay/pay/oshare/api/OSharePlatform;)Z",
        "share",
        "Companion",
        "oshare_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lteam/opay/pay/oshare/inter/impl/TwitterImpl$Companion;

.field public static final TWITTER_PACKAGE_NAME:Ljava/lang/String; = "com.twitter.android"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/oshare/inter/impl/TwitterImpl$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/oshare/inter/impl/TwitterImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/oshare/inter/impl/TwitterImpl;->Companion:Lteam/opay/pay/oshare/inter/impl/TwitterImpl$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final shareToTwitter(Landroid/content/Context;Lteam/opay/pay/oshare/api/OShareData;Lhfa;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lteam/opay/pay/oshare/api/OShareData;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p3, 0x0

    .line 21
    :goto_0
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    if-eqz p1, :cond_3

    .line 25
    .line 26
    sget-object p3, Lifa;->a:Lifa;

    .line 27
    .line 28
    const-string v0, "com.twitter.android"

    .line 29
    .line 30
    invoke-virtual {p0, p2, v0}, Lteam/opay/pay/oshare/inter/impl/TwitterImpl;->packageNameOrDefault(Lteam/opay/pay/oshare/api/OShareData;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {p3, p1, v1}, Lifa;->f(Landroid/content/Context;Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    sget-object p3, Lref;->a:Lref;

    .line 41
    .line 42
    invoke-virtual {p2}, Lteam/opay/pay/oshare/api/OShareData;->getContent()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p2}, Lteam/opay/pay/oshare/api/OShareData;->getContentUrl()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p3, v0, p2}, Lref;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_1
    invoke-virtual {p2}, Lteam/opay/pay/oshare/api/OShareData;->getImagePath()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-nez v1, :cond_2

    .line 67
    .line 68
    invoke-virtual {p0, p2, v0}, Lteam/opay/pay/oshare/inter/impl/TwitterImpl;->packageNameOrDefault(Lteam/opay/pay/oshare/api/OShareData;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {p3, p1, p2, v0}, Lifa;->h(Landroid/content/Context;Lteam/opay/pay/oshare/api/OShareData;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    invoke-virtual {p0, p2, v0}, Lteam/opay/pay/oshare/inter/impl/TwitterImpl;->packageNameOrDefault(Lteam/opay/pay/oshare/api/OShareData;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {p3, p1, p2, v0}, Lifa;->g(Landroid/content/Context;Lteam/opay/pay/oshare/api/OShareData;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public match(Lteam/opay/pay/oshare/api/OSharePlatform;)Z
    .locals 1
    .param p1    # Lteam/opay/pay/oshare/api/OSharePlatform;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "sharePlatformPlatform"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lteam/opay/pay/oshare/api/OSharePlatform;->Twitter:Lteam/opay/pay/oshare/api/OSharePlatform;

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    return p1
.end method

.method public packageNameOrDefault(Lteam/opay/pay/oshare/api/OShareData;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Lteam/opay/pay/oshare/api/OShareData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "default"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, p1, p2}, Lteam/opay/pay/oshare/inter/IShare$b;->a(Lteam/opay/pay/oshare/inter/IShare;Lteam/opay/pay/oshare/api/OShareData;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public share(Landroid/content/Context;Lteam/opay/pay/oshare/api/OShareData;Lhfa;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/oshare/api/OShareData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lhfa;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "data"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lteam/opay/pay/oshare/api/OShareData;->getPlatName()Lteam/opay/pay/oshare/api/OSharePlatform;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/pay/oshare/inter/impl/TwitterImpl;->shareToTwitter(Landroid/content/Context;Lteam/opay/pay/oshare/api/OShareData;Lhfa;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
