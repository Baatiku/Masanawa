.class public final synthetic Lteam/opay/sme/store/user/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lteam/opay/core/http/internal/PagingResult;

.field public final synthetic b:Lteam/opay/sme/store/user/EmployeeListFragment;

.field public final synthetic c:Lteam/opay/sme/store/api/EmployeesResp;


# direct methods
.method public synthetic constructor <init>(Lteam/opay/core/http/internal/PagingResult;Lteam/opay/sme/store/user/EmployeeListFragment;Lteam/opay/sme/store/api/EmployeesResp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lteam/opay/sme/store/user/d;->a:Lteam/opay/core/http/internal/PagingResult;

    .line 5
    .line 6
    iput-object p2, p0, Lteam/opay/sme/store/user/d;->b:Lteam/opay/sme/store/user/EmployeeListFragment;

    .line 7
    .line 8
    iput-object p3, p0, Lteam/opay/sme/store/user/d;->c:Lteam/opay/sme/store/api/EmployeesResp;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/user/d;->a:Lteam/opay/core/http/internal/PagingResult;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/sme/store/user/d;->b:Lteam/opay/sme/store/user/EmployeeListFragment;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/sme/store/user/d;->c:Lteam/opay/sme/store/api/EmployeesResp;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lteam/opay/sme/store/user/EmployeeListFragment$onPagingResult$1;->c(Lteam/opay/core/http/internal/PagingResult;Lteam/opay/sme/store/user/EmployeeListFragment;Lteam/opay/sme/store/api/EmployeesResp;)Lkotlin/Unit;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
