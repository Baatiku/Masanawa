.class public final synthetic Lteam/opay/sme/va/receive/staticAccount/home/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;

.field public final synthetic b:Lteam/opay/core/http/HttpResult;


# direct methods
.method public synthetic constructor <init>(Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;Lteam/opay/core/http/HttpResult;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/home/a;->a:Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;

    .line 5
    .line 6
    iput-object p2, p0, Lteam/opay/sme/va/receive/staticAccount/home/a;->b:Lteam/opay/core/http/HttpResult;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/home/a;->a:Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/sme/va/receive/staticAccount/home/a;->b:Lteam/opay/core/http/HttpResult;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$commissionAccount$1;->c(Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;Lteam/opay/core/http/HttpResult;)Lkotlin/Unit;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
