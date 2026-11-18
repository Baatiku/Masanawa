.class public final Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialogTask$1$a;
.super Ljava/lang/Object;
.source "HomeAdDialogTask.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialogTask$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/pay/home/dialog/HomeAdDialogTask;


# direct methods
.method public constructor <init>(Lteam/opay/pay/home/dialog/HomeAdDialogTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialogTask$1$a;->a:Lteam/opay/pay/home/dialog/HomeAdDialogTask;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialogTask$1$a;->a:Lteam/opay/pay/home/dialog/HomeAdDialogTask;

    .line 2
    .line 3
    invoke-static {p1}, Lteam/opay/pay/home/dialog/HomeAdDialogTask;->p(Lteam/opay/pay/home/dialog/HomeAdDialogTask;)Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->n0()Lteam/opay/pay/util/SingleLiveEvent;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v0, p0, Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialogTask$1$a;->a:Lteam/opay/pay/home/dialog/HomeAdDialogTask;

    .line 12
    .line 13
    invoke-static {v0}, Lteam/opay/pay/home/dialog/HomeAdDialogTask;->o(Lteam/opay/pay/home/dialog/HomeAdDialogTask;)Landroidx/fragment/app/Fragment;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->removeObservers(Lag8;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialogTask$1$a;->a(Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p1
.end method
