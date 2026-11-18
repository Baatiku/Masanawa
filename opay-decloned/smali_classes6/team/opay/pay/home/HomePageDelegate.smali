.class public Lteam/opay/pay/home/HomePageDelegate;
.super Ljava/lang/Object;
.source "HomePageDelegate.kt"

# interfaces
.implements Lteam/opay/KeepNoProguard;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/home/HomePageDelegate$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0016\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0003J!\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001b\u0010\u0010\u001a\u00020\u00042\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R$\u0010\u0008\u001a\u0004\u0018\u00010\u00128\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R$\u0010\n\u001a\u0004\u0018\u00010\t8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u001b\u0010\"\u001a\u00020\u001d8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!\u00a8\u0006#"
    }
    d2 = {
        "Lteam/opay/pay/home/HomePageDelegate;",
        "Lteam/opay/KeepNoProguard;",
        "<init>",
        "()V",
        "",
        "onResume",
        "onDestory",
        "Lcom/opay/team/newhome/home/NewPayFragmentV2;",
        "fragment",
        "Ltia;",
        "binding",
        "onViewCreated",
        "(Lcom/opay/team/newhome/home/NewPayFragmentV2;Ltia;)V",
        "",
        "Lcom/opay/team/newhome/home/bean/HomeData;",
        "datas",
        "onDataLoad",
        "(Ljava/util/List;)V",
        "Landroidx/fragment/app/Fragment;",
        "Landroidx/fragment/app/Fragment;",
        "getFragment",
        "()Landroidx/fragment/app/Fragment;",
        "setFragment",
        "(Landroidx/fragment/app/Fragment;)V",
        "Ltia;",
        "getBinding",
        "()Ltia;",
        "setBinding",
        "(Ltia;)V",
        "Landroidx/lifecycle/e;",
        "lifeEventObserver$delegate",
        "Lid8;",
        "getLifeEventObserver",
        "()Landroidx/lifecycle/e;",
        "lifeEventObserver",
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
.field private binding:Ltia;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private fragment:Landroidx/fragment/app/Fragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final lifeEventObserver$delegate:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lw07;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lw07;-><init>(Lteam/opay/pay/home/HomePageDelegate;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lteam/opay/pay/home/HomePageDelegate;->lifeEventObserver$delegate:Lid8;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic a(Lteam/opay/pay/home/HomePageDelegate;)Landroidx/lifecycle/e;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/HomePageDelegate;->lifeEventObserver_delegate$lambda$1(Lteam/opay/pay/home/HomePageDelegate;)Landroidx/lifecycle/e;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lteam/opay/pay/home/HomePageDelegate;Lag8;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/home/HomePageDelegate;->lifeEventObserver_delegate$lambda$1$lambda$0(Lteam/opay/pay/home/HomePageDelegate;Lag8;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final getLifeEventObserver()Landroidx/lifecycle/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/HomePageDelegate;->lifeEventObserver$delegate:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/e;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final lifeEventObserver_delegate$lambda$1(Lteam/opay/pay/home/HomePageDelegate;)Landroidx/lifecycle/e;
    .locals 1

    .line 1
    new-instance v0, Lx07;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lx07;-><init>(Lteam/opay/pay/home/HomePageDelegate;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final lifeEventObserver_delegate$lambda$1$lambda$0(Lteam/opay/pay/home/HomePageDelegate;Lag8;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "event"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lteam/opay/pay/home/HomePageDelegate$a;->a:[I

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    aget p1, p1, p2

    .line 18
    .line 19
    const/4 p2, 0x1

    .line 20
    if-eq p1, p2, :cond_1

    .line 21
    .line 22
    const/4 p2, 0x2

    .line 23
    if-eq p1, p2, :cond_0

    .line 24
    .line 25
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-direct {p0}, Lteam/opay/pay/home/HomePageDelegate;->onDestory()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-direct {p0}, Lteam/opay/pay/home/HomePageDelegate;->onResume()V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method

.method private final onDestory()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lteam/opay/pay/home/HomePageDelegate;->setFragment(Landroidx/fragment/app/Fragment;)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lteam/opay/pay/home/HomePageDelegate;->setBinding(Ltia;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final onResume()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public getBinding()Ltia;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/HomePageDelegate;->binding:Ltia;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFragment()Landroidx/fragment/app/Fragment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/HomePageDelegate;->fragment:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    return-object v0
.end method

.method public final onDataLoad(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/home/bean/HomeData;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "datas"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onViewCreated(Lcom/opay/team/newhome/home/NewPayFragmentV2;Ltia;)V
    .locals 1
    .param p1    # Lcom/opay/team/newhome/home/NewPayFragmentV2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ltia;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "fragment"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lteam/opay/pay/home/HomePageDelegate;->setFragment(Landroidx/fragment/app/Fragment;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p2}, Lteam/opay/pay/home/HomePageDelegate;->setBinding(Ltia;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-direct {p0}, Lteam/opay/pay/home/HomePageDelegate;->getLifeEventObserver()Landroidx/lifecycle/e;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p1, p2}, Landroidx/lifecycle/Lifecycle;->a(Lzf8;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public setBinding(Ltia;)V
    .locals 0
    .param p1    # Ltia;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/HomePageDelegate;->binding:Ltia;

    .line 2
    .line 3
    return-void
.end method

.method public setFragment(Landroidx/fragment/app/Fragment;)V
    .locals 0
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/HomePageDelegate;->fragment:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    return-void
.end method
