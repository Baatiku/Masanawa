.class public final Lteam/opay/risk/RiskHelper;
.super Ljava/lang/Object;
.source "RiskHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\r\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\r\u0010\u000c\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000c\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u0003J\u001d\u0010\u0010\u001a\u00020\u00062\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000eH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0003J\u0017\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0008J\u000f\u0010\u0016\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0003J\u000f\u0010\u0019\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u0003R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u001f\u001a\u00020\u001c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0016\u0010\"\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0016\u0010&\u001a\u00020#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010%R\u0016\u0010*\u001a\u00020\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010)\u00a8\u0006+"
    }
    d2 = {
        "Lteam/opay/risk/RiskHelper;",
        "",
        "<init>",
        "()V",
        "Landroid/app/Application;",
        "context",
        "",
        "m",
        "(Landroid/app/Application;)V",
        "",
        "n",
        "()Ljava/lang/String;",
        "o",
        "u",
        "Lkotlin/Function0;",
        "callBack",
        "r",
        "(Lkotlin/jvm/functions/Function0;)V",
        "t",
        "application",
        "s",
        "",
        "w",
        "()Z",
        "l",
        "q",
        "b",
        "Landroid/app/Application;",
        "Lteam/opay/risk/impl/TongDunImpl;",
        "c",
        "Lteam/opay/risk/impl/TongDunImpl;",
        "tongDunImpl",
        "d",
        "Z",
        "isInit",
        "",
        "e",
        "J",
        "lastNetworkChangeTime",
        "Landroid/os/Handler;",
        "f",
        "Landroid/os/Handler;",
        "handler",
        "risk_release"
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
.field public static final a:Lteam/opay/risk/RiskHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static b:Landroid/app/Application;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public static final c:Lteam/opay/risk/impl/TongDunImpl;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static d:Z

.field public static e:J

.field public static f:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lteam/opay/risk/RiskHelper;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/risk/RiskHelper;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lteam/opay/risk/RiskHelper;->a:Lteam/opay/risk/RiskHelper;

    .line 7
    .line 8
    new-instance v0, Lteam/opay/risk/impl/TongDunImpl;

    .line 9
    .line 10
    invoke-direct {v0}, Lteam/opay/risk/impl/TongDunImpl;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lteam/opay/risk/RiskHelper;->c:Lteam/opay/risk/impl/TongDunImpl;

    .line 14
    .line 15
    new-instance v0, Landroid/os/Handler;

    .line 16
    .line 17
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Lxzc;

    .line 22
    .line 23
    invoke-direct {v2}, Lxzc;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lteam/opay/risk/RiskHelper;->f:Landroid/os/Handler;

    .line 30
    .line 31
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

.method public static synthetic a()V
    .locals 0

    .line 1
    invoke-static {}, Lteam/opay/risk/RiskHelper;->v()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Landroid/os/Message;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/risk/RiskHelper;->p(Landroid/os/Message;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic c(Lteam/opay/risk/RiskHelper;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/risk/RiskHelper;->l()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic d()Landroid/app/Application;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/risk/RiskHelper;->b:Landroid/app/Application;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic e()J
    .locals 2

    .line 1
    sget-wide v0, Lteam/opay/risk/RiskHelper;->e:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic f()Lteam/opay/risk/impl/TongDunImpl;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/risk/RiskHelper;->c:Lteam/opay/risk/impl/TongDunImpl;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic g(Lteam/opay/risk/RiskHelper;Landroid/app/Application;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/risk/RiskHelper;->s(Landroid/app/Application;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic h(Lteam/opay/risk/RiskHelper;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/risk/RiskHelper;->t()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic i(Lteam/opay/risk/RiskHelper;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/risk/RiskHelper;->u()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic j(J)V
    .locals 0

    .line 1
    sput-wide p0, Lteam/opay/risk/RiskHelper;->e:J

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic k(Lteam/opay/risk/RiskHelper;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/risk/RiskHelper;->w()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final p(Landroid/os/Message;)Z
    .locals 1

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget p0, p0, Landroid/os/Message;->what:I

    .line 7
    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    sget-object p0, Lteam/opay/risk/RiskHelper;->a:Lteam/opay/risk/RiskHelper;

    .line 11
    .line 12
    invoke-virtual {p0}, Lteam/opay/risk/RiskHelper;->q()V

    .line 13
    .line 14
    .line 15
    :cond_0
    const/4 p0, 0x1

    .line 16
    return p0
.end method

.method public static final v()V
    .locals 5

    .line 1
    sget-object v0, Lteam/opay/risk/RiskHelper;->b:Landroid/app/Application;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "connectivity"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    new-instance v1, Lteam/opay/risk/RiskHelper$c;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Lteam/opay/risk/RiskHelper$c;-><init>(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    sget-object v2, Lnp2;->a:Lnp2;

    .line 19
    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v4, "registerDefaultNetworkCallback ="

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v2, v3}, Lnp2;->g(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    instance-of v2, v0, Landroid/net/ConnectivityManager;

    .line 41
    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 45
    .line 46
    const/16 v3, 0x18

    .line 47
    .line 48
    if-lt v2, v3, :cond_1

    .line 49
    .line 50
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 51
    .line 52
    invoke-static {v0, v1}, Lbm9;->a(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    new-instance v2, Landroid/net/NetworkRequest$Builder;

    .line 57
    .line 58
    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 59
    .line 60
    .line 61
    const/16 v3, 0xc

    .line 62
    .line 63
    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 72
    .line 73
    invoke-virtual {v0, v2, v1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 74
    .line 75
    .line 76
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public final l()V
    .locals 4

    .line 1
    sget-object v0, Lnp2;->a:Lnp2;

    .line 2
    .line 3
    const-string v1, "\u5f00\u59cb\u53d1\u9001\u6d88\u606f"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lnp2;->g(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lteam/opay/risk/RiskHelper;->f:Landroid/os/Handler;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 12
    .line 13
    .line 14
    sget-object v0, Lteam/opay/risk/RiskHelper;->f:Landroid/os/Handler;

    .line 15
    .line 16
    const-wide/16 v2, 0x1388

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final m(Landroid/app/Application;)V
    .locals 4
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lteam/opay/risk/RiskHelper;->b:Landroid/app/Application;

    .line 7
    .line 8
    sget-object v0, Lnp2;->a:Lnp2;

    .line 9
    .line 10
    invoke-virtual {v0}, Lnp2;->c()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v3, "fetching url="

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lnp2;->g(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance v0, Lteam/opay/risk/RiskHelper$fetch$1;

    .line 35
    .line 36
    invoke-direct {v0, p1}, Lteam/opay/risk/RiskHelper$fetch$1;-><init>(Landroid/app/Application;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lteam/opay/risk/RiskHelper;->r(Lkotlin/jvm/functions/Function0;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final n()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/risk/RiskHelper;->c:Lteam/opay/risk/impl/TongDunImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/risk/impl/TongDunImpl;->j()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final o()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method public final q()V
    .locals 10

    .line 1
    sget-object v0, Lnp2;->a:Lnp2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lnp2;->b()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-interface {v1}, Lteam/opay/swarmfoundation/data/IDeviceDataGenerator;->getBlackbox()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v1, v2

    .line 16
    :goto_0
    invoke-virtual {v0}, Lnp2;->b()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    invoke-interface {v3}, Lteam/opay/swarmfoundation/data/IDeviceDataGenerator;->smBlackbox()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    move-object v8, v3

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move-object v8, v2

    .line 29
    :goto_1
    invoke-virtual {v0}, Lnp2;->b()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    invoke-interface {v3}, Lteam/opay/swarmfoundation/data/IUserDataGenerator;->uid()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    :cond_2
    move-object v6, v2

    .line 40
    if-nez v1, :cond_3

    .line 41
    .line 42
    const-string v2, ""

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_3
    move-object v2, v1

    .line 46
    :goto_2
    invoke-virtual {v0, v2}, Lnp2;->f(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-nez v2, :cond_4

    .line 51
    .line 52
    invoke-virtual {v0}, Lnp2;->a()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-lez v3, :cond_4

    .line 61
    .line 62
    move-object v1, v2

    .line 63
    :cond_4
    move-object v7, v1

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v2, "\u5f00\u59cb\u4e0a\u4f20\u8bbe\u5907\u4fe1\u606f blackbox="

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v2, " shumeiId="

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v2, " userId="

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Lnp2;->g(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    if-eqz v6, :cond_6

    .line 101
    .line 102
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-nez v1, :cond_5

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_5
    new-instance v1, Lteam/opay/risk/DeviceInfoReq;

    .line 110
    .line 111
    invoke-virtual {v0}, Lnp2;->b()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-interface {v2}, Lteam/opay/swarmfoundation/data/IDeviceDataGenerator;->deviceId()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    invoke-virtual {v0}, Lnp2;->b()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IDeviceDataGenerator;->platform()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v9

    .line 127
    move-object v4, v1

    .line 128
    invoke-direct/range {v4 .. v9}, Lteam/opay/risk/DeviceInfoReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    sget-object v0, Lteam/opay/risk/RiskHelper;->b:Landroid/app/Application;

    .line 132
    .line 133
    if-eqz v0, :cond_6

    .line 134
    .line 135
    sget-object v2, Lteam/opay/risk/a;->a:Lteam/opay/risk/a;

    .line 136
    .line 137
    invoke-virtual {v2, v0}, Lteam/opay/risk/a;->c(Landroid/content/Context;)Lwzc;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-interface {v0, v1}, Lwzc;->a(Lteam/opay/risk/DeviceInfoReq;)Lretrofit2/Call;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    new-instance v2, Lteam/opay/risk/RiskHelper$a;

    .line 146
    .line 147
    invoke-direct {v2, v1}, Lteam/opay/risk/RiskHelper$a;-><init>(Lteam/opay/risk/DeviceInfoReq;)V

    .line 148
    .line 149
    .line 150
    invoke-interface {v0, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 151
    .line 152
    .line 153
    :cond_6
    :goto_3
    return-void
.end method

.method public final r(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lteam/opay/risk/RiskHelper;->d:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 p1, 0x1

    .line 9
    sput-boolean p1, Lteam/opay/risk/RiskHelper;->d:Z

    .line 10
    .line 11
    return-void
.end method

.method public final s(Landroid/app/Application;)V
    .locals 2

    .line 1
    sget-object v0, Lnp2;->a:Lnp2;

    .line 2
    .line 3
    const-string v1, "startInitTongDunSDK"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lnp2;->g(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lteam/opay/risk/RiskHelper;->c:Lteam/opay/risk/impl/TongDunImpl;

    .line 9
    .line 10
    sget-object v1, Lteam/opay/risk/RiskHelper$initTongDunSDK$1;->INSTANCE:Lteam/opay/risk/RiskHelper$initTongDunSDK$1;

    .line 11
    .line 12
    invoke-virtual {v0, p1, v1}, Lteam/opay/risk/impl/TongDunImpl;->l(Landroid/app/Application;Lkotlin/jvm/functions/Function0;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final t()V
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/risk/RiskHelper;->b:Landroid/app/Application;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lteam/opay/risk/RiskHelper$b;

    .line 6
    .line 7
    invoke-direct {v1}, Lteam/opay/risk/RiskHelper$b;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final u()V
    .locals 4

    .line 1
    sget-object v0, Lteam/opay/risk/RiskHelper;->f:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lyzc;

    .line 4
    .line 5
    invoke-direct {v1}, Lyzc;-><init>()V

    .line 6
    .line 7
    .line 8
    const-wide/16 v2, 0x2710

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final w()Z
    .locals 2

    .line 1
    sget-object v0, Lnp2;->a:Lnp2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lnp2;->b()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v1}, Lteam/opay/swarmfoundation/data/IUserDataGenerator;->uid()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    invoke-virtual {v0}, Lnp2;->d()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    xor-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    return v0
.end method
