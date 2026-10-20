.class public final Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel_Factory;
.super Ljava/lang/Object;
.source "EMCardEntranceViewModel_Factory.java"

# interfaces
.implements Lm3c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lm3c;"
    }
.end annotation


# instance fields
.field private final cardEntranceRepositoryProvider:Lm3c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm3c<",
            "Lteam/opay/easemoni/module/opay/viewmodel/EMCardEntranceRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final mGetFundsRepositoryProvider:Lm3c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm3c<",
            "Lteam/opay/easemoni/module/loan/viewmodel/EMGetFundsRepository;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lm3c;Lm3c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm3c<",
            "Lteam/opay/easemoni/module/opay/viewmodel/EMCardEntranceRepository;",
            ">;",
            "Lm3c<",
            "Lteam/opay/easemoni/module/loan/viewmodel/EMGetFundsRepository;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel_Factory;->cardEntranceRepositoryProvider:Lm3c;

    .line 5
    .line 6
    iput-object p2, p0, Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel_Factory;->mGetFundsRepositoryProvider:Lm3c;

    .line 7
    .line 8
    return-void
.end method

.method public static create(Lm3c;Lm3c;)Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm3c<",
            "Lteam/opay/easemoni/module/opay/viewmodel/EMCardEntranceRepository;",
            ">;",
            "Lm3c<",
            "Lteam/opay/easemoni/module/loan/viewmodel/EMGetFundsRepository;",
            ">;)",
            "Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel_Factory;"
        }
    .end annotation

    .line 1
    new-instance v0, Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel_Factory;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel_Factory;-><init>(Lm3c;Lm3c;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static newInstance(Lteam/opay/easemoni/module/opay/viewmodel/EMCardEntranceRepository;Lteam/opay/easemoni/module/loan/viewmodel/EMGetFundsRepository;)Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;-><init>(Lteam/opay/easemoni/module/opay/viewmodel/EMCardEntranceRepository;Lteam/opay/easemoni/module/loan/viewmodel/EMGetFundsRepository;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel_Factory;->get()Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;

    move-result-object v0

    return-object v0
.end method

.method public get()Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;
    .locals 2

    .line 2
    iget-object v0, p0, Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel_Factory;->cardEntranceRepositoryProvider:Lm3c;

    invoke-interface {v0}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lteam/opay/easemoni/module/opay/viewmodel/EMCardEntranceRepository;

    iget-object v1, p0, Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel_Factory;->mGetFundsRepositoryProvider:Lm3c;

    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lteam/opay/easemoni/module/loan/viewmodel/EMGetFundsRepository;

    invoke-static {v0, v1}, Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel_Factory;->newInstance(Lteam/opay/easemoni/module/opay/viewmodel/EMCardEntranceRepository;Lteam/opay/easemoni/module/loan/viewmodel/EMGetFundsRepository;)Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;

    move-result-object v0

    return-object v0
.end method
