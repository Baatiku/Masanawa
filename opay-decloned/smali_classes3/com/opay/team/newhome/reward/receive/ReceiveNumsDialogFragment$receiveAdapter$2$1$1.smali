.class final synthetic Lcom/opay/team/newhome/reward/receive/ReceiveNumsDialogFragment$receiveAdapter$2$1$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "ReceiveNumsDialogFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/team/newhome/reward/receive/ReceiveNumsDialogFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/opay/team/newhome/reward/receive/ReceiveItem;",
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


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    .line 1
    const-string v5, "onClaimClick(Lcom/opay/team/newhome/reward/receive/ReceiveItem;)V"

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    const-class v3, Lcom/opay/team/newhome/reward/receive/ReceiveNumsDialogFragment;

    .line 6
    .line 7
    const-string v4, "onClaimClick"

    .line 8
    .line 9
    move-object v0, p0

    .line 10
    move-object v2, p1

    .line 11
    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/opay/team/newhome/reward/receive/ReceiveItem;

    invoke-virtual {p0, p1}, Lcom/opay/team/newhome/reward/receive/ReceiveNumsDialogFragment$receiveAdapter$2$1$1;->invoke(Lcom/opay/team/newhome/reward/receive/ReceiveItem;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/opay/team/newhome/reward/receive/ReceiveItem;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/opay/team/newhome/reward/receive/ReceiveNumsDialogFragment;

    invoke-static {v0, p1}, Lcom/opay/team/newhome/reward/receive/ReceiveNumsDialogFragment;->U(Lcom/opay/team/newhome/reward/receive/ReceiveNumsDialogFragment;Lcom/opay/team/newhome/reward/receive/ReceiveItem;)V

    return-void
.end method
