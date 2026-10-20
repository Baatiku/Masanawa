.class public final Lteam/opay/swarmfoundation/webview/OWebJSManager;
.super Ljava/lang/Object;
.source "OWebJSManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/swarmfoundation/webview/OWebJSManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0005\u0018\u0000 \u00042\u00020\u0001:\u0001\u0005B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0006"
    }
    d2 = {
        "Lteam/opay/swarmfoundation/webview/OWebJSManager;",
        "",
        "<init>",
        "()V",
        "a",
        "Companion",
        "swarmfoundation_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lteam/opay/swarmfoundation/webview/OWebJSManager$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lteam/opay/swarmfoundation/webview/IWebDelegate;",
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
    new-instance v0, Lteam/opay/swarmfoundation/webview/OWebJSManager$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/swarmfoundation/webview/OWebJSManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/swarmfoundation/webview/OWebJSManager;->a:Lteam/opay/swarmfoundation/webview/OWebJSManager$Companion;

    .line 8
    .line 9
    const-class v0, Lteam/opay/swarmfoundation/webview/IWebDelegate;

    .line 10
    .line 11
    sput-object v0, Lteam/opay/swarmfoundation/webview/OWebJSManager;->b:Ljava/lang/Class;

    .line 12
    .line 13
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

.method public static final synthetic a()Ljava/lang/Class;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/swarmfoundation/webview/OWebJSManager;->b:Ljava/lang/Class;

    .line 2
    .line 3
    return-object v0
.end method
