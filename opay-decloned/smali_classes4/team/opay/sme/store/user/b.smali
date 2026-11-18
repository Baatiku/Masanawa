.class public final synthetic Lteam/opay/sme/store/user/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lteam/opay/sme/store/user/EmployeeListFragment;


# direct methods
.method public synthetic constructor <init>(Lteam/opay/sme/store/user/EmployeeListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lteam/opay/sme/store/user/b;->a:Lteam/opay/sme/store/user/EmployeeListFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/user/b;->a:Lteam/opay/sme/store/user/EmployeeListFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/sme/store/user/EmployeeListFragment$onPagingResult$1;->f(Lteam/opay/sme/store/user/EmployeeListFragment;)Lkotlin/Unit;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
