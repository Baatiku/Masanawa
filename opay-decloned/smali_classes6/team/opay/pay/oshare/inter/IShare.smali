.class public interface abstract Lteam/opay/pay/oshare/inter/IShare;
.super Ljava/lang/Object;
.source "IShare.kt"

# interfaces
.implements Lteam/opay/KeepNoProguard;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/oshare/inter/IShare$b;,
        Lteam/opay/pay/oshare/inter/IShare$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008`\u0018\u0000 \u00142\u00020\u0001:\u0001\u0015J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J)\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH&\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001f\u0010\u0012\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0016"
    }
    d2 = {
        "Lteam/opay/pay/oshare/inter/IShare;",
        "Lteam/opay/KeepNoProguard;",
        "Lteam/opay/pay/oshare/api/OSharePlatform;",
        "sharePlatformPlatform",
        "",
        "match",
        "(Lteam/opay/pay/oshare/api/OSharePlatform;)Z",
        "Landroid/content/Context;",
        "context",
        "Lteam/opay/pay/oshare/api/OShareData;",
        "data",
        "Lhfa;",
        "callback",
        "",
        "share",
        "(Landroid/content/Context;Lteam/opay/pay/oshare/api/OShareData;Lhfa;)V",
        "",
        "default",
        "packageNameOrDefault",
        "(Lteam/opay/pay/oshare/api/OShareData;Ljava/lang/String;)Ljava/lang/String;",
        "Companion",
        "a",
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
.field public static final Companion:Lteam/opay/pay/oshare/inter/IShare$a;

.field public static final ISHARE_TAG:Ljava/lang/String; = "IShare"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/oshare/inter/IShare$a;->a:Lteam/opay/pay/oshare/inter/IShare$a;

    .line 2
    .line 3
    sput-object v0, Lteam/opay/pay/oshare/inter/IShare;->Companion:Lteam/opay/pay/oshare/inter/IShare$a;

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public abstract match(Lteam/opay/pay/oshare/api/OSharePlatform;)Z
    .param p1    # Lteam/opay/pay/oshare/api/OSharePlatform;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract packageNameOrDefault(Lteam/opay/pay/oshare/api/OShareData;Ljava/lang/String;)Ljava/lang/String;
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
.end method

.method public abstract share(Landroid/content/Context;Lteam/opay/pay/oshare/api/OShareData;Lhfa;)V
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
.end method
