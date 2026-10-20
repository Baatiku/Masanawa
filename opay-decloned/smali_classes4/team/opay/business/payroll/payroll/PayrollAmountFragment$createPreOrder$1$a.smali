.class public final Lteam/opay/business/payroll/payroll/PayrollAmountFragment$createPreOrder$1$a;
.super Ljava/lang/Object;
.source "PayrollAmountFragment.kt"

# interfaces
.implements Lfa3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/payroll/payroll/PayrollAmountFragment$createPreOrder$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "team/opay/business/payroll/payroll/PayrollAmountFragment$createPreOrder$1$a",
        "Lfa3;",
        "",
        "completed",
        "a",
        "(Z)Z",
        "positive",
        "",
        "c",
        "(Z)V",
        "business-payroll_release"
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
.field public final synthetic b:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

.field public final synthetic c:Lteam/opay/core/http/HttpResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/core/http/HttpResult<",
            "Lteam/opay/business/payroll/api/PreOrderResp;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic d:Lteam/opay/core/http/BusinessInfo;


# direct methods
.method public constructor <init>(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;Lteam/opay/core/http/HttpResult;Lteam/opay/core/http/BusinessInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/payroll/payroll/PayrollAmountFragment;",
            "Lteam/opay/core/http/HttpResult<",
            "Lteam/opay/business/payroll/api/PreOrderResp;",
            ">;",
            "Lteam/opay/core/http/BusinessInfo;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$createPreOrder$1$a;->b:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$createPreOrder$1$a;->c:Lteam/opay/core/http/HttpResult;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$createPreOrder$1$a;->d:Lteam/opay/core/http/BusinessInfo;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$createPreOrder$1$a;->b:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$createPreOrder$1$a;->c:Lteam/opay/core/http/HttpResult;

    .line 4
    .line 5
    check-cast v1, Lteam/opay/core/http/HttpResult$Success;

    .line 6
    .line 7
    invoke-virtual {v1}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lteam/opay/business/payroll/api/PreOrderResp;

    .line 12
    .line 13
    invoke-static {v0, p1, v1}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment;->f0(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;ZLteam/opay/business/payroll/api/PreOrderResp;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    return p1
.end method

.method public b()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lfa3$b;->b(Lfa3;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public c(Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$createPreOrder$1$a;->b:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$createPreOrder$1$a;->d:Lteam/opay/core/http/BusinessInfo;

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/core/http/BusinessInfo;->isForceWindow()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    xor-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    iget-object v1, p0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$createPreOrder$1$a;->c:Lteam/opay/core/http/HttpResult;

    .line 12
    .line 13
    check-cast v1, Lteam/opay/core/http/HttpResult$Success;

    .line 14
    .line 15
    invoke-virtual {v1}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lteam/opay/business/payroll/api/PreOrderResp;

    .line 20
    .line 21
    invoke-static {p1, v0, v1}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment;->f0(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;ZLteam/opay/business/payroll/api/PreOrderResp;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
