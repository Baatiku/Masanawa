.class public final Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$observeData$1$a;
.super Ljava/lang/Object;
.source "NewWalletDetailsViewModel.kt"

# interfaces
.implements La66;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$observeData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "La66;"
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
.field public final synthetic a:Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;


# direct methods
.method public constructor <init>(Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$observeData$1$a;->a:Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$NewWalletDetailsData;Ljr2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$NewWalletDetailsData;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$observeData$1$a;->a:Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;->N()Landroidx/lifecycle/MutableLiveData;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p2, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Ljr2;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$NewWalletDetailsData;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$observeData$1$a;->c(Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$NewWalletDetailsData;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
