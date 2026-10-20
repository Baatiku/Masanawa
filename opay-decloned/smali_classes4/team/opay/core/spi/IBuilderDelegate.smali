.class public abstract Lteam/opay/core/spi/IBuilderDelegate;
.super Ljava/lang/Object;
.source "IBuilderDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/core/spi/IBuilderDelegate$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\'\u0018\u0000 \u000c2\u00020\u0001:\u0001\u000cB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\n\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&J\u0016\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t\u0018\u00010\u0007H&J\n\u0010\n\u001a\u0004\u0018\u00010\u000bH&\u00a8\u0006\r"
    }
    d2 = {
        "Lteam/opay/core/spi/IBuilderDelegate;",
        "",
        "<init>",
        "()V",
        "getHttpDns",
        "Lokhttp3/Dns;",
        "getSSLSocketFactory",
        "Lkotlin/Pair;",
        "Ljavax/net/ssl/SSLSocketFactory;",
        "Ljavax/net/ssl/X509TrustManager;",
        "getHostnameVerifier",
        "Ljavax/net/ssl/HostnameVerifier;",
        "Companion",
        "common-http_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lteam/opay/core/annotation/Keep;
.end annotation


# static fields
.field public static final Companion:Lteam/opay/core/spi/IBuilderDelegate$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final delegate$delegate:Lid8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lid8<",
            "Lteam/opay/core/spi/IBuilderDelegate;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/core/spi/IBuilderDelegate$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/core/spi/IBuilderDelegate$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/core/spi/IBuilderDelegate;->Companion:Lteam/opay/core/spi/IBuilderDelegate$Companion;

    .line 8
    .line 9
    new-instance v0, Ll77;

    .line 10
    .line 11
    invoke-direct {v0}, Ll77;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lteam/opay/core/spi/IBuilderDelegate;->delegate$delegate:Lid8;

    .line 19
    .line 20
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

.method public static synthetic a()Lteam/opay/core/spi/IBuilderDelegate;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/core/spi/IBuilderDelegate;->delegate_delegate$lambda$0()Lteam/opay/core/spi/IBuilderDelegate;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic access$getDelegate$delegate$cp()Lid8;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/core/spi/IBuilderDelegate;->delegate$delegate:Lid8;

    .line 2
    .line 3
    return-object v0
.end method

.method private static final delegate_delegate$lambda$0()Lteam/opay/core/spi/IBuilderDelegate;
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 2
    .line 3
    const-class v1, Lteam/opay/core/spi/IBuilderDelegate;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lteam/opay/core/spi/IBuilderDelegate;

    .line 10
    .line 11
    return-object v0
.end method


# virtual methods
.method public abstract getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getHttpDns()Lokhttp3/Dns;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getSSLSocketFactory()Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljavax/net/ssl/SSLSocketFactory;",
            "Ljavax/net/ssl/X509TrustManager;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
