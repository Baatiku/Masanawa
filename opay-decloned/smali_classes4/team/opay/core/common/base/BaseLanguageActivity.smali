.class public abstract Lteam/opay/core/common/base/BaseLanguageActivity;
.super Lteam/opay/core/common/base/HiltActivity;
.source "BaseLanguageActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008&\u0018\u00002\u00020\u0001B\u0011\u0012\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\t\u0008\u0016\u00a2\u0006\u0004\u0008\u0004\u0010\u0006J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0014\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001f\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lteam/opay/core/common/base/BaseLanguageActivity;",
        "Lteam/opay/core/common/base/HiltActivity;",
        "",
        "id",
        "<init>",
        "(I)V",
        "()V",
        "Landroid/content/Context;",
        "context",
        "",
        "attachBaseContext",
        "(Landroid/content/Context;)V",
        "Ljava/util/Locale;",
        "newLocale",
        "Landroid/content/ContextWrapper;",
        "d0",
        "(Landroid/content/Context;Ljava/util/Locale;)Landroid/content/ContextWrapper;",
        "l",
        "I",
        "common-base_release"
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
.field public final l:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lteam/opay/core/common/base/BaseLanguageActivity;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lteam/opay/core/common/base/HiltActivity;-><init>(I)V

    iput p1, p0, Lteam/opay/core/common/base/BaseLanguageActivity;->l:I

    return-void
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
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
    invoke-virtual {p0}, Lteam/opay/core/common/base/HiltActivity;->getGenerator()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IAppDataGenerator;->getLocale()Ljava/util/Locale;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    :cond_0
    new-instance v0, Ljava/util/Locale;

    .line 19
    .line 20
    const-string v1, "en"

    .line 21
    .line 22
    const-string v2, "US"

    .line 23
    .line 24
    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {p0, p1, v0}, Lteam/opay/core/common/base/BaseLanguageActivity;->d0(Landroid/content/Context;Ljava/util/Locale;)Landroid/content/ContextWrapper;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-super {p0, p1}, Lteam/opay/core/common/base/HiltActivity;->attachBaseContext(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final d0(Landroid/content/Context;Ljava/util/Locale;)Landroid/content/ContextWrapper;
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 v3, 0x18

    .line 12
    .line 13
    if-lt v2, v3, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1, p2}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcs0;->a()V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    new-array v0, v0, [Ljava/util/Locale;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    aput-object p2, v0, v2

    .line 26
    .line 27
    invoke-static {v0}, Lbs0;->a([Ljava/util/Locale;)Landroid/os/LocaleList;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-static {p2}, Lex;->a(Landroid/os/LocaleList;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v1, p2}, Lcx;->a(Landroid/content/res/Configuration;Landroid/os/LocaleList;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    if-ge v2, v3, :cond_1

    .line 43
    .line 44
    invoke-virtual {v1, p2}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iput-object p2, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {v0, v1, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 59
    .line 60
    .line 61
    :goto_0
    new-instance p2, Landroid/content/ContextWrapper;

    .line 62
    .line 63
    invoke-direct {p2, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 64
    .line 65
    .line 66
    return-object p2
.end method
