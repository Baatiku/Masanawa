.class public final Lteam/opay/pay/home/dialog/HomeGuideTask;
.super Lteam/opay/pay/home/dialog/HomeDialogTask;
.source "HomeGuideTask.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0011\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0014\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0012\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0096@\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\r\u0010\r\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\r\u0010\u0006J\u0017\u0010\u0010\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000f0\u000eH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u001b\u0010\u0016\u001a\u00020\u00128BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0017"
    }
    d2 = {
        "Lteam/opay/pay/home/dialog/HomeGuideTask;",
        "Lteam/opay/pay/home/dialog/HomeDialogTask;",
        "<init>",
        "()V",
        "",
        "k",
        "()Z",
        "Lkotlinx/coroutines/l;",
        "e",
        "()Lkotlinx/coroutines/l;",
        "Landroidx/fragment/app/DialogFragment;",
        "d",
        "(Ljr2;)Ljava/lang/Object;",
        "m",
        "Lteam/opay/core/base/BaseFullDialogFragmentWithCallbackV2;",
        "Lxyf;",
        "n",
        "()Lteam/opay/core/base/BaseFullDialogFragmentWithCallbackV2;",
        "Lcom/opay/team/home/HomeSettingsStorage;",
        "Lid8;",
        "o",
        "()Lcom/opay/team/home/HomeSettingsStorage;",
        "homeSettingsStorage",
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
.field public final d:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/home/dialog/HomeDialogTask;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lzz6;

    .line 5
    .line 6
    invoke-direct {v0}, Lzz6;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lteam/opay/pay/home/dialog/HomeGuideTask;->d:Lid8;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic l()Lcom/opay/team/home/HomeSettingsStorage;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/home/dialog/HomeGuideTask;->p()Lcom/opay/team/home/HomeSettingsStorage;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final p()Lcom/opay/team/home/HomeSettingsStorage;
    .locals 2

    .line 1
    new-instance v0, Lcom/opay/team/home/HomeSettingsStorage;

    .line 2
    .line 3
    invoke-static {}, Ljmf;->i()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/opay/team/home/HomeSettingsStorage;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method


# virtual methods
.method public d(Ljr2;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljr2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljr2<",
            "-",
            "Landroidx/fragment/app/DialogFragment;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/dialog/HomeGuideTask;->n()Lteam/opay/core/base/BaseFullDialogFragmentWithCallbackV2;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public e()Lkotlinx/coroutines/l;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public k()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/dialog/HomeGuideTask;->m()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final m()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/dialog/HomeGuideTask;->o()Lcom/opay/team/home/HomeSettingsStorage;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/opay/team/home/HomeSettingsStorage;->e()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/pay/home/dialog/HomeGuideTask;->o()Lcom/opay/team/home/HomeSettingsStorage;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/opay/team/home/HomeSettingsStorage;->f()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 25
    :goto_1
    return v0
.end method

.method public final n()Lteam/opay/core/base/BaseFullDialogFragmentWithCallbackV2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/core/base/BaseFullDialogFragmentWithCallbackV2<",
            "+",
            "Lxyf;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/dialog/HomeGuideTask;->o()Lcom/opay/team/home/HomeSettingsStorage;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/opay/team/home/HomeSettingsStorage;->e()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lcom/opay/team/newhome/home/NewHomeGuideV2Fragment;->D:Lcom/opay/team/newhome/home/NewHomeGuideV2Fragment$Companion;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/opay/team/newhome/home/NewHomeGuideV2Fragment$Companion;->a()Lcom/opay/team/newhome/home/NewHomeGuideV2Fragment;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object v0, Lcom/opay/team/newhome/home/NewVersionHomeGuideFragment;->w:Lcom/opay/team/newhome/home/NewVersionHomeGuideFragment$Companion;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/opay/team/newhome/home/NewVersionHomeGuideFragment$Companion;->a()Lcom/opay/team/newhome/home/NewVersionHomeGuideFragment;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :goto_0
    return-object v0
.end method

.method public final o()Lcom/opay/team/home/HomeSettingsStorage;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/dialog/HomeGuideTask;->d:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/opay/team/home/HomeSettingsStorage;

    .line 8
    .line 9
    return-object v0
.end method
