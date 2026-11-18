.class public final Lteam/opay/pay/oshare/inter/impl/FacebookImpl;
.super Ljava/lang/Object;
.source "FacebookImpl.kt"

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
        Lteam/opay/pay/oshare/inter/impl/FacebookImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0001\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J+\u0010\u000b\u001a\u00020\n2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\'\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\'\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0010J\u0017\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J)\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u000cJ%\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0017\u0010\u0010\u00a8\u0006\u0019"
    }
    d2 = {
        "Lteam/opay/pay/oshare/inter/impl/FacebookImpl;",
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
        "shareToFacebook",
        "(Landroid/content/Context;Lteam/opay/pay/oshare/api/OShareData;Lhfa;)V",
        "",
        "packageName",
        "shareText",
        "(Landroid/content/Context;Lteam/opay/pay/oshare/api/OShareData;Ljava/lang/String;)V",
        "shareImage",
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
.field public static final Companion:Lteam/opay/pay/oshare/inter/impl/FacebookImpl$Companion;

.field public static final FACEBOOK_PACKAGE_NAME:Ljava/lang/String; = "com.facebook.katana"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/oshare/inter/impl/FacebookImpl$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/oshare/inter/impl/FacebookImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/oshare/inter/impl/FacebookImpl;->Companion:Lteam/opay/pay/oshare/inter/impl/FacebookImpl$Companion;

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

.method private final shareImage(Landroid/content/Context;Lteam/opay/pay/oshare/api/OShareData;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lifa;->a:Lifa;

    .line 2
    .line 3
    invoke-virtual {p2}, Lteam/opay/pay/oshare/api/OShareData;->getImagePath()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, p1, v1}, Lifa;->c(Landroid/content/Context;Ljava/lang/String;)Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lteam/opay/pay/oshare/inter/impl/FacebookImpl$a;

    .line 12
    .line 13
    invoke-direct {v1, p3, p2, p1}, Lteam/opay/pay/oshare/inter/impl/FacebookImpl$a;-><init>(Ljava/lang/String;Lteam/opay/pay/oshare/api/OShareData;Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Lvfa;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private final shareText(Landroid/content/Context;Lteam/opay/pay/oshare/api/OShareData;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.intent.action.SEND"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    const-string p3, "text/plain"

    .line 12
    .line 13
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    const-string p3, "android.intent.extra.TEXT"

    .line 17
    .line 18
    invoke-virtual {p2}, Lteam/opay/pay/oshare/api/OShareData;->getContent()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    const/high16 p2, 0x10000000

    .line 26
    .line 27
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    const-string p2, "share text"

    .line 31
    .line 32
    invoke-static {v0, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private final shareToFacebook(Landroid/content/Context;Lteam/opay/pay/oshare/api/OShareData;Lhfa;)V
    .locals 2

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    sget-object v0, Lffa;->b:Lffa;

    .line 4
    .line 5
    invoke-virtual {p2}, Lteam/opay/pay/oshare/api/OShareData;->getPlatName()Lteam/opay/pay/oshare/api/OSharePlatform;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1, p3}, Lffa;->a(Lteam/opay/pay/oshare/api/OSharePlatform;Lhfa;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    if-eqz p1, :cond_1

    .line 13
    .line 14
    const-string p3, "com.facebook.katana"

    .line 15
    .line 16
    invoke-virtual {p0, p2, p3}, Lteam/opay/pay/oshare/inter/impl/FacebookImpl;->packageNameOrDefault(Lteam/opay/pay/oshare/api/OShareData;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/pay/oshare/inter/impl/FacebookImpl;->share(Landroid/content/Context;Lteam/opay/pay/oshare/api/OShareData;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_1
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
    sget-object v0, Lteam/opay/pay/oshare/api/OSharePlatform;->Facebook:Lteam/opay/pay/oshare/api/OSharePlatform;

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
    .locals 2
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

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "share platform name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lteam/opay/pay/oshare/api/OShareData;->getPlatName()Lteam/opay/pay/oshare/api/OSharePlatform;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/pay/oshare/inter/impl/FacebookImpl;->shareToFacebook(Landroid/content/Context;Lteam/opay/pay/oshare/api/OShareData;Lhfa;)V

    return-void
.end method

.method public final share(Landroid/content/Context;Lteam/opay/pay/oshare/api/OShareData;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/oshare/api/OShareData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "data"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "packageName"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v1, Lifa;->a:Lifa;

    invoke-virtual {v1, p1, p3}, Lifa;->f(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    sget p2, Lteam/opay/pay/oshare/R$string;->oshare_app_not_installed:I

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const-string v1, "Facebook"

    aput-object v1, p3, v0

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 7
    :cond_0
    invoke-virtual {p2}, Lteam/opay/pay/oshare/api/OShareData;->getImagePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/pay/oshare/inter/impl/FacebookImpl;->shareText(Landroid/content/Context;Lteam/opay/pay/oshare/api/OShareData;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/pay/oshare/inter/impl/FacebookImpl;->shareImage(Landroid/content/Context;Lteam/opay/pay/oshare/api/OShareData;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
