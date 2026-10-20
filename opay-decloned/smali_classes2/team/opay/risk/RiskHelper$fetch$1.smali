.class final Lteam/opay/risk/RiskHelper$fetch$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RiskHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/risk/RiskHelper;->m(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $context:Landroid/app/Application;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/risk/RiskHelper$fetch$1;->$context:Landroid/app/Application;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/risk/RiskHelper$fetch$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    sget-object v0, Lteam/opay/risk/RiskHelper;->a:Lteam/opay/risk/RiskHelper;

    iget-object v1, p0, Lteam/opay/risk/RiskHelper$fetch$1;->$context:Landroid/app/Application;

    invoke-static {v0, v1}, Lteam/opay/risk/RiskHelper;->g(Lteam/opay/risk/RiskHelper;Landroid/app/Application;)V

    .line 3
    invoke-static {v0}, Lteam/opay/risk/RiskHelper;->h(Lteam/opay/risk/RiskHelper;)V

    .line 4
    invoke-static {v0}, Lteam/opay/risk/RiskHelper;->i(Lteam/opay/risk/RiskHelper;)V

    return-void
.end method
