.class public final Lteam/opay/pay/message/delegate/MessageMainActivityDelegate;
.super Lteam/opay/pay/home/MainActivityDelegate;
.source "MessageMainActivityDelegate.kt"


# annotations
.annotation build Lcom/google/auto/service/AutoService;
    value = {
        Lteam/opay/pay/home/MainActivityDelegate;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u001a\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0003\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\u0008H\u0016J\u0012\u0010\r\u001a\u00020\u00082\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u0008H\u0016J\u0008\u0010\u0011\u001a\u00020\u0008H\u0016J\u0012\u0010\u0012\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u0008\u0010\u0013\u001a\u00020\u0008H\u0016J\u0012\u0010\u0014\u001a\u00020\u00082\u0008\u0010\u0015\u001a\u0004\u0018\u00010\nH\u0016J\u001c\u0010\u0014\u001a\u00020\u00082\u0008\u0010\u0015\u001a\u0004\u0018\u00010\n2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\u0008\u0010\u0018\u001a\u00020\u0008H\u0016J\u0008\u0010\u0019\u001a\u00020\u0008H\u0016J\u0008\u0010\u001a\u001a\u00020\u0008H\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lteam/opay/pay/message/delegate/MessageMainActivityDelegate;",
        "Lteam/opay/pay/home/MainActivityDelegate;",
        "()V",
        "context",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "haveFirstReqNum",
        "",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "Landroid/app/Activity;",
        "onDestroy",
        "onNewIntent",
        "intent",
        "Landroid/content/Intent;",
        "onPause",
        "onRestart",
        "onRestoreInstanceState",
        "onResume",
        "onSaveInstanceState",
        "outState",
        "outPersistentState",
        "Landroid/os/PersistableBundle;",
        "onStart",
        "onStop",
        "reqNum",
        "message_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private context:Landroidx/appcompat/app/AppCompatActivity;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private haveFirstReqNum:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/home/MainActivityDelegate;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getContext$p(Lteam/opay/pay/message/delegate/MessageMainActivityDelegate;)Landroidx/appcompat/app/AppCompatActivity;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/message/delegate/MessageMainActivityDelegate;->context:Landroidx/appcompat/app/AppCompatActivity;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$reqNum(Lteam/opay/pay/message/delegate/MessageMainActivityDelegate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/message/delegate/MessageMainActivityDelegate;->reqNum()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setHaveFirstReqNum$p(Lteam/opay/pay/message/delegate/MessageMainActivityDelegate;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/message/delegate/MessageMainActivityDelegate;->haveFirstReqNum:Z

    .line 2
    .line 3
    return-void
.end method

.method private final reqNum()V
    .locals 5

    .line 1
    new-instance v0, Lteam/opay/pay/message/utils/MessageStorage;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/pay/message/utils/MessageStorage;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lteam/opay/pay/message/utils/MessageStorage;->g()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lhpc;->a:Lhpc;

    .line 11
    .line 12
    invoke-virtual {v1}, Lhpc;->b()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {v1}, Lteam/opay/swarmfoundation/data/IUserDataGenerator;->uid()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object v1, v2

    .line 25
    :goto_0
    new-instance v3, Lteam/opay/pay/message/utils/MessageStorage;

    .line 26
    .line 27
    invoke-direct {v3}, Lteam/opay/pay/message/utils/MessageStorage;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Lteam/opay/pay/message/utils/MessageStorage;->e()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    if-eqz v1, :cond_5

    .line 42
    .line 43
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_3

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    iget-object v0, p0, Lteam/opay/pay/message/delegate/MessageMainActivityDelegate;->context:Landroidx/appcompat/app/AppCompatActivity;

    .line 58
    .line 59
    if-eqz v0, :cond_4

    .line 60
    .line 61
    invoke-static {v0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-eqz v0, :cond_4

    .line 66
    .line 67
    new-instance v4, Lteam/opay/pay/message/delegate/MessageMainActivityDelegate$reqNum$1;

    .line 68
    .line 69
    invoke-direct {v4, v3, v1, p0, v2}, Lteam/opay/pay/message/delegate/MessageMainActivityDelegate$reqNum$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/message/delegate/MessageMainActivityDelegate;Ljr2;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v4}, Landroidx/lifecycle/LifecycleCoroutineScope;->c(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/l;

    .line 73
    .line 74
    .line 75
    :cond_4
    return-void

    .line 76
    :cond_5
    :goto_1
    sget-object v0, Lteam/opay/pay/message/utils/MessageFlowBus;->a:Lteam/opay/pay/message/utils/MessageFlowBus;

    .line 77
    .line 78
    const/4 v1, 0x0

    .line 79
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const-string v2, "msg_num_key"

    .line 84
    .line 85
    invoke-virtual {v0, v2, v1}, Lteam/opay/pay/message/utils/MessageFlowBus;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1, p2}, Lteam/opay/pay/home/MainActivityDelegate;->onCreate(Landroid/os/Bundle;Landroid/app/Activity;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lteam/opay/pay/message/delegate/MessageMainActivityDelegate;->haveFirstReqNum:Z

    .line 4
    instance-of p1, p2, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz p1, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lteam/opay/pay/message/delegate/MessageMainActivityDelegate;->context:Landroidx/appcompat/app/AppCompatActivity;

    if-eqz p1, :cond_1

    .line 5
    sget-object p1, Lteam/opay/pay/message/utils/MessageFlowBus;->a:Lteam/opay/pay/message/utils/MessageFlowBus;

    check-cast p2, Lag8;

    new-instance v0, Lteam/opay/pay/message/delegate/MessageMainActivityDelegate$a;

    invoke-direct {v0, p0}, Lteam/opay/pay/message/delegate/MessageMainActivityDelegate$a;-><init>(Lteam/opay/pay/message/delegate/MessageMainActivityDelegate;)V

    const-string v1, "msg_token_success_key"

    invoke-virtual {p1, p2, v1, v0}, Lteam/opay/pay/message/utils/MessageFlowBus;->b(Lag8;Ljava/lang/Object;La66;)V

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 1
    return-void
.end method

.method public onRestart()V
    .locals 0

    .line 1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/message/delegate/MessageMainActivityDelegate;->haveFirstReqNum:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lteam/opay/pay/message/delegate/MessageMainActivityDelegate;->reqNum()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/PersistableBundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 1
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 1
    return-void
.end method
